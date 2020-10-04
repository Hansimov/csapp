#include <stdio.h>
#include <stdlib.h>


/* $begin w250-umult_full-proto-c */
/* Multiply two 64-bit numbers to get 128-bit result,
*/
void umult_full(unsigned long x, unsigned long y, unsigned long *dest);
/* $end w250-umult_full-proto-c */

/* $begin w250-umult_full-c */
void umult_full(unsigned long x, unsigned long y, unsigned long *dest) 
{ 
    asm("movq %[x],%%rax      # Get x\n\t"
	"mulq %[y]            # Unsigned multiply by y\n\t"
	"movq %%rax,%[lo]     # Store low-order  8 bytes\n\t"
	"movq %%rdx,%[hi]     # Store high-order 8 bytes"
	: [lo] "=m" (dest[0]), [hi] "=m" (dest[1]) /* Outputs    */  
	: [x] "r"  (x), [y] "r" (y)                /* Inputs     */  
	: "%rax", "%rdx"                           /* Overwrites */ 
	);
} 
/* $end w250-umult_full-c */

int main(int argc, char *argv[]) {
    unsigned long ux, uy, udest[2];

    /* Default values */
    ux = 0x10000lu;
    uy = 0x0fffflu;

    if (argc > 1)
	ux = strtoul(argv[1], NULL, 0);

    if (argc > 2)
	uy = strtoul(argv[2], NULL, 0);

    /* Test full multiply */
    umult_full(ux, uy, udest);
    /* x86-64 */
    printf("Full multiply 0x%lx X 0x%lx\n  --> 0x%.16lx%.16lx\n",
	   ux, uy, udest[1], udest[0]);
    return 0;
} 
