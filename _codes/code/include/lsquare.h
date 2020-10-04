/* Compute least squares fit of set of data points */

/* Fit is of form y = mx + b.  m is slope, b is intercept */
double ls_slope(double *xval, double *yval, int cnt);
double ls_intercept(double *xval, double *yval, int cnt);

typedef enum {LS_AVG, LS_MAX} ls_err_t;

/* Determine error (either absolute or average) of least squares fit */
double ls_error(double *xval, double *yval, int cnt, ls_err_t etype);







