#include <math.h>

typedef int arg1_t;
typedef float arg2_t;
typedef long arg3_t;
typedef double arg4_t;

/* $begin 530-fexpr1-proto-c */
double funct1a(int p, float q, long r, double s);
double funct1b(int p, long q, float r, double s);
/* $end 530-fexpr1-proto-c */

/* $begin 530-fexpr1-c */
double funct1(arg1_t p, arg2_t q, arg3_t r, arg4_t s) 
{ 
    return p/(q+r) - s; 
} 
/* $end 530-fexpr1-c */

/* $begin 530-fexpr2-proto-c */
double funct2(double w, int x, float y, long z);
/* $end 530-fexpr2-proto-c */

/* $begin 530-fexpr2-ans-c */
double funct2(double w, int x, float y, long z) 
{ 
    return y*x - w/z;
} 
/* $end 530-fexpr2-ans-c */

/* $begin 530-fexpr3-proto-c */
double funct3(int *ap, double b, long c, float *dp);
/* $end 530-fexpr3-proto-c */

/* $begin 530-fexpr3-ans-c */
double funct3(int *ap, double b, long c, float *dp) {
    int a = *ap;
    float d = *dp;
    if (a < b)
	return c*d;
    else
	return c+2*d;
}
/* $end 530-fexpr3-ans-c */

double d_max(double x, double y) {
    return x < y ? y : x;
}

float f_max(float x, float y) {
    return x < y ? y : x;
}

double dz(double *dp) {
    *dp = 0;
    return 0;
}


#define EXPR(x) fabs(x)
#define EXPR2(x) 0
#define EXPR3(x) -(x)

/* $begin 530-simplefun-c */
double simplefun(double x) {
    return EXPR(x);
}
/* $end 530-simplefun-c */

double simplefun2(double x) {
    return EXPR2(x);
}

double simplefun3(double x) {
    return EXPR3(x);
}

#if 0
float fsimplefun(float x) {
    return EXPR(x);
}

float fsimplefun2(float x) {
    return EXPR2(x);
}

float fsimplefun3(float x) {
    return EXPR3(x);
}
#endif



