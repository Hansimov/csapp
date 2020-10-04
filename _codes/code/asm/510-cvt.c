/* Try out different conversions */
typedef int src_t;
typedef long dest_t;

/* $begin 510-cvt-c */
dest_t cvt(src_t x)
{
    dest_t y = (dest_t) x;
    return y;
}
/* $end 510-cvt-c */


long cvt_sl2sl(long x)
{
    return x;
}

long cvt_si2sl(int x)
{
    return x;
}

long cvt_sc2sl(char x)
{
    return x;
}

unsigned long cvt_ui2ul(unsigned x)
{
    return x;
}

unsigned long cvt_uc2ul(unsigned char x)
{
    return x;
}

int cvt_sl2si(long x)
{
    return x;
}

unsigned cvt_ul2ui(unsigned long x)
{
    return x;
}

/* Floating point */
double cvt_sl2d(long x)
{
    return x;
}

int cvt_d2si(double x)
{
    return x;
}

double cvt_f2d(float x)
{
    return x;
}

float cvt_sl2f(long x)
{
    return x;
}

long cvt_f2sl(float x)
{
    return x;
}




