
#include <stdlib.h>
#include <stdio.h>
#include <inttypes.h>
#include <limits.h>

/* $begin uadd_ok_proto */
/* Determine whether arguments can be added without overflow */
int uadd_ok(unsigned x, unsigned y);
/* $end uadd_ok_proto */

/* $begin uadd_ok */
/* Determine whether arguments can be added without overflow */
int uadd_ok(unsigned x, unsigned y) {
    unsigned sum = x+y;
    return sum >= x;
}
/* $end uadd_ok */

/* $begin uadd_ovf_proto */
/* Determine whether adding arguments would cause overflow */
int uadd_ovf(unsigned x, unsigned y);
/* $end uadd_ovf_proto */

/* $begin uadd_ovf */
/* Determine whether adding arguments would cause overflow */
int uadd_ovf(unsigned x, unsigned y) {
    unsigned sum = x+y;
    return  sum < x;
}
/* $end uadd_ovf */

/* Test function */
int test_uadd_ok(unsigned x, unsigned y) {
    uint64_t lx = (uint64_t) x;
    uint64_t ly = (uint64_t) y;
    return (lx + ly) == (x + y);
}


/* Test function */
int test_uadd_ovf(unsigned x, unsigned y) {
    uint64_t lx = (uint64_t) x;
    uint64_t ly = (uint64_t) y;
    return (lx + ly) != (x + y);
}

int main(int argc, char *argv[]) {
    unsigned x = argc > 1 ?  strtoul(argv[1], NULL, 0) : UINT_MAX;
    unsigned y = argc > 1 ?  strtoul(argv[2], NULL, 0) : UINT_MAX;
    int ok = uadd_ok(x, y);
    int ovf = uadd_ovf(x, y);
    int tok = test_uadd_ok(x, y);
    int tovf = test_uadd_ovf(x, y);
    printf("x = %u, y = %u, x+y = %u\n", x, y, x+y);
    if (ok != tok)
	printf("\tok = %d, tok = %d\n", ok, tok);
    if (ovf != tovf)
	printf("\tovf = %d, tovf = %d\n", ovf, tovf);
    return 0;
}
