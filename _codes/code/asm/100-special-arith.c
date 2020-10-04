/* Demonstration of special arithmetic instructions */

#include <inttypes.h>

void full_mult(int64_t x, int64_t y, int64_t *dest) {
    int64_t prod = x * y;
    *dest = prod;
}
