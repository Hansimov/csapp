#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

/* Import from assembly code */
int tmult_ok_asm(long x, long y, long *dest);
int umult_ok_asm(unsigned long x, unsigned long y, unsigned long *dest);
long tmult_sat_asm(long x, long y);

/* $begin w200-tmult_ok-proto-c */
/* Multiply x and y.  Store result at dest.
   Return 1 if multiplication did not overflow
*/
int tmult_ok(long x, long y, long *dest);
/* $end w200-tmult_ok-proto-c */

/* $begin w200-tmult_ok1-c */
/* First attempt.  Does not work */ 
int tmult_ok1(long x, long y, long *dest) 
{ 
    long result = 0; 
    *dest = x*y; 
    asm("setae %al"); 
    return result; 
} 
/* $end w200-tmult_ok1-c */

/* $begin w200-tmult_ok2-c */
int tmult_ok2(long x, long y, long *dest) 
{ 
    int result; 

    *dest = x*y; 
    asm("setae %%bl          # Set low-order byte\n\t"
	"movzbl %%bl,%[val]  # Zero extend to be result"  
	: [val] "=r" (result)  /* Output    */  
	:                      /* No inputs */  
	: "%bl"                /* Overwrites */  
	);  
    return result; 
} 
/* $end w200-tmult_ok2-c */

/* $begin w200-tmult_ok3-c */
/* Uses extended asm to get reliable code */
int tmult_ok3(long x, long y, long *dest) 
{
    unsigned char bresult; 
    *dest = x*y; 

    asm("setae %[b]            # Set result"  
	: [b] "=r" (bresult)  /* Output    */  
	);  

    return (int) bresult; 
} 
/* $end w200-tmult_ok3-c */

/* $begin w200-tmult_ok4-c */
/* Uses extended asm with explicit inclusion of imulq instruction */
int tmult_ok4(long x, long y, long *dest) 
{
    unsigned char bresult; 

    asm("imulq %[x],%[y]   # Compute y = x * y\n\t"
	"setae %[b]        # Set result"  
	: [y] "+r" (y), [b] "=r" (bresult) /* Outputs */
	: [x] "r" (x)                      /* Inputs */
	);
    *dest = y;
    return (int) bresult; 
} 
/* $end w200-tmult_ok4-c */


/* $begin w200-umult_ok-proto-c */
/* Multiply x and y.  Store result at dest.
   Return 1 if multiplication did not overflow
*/
int umult_ok(unsigned long x, unsigned long y, unsigned long *dest);
/* $end w200-umult_ok-proto-c */


/* $begin w200-umult_ok-c */
int umult_ok(unsigned long x, unsigned long y, unsigned long *dest) 
{ 
    unsigned char bresult; 

    asm("movq %[x],%%rax      # Get x\n\t"
	"mulq %[y]            # Unsigned long multiply by y\n\t"
	"movq %%rax,%[p]      # Store low-order 8 bytes at dest\n\t"
	"setae %[b]           # Set result"
	: [p] "=m" (*dest), [b] "=r" (bresult) /* Outputs    */  
	: [x] "r"  (x), [y] "r" (y)            /* Inputs     */  
	: "%rax", "%rdx"                       /* Overwrites */ 
	); 

    return (int) bresult; 
} 
/* $end w200-umult_ok-c */

/* $begin w2-tmult_sat-proto-c */
/* Compute x * y, saturating at TMin or TMax */
long tmult_sat(long x, long y);
/* $end w2-tmult_sat-proto-c */

/* $begin w2-tmult_sat-c */
/* Compute x * y, saturating at TMin or TMax */
long tmult_sat(long x, long y) {
    /* Determine sign of x * y */
    int ispos = (x < 0) == (y < 0);
    /* Value when overflow occurs */
    long oprod = ispos ? LONG_MAX : LONG_MIN;
    long prod = x * y;
    unsigned char bok;
    asm("setae %[b]            # Set result"  
	: [b] "=r" (bok)  /* Output    */  
	);  
    prod = bok ? prod : oprod;
    return prod;
}
/* $end w2-tmult_sat-c */

int main(int argc, char *argv[]) {
    long sx, sy, sdest, sprod;
    int sok;
    unsigned long ux, uy, udest, uprod;
    int uok;
    int result;

    /* Default values
       should overflow with signed multiply, but not with unsigned */
    long arg1 = 0x100000000L;
    long arg2 = 0x0ffffffffL;

    if (argc > 1)
	arg1 = strtol(argv[1], NULL, 0);

    if (argc > 2)
	arg2 = strtol(argv[2], NULL, 0);

    sx = (long) arg1;
    sy = (long) arg2;

    sok = sx == 0 || (sx*sy)/sx == sy;
    sprod = sx*sy;

    printf("Signed multiply: %ld*%ld->%ld, ok = %d\n",
	   sx, sy, sx*sy, sok);

    /* test tmult_ok_asm */
    result = tmult_ok_asm(sx, sy, &sdest);
    printf("%s tmult_ok_asm: %ld*%ld->%ld, ok = %d\n",
	   result == sok && sdest == sprod ? "OK" : "ERR",
	   sx, sy, sdest, result);

    /* test tmult_ok1 */
    result = tmult_ok1(sx, sy, &sdest);
    printf("%s tmult_ok1: %ld*%ld->%ld, ok = %d\n",
	   result == sok && sdest == sprod ? "OK" : "ERR",
	   sx, sy, sdest, result);

    /* test tmult_ok2 */
    result = tmult_ok2(sx, sy, &sdest);
    printf("%s tmult_ok2: %ld*%ld->%ld, ok = %d\n",
	   result == sok && sdest == sprod ? "OK" : "ERR",
	   sx, sy, sdest, result);

    /* test tmult_ok2 */
    result = tmult_ok2(sx, sy, &sdest);
    printf("%s tmult_ok2: %ld*%ld->%ld, ok = %d\n",
	   result == sok && sdest == sprod ? "OK" : "ERR",
	   sx, sy, sdest, result);

    /* test tmult_ok3 */
    result = tmult_ok3(sx, sy, &sdest);
    printf("%s tmult_ok3: %ld*%ld->%ld, ok = %d\n",
	   result == sok && sdest == sprod ? "OK" : "ERR",
	   sx, sy, sdest, result);

    /* test tmult_ok4 */
    result = tmult_ok4(sx, sy, &sdest);
    printf("%s tmult_ok4: %ld*%ld->%ld, ok = %d\n",
	   result == sok && sdest == sprod ? "OK" : "ERR",
	   sx, sy, sdest, result);

    ux = (unsigned long) arg1;
    uy = (unsigned long) arg2;

    uok = ux == 0 || (ux*uy)/ux == uy; 
    uprod = ux*uy;

    printf("\nUnsigned long multiply: %lu*%lu->%lu, ok = %d\n",
	   ux, uy, ux*uy, uok);

    /* test umult_ok_asm */
    result = umult_ok_asm(ux, uy, &udest);
    printf("%s umult_ok_asm: %lu*%lu->%lu, ok = %d\n",
	   result == uok && uprod == udest ? "OK" : "ERR",
	   ux, uy, udest, result);

    /* test umult_ok */
    result = umult_ok(ux, uy, &udest);
    printf("%s umult_ok: %lu*%lu->%lu, ok = %d\n",
	   result == uok && uprod == udest ? "OK" : "ERR",
	   ux, uy, udest, result);
    
    exit(0);
} 
