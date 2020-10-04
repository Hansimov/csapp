/* Using ASM to compute parity of word */
#include <stdio.h>
#include <stdlib.h>

/* Reference version */
int odd_parity_ref(unsigned long x) {
    int i;
    int result = 0;
    for (i = 0; i < 8*sizeof(unsigned long); i++) {
	result ^= (x >> i) & 0x1;
    }
    return result;
}


int nonzero(unsigned long x) {
    int result;
    result = x > 0;
    return result;
}


/* $begin odd_parity-proto-c */
int odd_parity(unsigned long x);
/* $end odd_parity-proto-c */

/* $begin odd_parity-c */
/* Using ASM to access parity flag */
int odd_parity(unsigned long x) {
    int result = 0;
    while (x != 0) {
	char bresult;
	unsigned char bx = x & 0xff;
	asm("testb %[bx],%[bx] # Test value of low-order byte\n\t"
	    "setnp %[v]        # Set if odd parity"
	    : [v] "=r" (bresult)  /* Output */
	    : [bx] "r" (bx)       /* Input  */
	    );
	result ^= (int) bresult;
	x = x >> 8;
    }
    return result;
}
/* $end odd_parity-c */


int main(int argc, char *argv[]) {
    unsigned long x = 0xF0F0F0F0;
    if (argc > 1) {
	x = strtoul(argv[1], NULL, 0);
    }
    int p = odd_parity_ref(x);
    int r = odd_parity(x);

    printf("x = 0x%lx, refp = %d, valp = %d, %s\n",
	   x, p, r, p==r ? "OK":"ERR");
    return 0;
}
