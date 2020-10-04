/* $begin 050-exchange-c */
long exchange(long *xp, long y)
{
    long x = *xp;
    *xp = y;
    return x;
}
/* $end 050-exchange-c */
