/* Some use of floating point constants */

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <inttypes.h>

double circum(double radius)
{
    return 2.0 * M_PI * radius;
}

double area(double radius)
{
    return M_PI * radius * radius;
}

/* $begin 540-cel2fahr-c */
double cel2fahr(double temp)
{
    return 1.8 * temp + 32.0;
}
/* $end 540-cel2fahr-c */
     

/* Decode decimal representation of PI */
void decode(unsigned lo, unsigned hi)
{
    unsigned exp = hi >> 20;
    unsigned hi_frac = hi - (exp << 20);
    uint64_t frac = ((int64_t) 1 << 52) + ((int64_t) hi_frac << 32) + lo;
    double frac_val = (double) frac / (double) ((int64_t) 1 << 52);
    double val = frac_val * (double) (1 << (exp - 1023));
    printf("lo = %u (0x%x)\n", lo, lo);
    printf("hi = %u (0x%x)\n", hi, hi);
    printf("exp = %d (0x%x)\n", exp, exp);
    printf("hi_frac = %d (0x%x)\n", hi_frac, hi_frac);
    printf("frac = %" PRIu64 " (0x%" PRIx64 ")\n", frac, frac);
    printf("frac_val = %.15g\n", frac_val);
    printf("val = %.15g\n", val);
}

int main(int argc, char *argv[])
{
    unsigned lo = 1413754136;
    unsigned hi = 1074340347;
    if (argc == 3) {
	lo = strtoul(argv[1], NULL, 0);
	hi = strtoul(argv[2], NULL, 0);
    }
    decode(lo, hi);
    return 0;
}
