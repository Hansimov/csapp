
/* $begin 180-while-solve-c */
long loop_while(long a, long b)
{
    long result = 1;
    while (a < b) {
	result = result * (a+b);
	a = a+1;
    }
    return result;
}
/* $end 180-while-solve-c */

#if 0
/* $begin 180-while-prob-c */
long loop_while(long a, long b)
{
    long result = ________;
    while (______) {
	result = ____________;
	a = ______;
    }
    return result;
}
/* $end 180-while-prob-c */
#endif

/* $begin 180-while2-solve-c */
long loop_while2(long a, long b)
{
    long result = b;
    while (b > 0) {
	result = result * a;
	b = b-a;
    }
    return result;
}
/* $end 180-while2-solve-c */

#if 0
/* $begin 180-while2-prob-c */
long loop_while2(long a, long b)
{
    long result = ________;
    while (______) {
	result = ____________;
	b = ______;
    }
    return result;
}
/* $end 180-while2-prob-c */
#endif
