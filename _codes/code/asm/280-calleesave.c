long Q(long a);

/* $begin 280-calleesave-c */
long P(long x, long y) 
{ 
    long u = Q(y); 
    long v = Q(x); 
    return u + v; 
} 
/* $end 280-calleesave-c */


long P2(long x, long y)
{
    volatile long sy = y;
    volatile long u = Q(x);
    long v = Q(sy);
    return u + v;
}
