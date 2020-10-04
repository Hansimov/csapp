#include <stdio.h>
#include <stdlib.h>
#include "cpe.h"

/*
 * Compute product of a set of array elements.
 * Function unrolls loops by 3.
*/

/* $begin opt-aprod-c */
double aprod(double a[], long n)
{
    long i;
    double x, y, z;
    double r = 1;
    for (i = 0; i < n-2; i+= 3) {
	x = a[i]; y = a[i+1]; z = a[i+2];
	r = r * x * y * z; /* Product computation */
    }
    for (; i < n; i++)
	r *= a[i];
    return r;
}
/* $end opt-aprod-c */

double aprod1(double a[], long n)
{
    long i;
    double x, y, z;
    double r = 1;
    for (i = 0; i < n; i+= 3) {
	x = a[i]; y = a[i+1]; z = a[i+2];
	/* $begin opt-assoc-c */
	r = ((r * x) * y) * z; /* A1 */
	/* $end opt-assoc-c */
    }
    for (; i < n; i++)
	r *= a[i];
    return r;
}

double aprod2(double a[], long n)
{
    long i;
    double x, y, z;
    double r = 1;
    for (i = 0; i < n; i+= 3) {
	x = a[i]; y = a[i+1]; z = a[i+2];
	/* $begin opt-assoc-c */
	r = (r * (x * y)) * z; /* A2 */
	/* $end opt-assoc-c */
    }
    for (; i < n; i++)
	r *= a[i];
    return r;
}

double aprod3(double a[], long n)
{
    long i;
    double x, y, z;
    double r = 1;
    for (i = 0; i < n; i+= 3) {
	x = a[i]; y = a[i+1]; z = a[i+2];
	/* $begin opt-assoc-c */
	r = r * ((x * y) * z); /* A3 */
	/* $end opt-assoc-c */
    }
    for (; i < n; i++)
	r *= a[i];
    return r;
}

double aprod4(double a[], long n)
{
    long i;
    double x, y, z;
    double r = 1;
    for (i = 0; i < n; i+= 3) {
	x = a[i]; y = a[i+1]; z = a[i+2];
	/* $begin opt-assoc-c */
	r = r * (x * (y * z)); /* A4 */
	/* $end opt-assoc-c */
    }
    for (; i < n; i++)
	r *= a[i];
    return r;
}

double aprod5(double a[], long n)
{
    long i;
    double x, y, z;
    double r = 1;
    for (i = 0; i < n; i+= 3) {    
	x = a[i]; y = a[i+1]; z = a[i+2];
	/* $begin opt-assoc-c */
	r = (r * x) * (y * z); /* A5 */
	/* $end opt-assoc-c */
    }
    for (; i < n; i++)
	r *= a[i];
    return r;
}

volatile double sink = 0;

#define SIZE 1024
double a[SIZE];

void t1(long n)
{
    sink = aprod1(a, n);
}

void t2(long n)
{
    sink = aprod2(a, n);
}

void t3(long n)
{
    sink = aprod3(a, n);
}

void t4(long n)
{
    sink = aprod4(a, n);
}

void t5(long n)
{
    sink = aprod5(a, n);
}

int main() {
    printf("A1 CPE = %.2f\n", find_cpe(t1, SIZE));
    printf("A2 CPE = %.2f\n", find_cpe(t2, SIZE));
    printf("A3 CPE = %.2f\n", find_cpe(t3, SIZE));
    printf("A4 CPE = %.2f\n", find_cpe(t4, SIZE));
    printf("A5 CPE = %.2f\n", find_cpe(t5, SIZE));
    return 0;
}








