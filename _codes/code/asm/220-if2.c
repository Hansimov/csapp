/* $begin 220-if2-ans-c */
long test(long x, long y) {
    long val = 8*x;
    if (y > 0) {
	if (x < y)
	    val = y-x;
	else
	    val = x&y;
    } else if (y <= -2)
	val = x+y;
    return val;
}
/* $end 220-if2-ans-c */

#if 0
/* $begin 220-if2-prob-c */
long test(long x, long y) {
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
/* $end 220-if2-prob-c */
#endif
