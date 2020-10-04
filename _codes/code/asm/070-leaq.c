/* Experiments getting GCC to use leaq instruction */

/* $begin 070-leaq-eg-c */
long scale(long x, long y, long z) {
    long t = x + 4 * y + 12 * z;
    return t;
}
/* $end 070-leaq-eg-c */

/* $begin 070-leaq-prob-c */
long scale2(long x, long y, long z) {
/* $end 070-leaq-prob-c */
#if 0
/* $begin 070-leaq-prob-c */
    long t = _____________________;
/* $end 070-leaq-prob-c */
#endif
/* $begin 070-leaq-prob-ans-c */
    long t = 5 * x + 2 * y + 8 * z;
/* $end 070-leaq-prob-ans-c */
/* $begin 070-leaq-prob-c */
    return t;
}
/* $end 070-leaq-prob-c */
