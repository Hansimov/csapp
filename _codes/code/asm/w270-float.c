/* Experiments with floating point code */

/* $begin w270-dmin-proto-c */
/* Return minimum of x and y */
double dmin(double x, double y);
/* $end w270-dmin-proto-c */

/* $begin w270-dsqrt-proto-c */
/* Return sqrt(x) */
double dsqrt(double x);
/* $end w270-dsqrt-proto-c */


double mult(double x, double y) {
    return x * y;
}

double amult(double x, double y) {
    double result;
    asm("vmulsd %[x], %[y], %[r]   # Compute r = x * y\n\t"
	: [r] "=x" (result)         /* Outputs */
	: [x] "x" (x), [y] "x" (y)  /* Inputs */
	);
    return result;
}

/* $begin w270-dmin-c */
/* Return minimum of x and y */
double dmin(double x, double y) {
    double result;
    asm("vminsd %[x], %[y], %[r]   # Compute r = min(x,y)\n\t"
	: [r] "=x" (result)         /* Outputs */
	: [x] "x" (x), [y] "x" (y)  /* Inputs */
	);
    return result;
}
/* $end w270-dmin-c */

/* $begin w270-dsqrt-c */
/* Return sqrt(x) */
double dsqrt(double x) {
    double result;
    asm("sqrtsd %[x], %[r]   # Compute r = sqrt(x)\n\t"
	: [r] "=x" (result)         /* Output */
	: [x] "x" (x)               /* Input */
	);
    return result;
    
}
/* $end w270-dsqrt-c */
