#include <stdlib.h>
#include <stdio.h>


/* Recursive computation of 2^x */
long int rexp(long unsigned int x) {
    if (x ==0)
	return 1;
    return 2*rexp(x-1);
}

/* Recursive computation of odd parity */
long int even(long unsigned x);
long int odd(long unsigned x);

/* Return 1 if x has an odd number of 0's */
long int parity(x) {
    return odd(x);
}

/* Return 1 if x has an odd number of 0's */
long int odd(long unsigned x) {
    long int lsb = x & 0x1;
    long int rest = x >> 1;
    if (x == 0)  return 0;
    if (lsb)     return even(rest);
    return odd(rest);
}

/* Return 1 if x has an even number of 0's */
long int even(long unsigned x) {
    long int lsb = x & 0x1;
    long int rest = x >> 1;
    if (x == 0)  return 1;
    if (lsb)     return odd(rest);
    return even(rest);
}

int main(int argc, char *argv[]) {
    long unsigned eval = 4;
    long int eeval = rexp(eval);
    printf("2^%lu --> %ld\n", eval, eeval);
    long unsigned pval = 0x16;
    long int ppval = parity(pval);
    printf("parity(%lu) --> %ld\n", pval, ppval);    
    return 0;
}
