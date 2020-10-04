
/* $begin twiddle */
void twiddle1(long *xp, long *yp)
{
    *xp += *yp;
    *xp += *yp;
}

void twiddle2(long *xp, long *yp)
{
    *xp += 2* *yp;
}
/* $end twiddle */

void twiddle1x(long *xp)
{
    /* $begin twiddle1frag */
    *xp += *xp;  /* Double value at xp */
    *xp += *xp;  /* Double value at xp */
    /* $end twiddle1frag */
}

void twiddle2x(long *xp)
{
    /* $begin twiddle2frag */
    *xp += 2* *xp;  /* Triple value at xp */
    /* $end twiddle2frag */
}

void multipointers(long *p, long *q)
{
    long x, y;
    long t1;
    /* $begin pqfrag */
    x = 1000; y = 3000;
    *q = y;   /* 3000 */
    *p = x;   /* 1000 */
    t1 = *q;  /* 1000 or 3000 */
    /* $end pqfrag */
    *q += t1;
}
