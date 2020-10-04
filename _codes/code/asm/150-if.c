/* $begin 150-if-ans-c */
long test(long x, long y, long z) {
    long val = x+y+z;
    if (x < -3) {
	if (y < z)
	    val = x*y;
	else
	    val = y*z;
    } else if (x > 2)
	val = x*z;
    return val;
}
/* $end 150-if-ans-c */

#if 0
/* $begin 150-if-prob-c */
long test(long x, long y, long z) {
    long val = ______;
    if (______) {
	if (______)
	    val = ______;
	else
	    val = ______;
    } else if (______)
	val = ______;
    return val;
}
/* $end 150-if-prob-c */
#endif
