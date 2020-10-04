/* $begin 010-mstore-c */
long mult2(long, long);

void multstore(long x, long y, long *dest) {
    long t = mult2(x, y);
    *dest = t;
}
/* $end 010-mstore-c */
