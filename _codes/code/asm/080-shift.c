/* Test of shift instruction */

/* $begin 080-shift-c */
long shift_left4_rightn(long x, long n)
{
    x <<= 4;
    x >>= n;
    return x;
}
/* $end 080-shift-c */
