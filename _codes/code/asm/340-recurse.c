#if 0
/* $begin 340-recurse-proto-c */
long rfun(unsigned long x) {
    if ( ____ )
	return _____;
    unsigned long nx = _____;
    long rv = rfun(nx);
    return _____;
}
/* $end 340-recurse-proto-c */
#endif

/* $begin 340-recurse-c */
long rfun(unsigned long x) {
    if (x == 0)
	return 0;
    unsigned long nx = x>>2;
    long rv = rfun(nx);
    return x + rv;
}
/* $end 340-recurse-c */

