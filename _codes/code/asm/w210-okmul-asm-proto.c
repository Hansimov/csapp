#include <limits.h>

/* $begin w210-tmult_ok_asm-proto-c */
/* Starter function for tmult_ok */
/* Multiply arguments and indicate whether it did not overflow */
int tmult_ok_asm(long x, long y, long *dest) {
    long p = x*y;
    *dest = p;
    return p > 0;
}
/* $end w210-tmult_ok_asm-proto-c */

/* $begin w210-umult_ok_asm-proto-c */
/* Multiply arguments and indicate whether it did not overflow */
int umult_ok_asm(unsigned long x, unsigned long y, unsigned long *dest) {
    unsigned long p = x*y;
    *dest = p;
    return p > 0;
}
/* $end w210-umult_ok_asm-proto-c */

/* $begin w2-tmult_sat-proto-c */
/* Compute x * y, saturating at TMin or TMax */
long tmult_sat(long x, long y) {
    /* Determine sign of x * y */
    int ispos = (x < 0) == (y < 0);
    /* Value when overflow occurs */
    long oprod = ispos ? LONG_MAX : LONG_MIN;
    long prod = x * y;
    unsigned char b = (prod == 0);
    prod = b ? prod : oprod;
    return prod;
}
/* $end w2-tmult_sat-proto-c */
