/* Demonstration of division instructions */

/* $begin 100-umul-c */
#include <inttypes.h>

typedef unsigned __int128 uint128_t;

void store_uprod(uint128_t *dest, uint64_t x, uint64_t y) {
    *dest = x * (uint128_t) y;
}
/* $end 100-umul-c */

typedef __int128 int128_t;
void store_prod(int128_t *dest, int64_t x, int64_t y) {
    *dest = x * (int128_t) y;
}

/* $begin 100-remdiv-c */
void remdiv(long x, long y,
	    long *qp, long *rp) {
    long q = x/y;
    long r = x%y;
    *qp = q;
    *rp = r;
}
/* $end 100-remdiv-c */

/* $begin 100-uremdiv-c */
void uremdiv(unsigned long x, unsigned long y,
	     unsigned long *qp, unsigned long *rp) {
    unsigned long q = x/y;
    unsigned long r = x%y;
    *qp = q;
    *rp = r;
}
/* $end 100-uremdiv-c */
