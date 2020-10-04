/* $begin 520-float_funct-c */
double funct(double a, float x, double b, int i)
{
    return a*x - b/i;
}
/* $end 520-float_funct-c */

/* $begin 520-find_range-c */
typedef enum {NEG, ZERO, POS, OTHER} range_t;

range_t find_range(float x)
{
    int result;
    if (x < 0)
	result = NEG;
    else if (x == 0)
	result = ZERO;
    else if (x > 0)
	result = POS;
    else
	result = OTHER;
    return result;
}
/* $end 520-find_range-c */

typedef struct {
    int ival;
    long lval;
    float fval;
    double dval;
} tstruct_t;

tstruct_t ss1, ss2, si, sl, sf, sd;

void xfer()
{
    si.fval = (float) ss1.ival; si.dval = (double) ss2.ival;

    sl.fval = (float) ss1.lval; sl.dval = (double) ss2.lval;

    sf.ival = (int) ss1.fval; sf.lval = (long) ss2.fval;
    sf.dval = (double) ss2.fval;

    sd.ival = (int) ss1.dval; sd.lval = (long) ss2.dval;
    sd.fval = (float) ss1.dval;
}

void copy_vals(int i,   long l,   float f,   double d,
	       int *ip, long *lp, float *fp, double *dp)
{
    *ip = (int) f;
    *lp = (long) d;
    *fp = (float) d;
    *dp = (double) l;
}
