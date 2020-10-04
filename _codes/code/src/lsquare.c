/* Compute least squares fit of set of data points */
#include <stdio.h>
#include <stdlib.h>
#include "lsquare.h"

typedef struct {
    double sum_x;
    double sum_y;
    double sum_xx;
    double sum_xy;
} ls_stat_t;

/* Accumulate various sums of the data */
static void ls_stats(double *xval, double *yval, int cnt, ls_stat_t *statp)
{
    int i;
    statp->sum_x = 0.0;
    statp->sum_y = 0.0;
    statp->sum_xx = 0.0;
    statp->sum_xy = 0.0;
    for (i = 0; i < cnt; i++) {
	double x = xval[i];
	double y = yval[i];
	statp->sum_x += x;
	statp->sum_y += y;
	statp->sum_xx += x * x;
	statp->sum_xy += x * y;
    }
}

double ls_slope(double *xval, double *yval, int cnt)
{
    double slope;
    ls_stat_t stat;
    ls_stats(xval, yval, cnt, &stat);
    slope = (cnt * stat.sum_xy - stat.sum_x * stat.sum_y)/
	(cnt * stat.sum_xx - stat.sum_x*stat.sum_x);
    return slope;
}

double ls_intercept(double *xval, double *yval, int cnt)
{
    double intercept;
    ls_stat_t stat;
    ls_stats(xval, yval, cnt, &stat);
    intercept = (stat.sum_xx * stat.sum_y - stat.sum_xy * stat.sum_x)/
	(cnt * stat.sum_xx - stat.sum_x*stat.sum_x);
    return intercept;
}

static double rel_err(double x, double y, double slope, double intercept)
{
    double pred_y = slope*x + intercept;
    double offset = y - pred_y;
    if (offset < 0)
	offset = -offset;
    if (pred_y == 0)
	return offset;
    return offset/pred_y;
}

double ls_error(double *xval, double *yval, int cnt, ls_err_t etype)
{
    double slope;
    double intercept;
    ls_stat_t stat;
    int i;
    double num, denom;
    ls_stats(xval, yval, cnt, &stat);
    slope = (cnt * stat.sum_xy - stat.sum_x * stat.sum_y)/
	(cnt * stat.sum_xx - stat.sum_x*stat.sum_x);
    intercept = (stat.sum_xx * stat.sum_y - stat.sum_xy * stat.sum_x)/
	(cnt * stat.sum_xx - stat.sum_x*stat.sum_x);
    num = denom = 0;
    for (i = 0; i < cnt; i++) {
	double e = rel_err(xval[i], yval[i], slope, intercept);
	switch (etype) {
	case LS_AVG:
	    num += e;
	    denom++;
	    break;
	case LS_MAX:
	    if (num < e)
		num = e;
	    denom = 1;
	    break;
	default:
	    fprintf(stderr, "Invalid error type: %d\n", etype);
	    exit(1);
	    break;
	}
    }
    return num/denom;
}

