#include <stdlib.h>

/* $begin store_sum-c */
long *store_sum(long *xp, long y) {
    long *data = malloc(sizeof(long));
    *data = *xp + y;
    return data;
}

long caller() {
    long arg1 = 534;
    long *sump = store_sum(&arg1, 1057);
    long val = *sump;
    free(sump);
    return val;
}
/* $end store_sum-c */
