/* matrix multiply permutations */
#include <stdio.h>
#include <stdlib.h>
#include "mm.h"
#include "fcycmm.h"
#include "clock.h"

/* whether or not fcyc should clear the cache */
#define CLEARCACHE 1  

/* global arrays */
array ga, gb, gc;

/* check the result array for correctness */
void checkresult(array c, int n)
{
    int i, j;

    for (i = 0; i < n; i++)
	for (j = 0; j < n; j++)
	    if (c[i][j] != (double)n) {
	      printf("Error: bad number (%f) in result matrix (%d,%d)\n", 
		       c[i][j], i, j);
	      fflush(stdout);
		exit(0);
	    }
}

/* Run f and return clocks per inner loop iteration */
double run(test_funct f, int n)
{
    double cpi;

    cpi = fcyc(f, n, CLEARCACHE) / (n*n*n);
    checkresult(gc, n);
    return(cpi);
}

/* reset result array to zero */
void reset(array c, int n)
{
    int i,j;
    
    for (i = 0; i < n; i++) {
	for (j = 0; j < n; j++) {
	    c[i][j] = 0.0;
	}
    }
}

/* initialize input arrays to 1 */
void init(array a, array b, int n) 
{
    int i,j;
    
    for (i = 0; i < n; i++) {
	for (j = 0; j < n; j++) {
	    a[i][j] = 1.0;
	    b[i][j] = 1.0;
	}
    }
}


/* print an array (debug) */
void printarray(array a, int n)
{
    int i, j;

    for (i = 0; i < n; i++) {
	for (j = 0; j < n; j++) {
	    printf("%5.1f ", a[i][j]);
	}
	printf("\n");
    }
}

/***********************************************
 * Six different versions of matrix multiply 
 ***********************************************/
void ijk(array A, array B, array C, int n) 
{
    int i, j, k;
    double sum;

/* $begin mm-ijk */
for (i = 0; i < n; i++) 
    for (j = 0; j < n; j++) {
	sum = 0.0;
        for (k = 0; k < n; k++)
            sum += A[i][k]*B[k][j];
        C[i][j] += sum;
    }
/* $end mm-ijk */

}

void jik(array A, array B, array C, int n) 
{
    int i, j, k;
    double sum;

/* $begin mm-jik */
for (j = 0; j < n; j++) 
    for (i = 0; i < n; i++) {
	sum = 0.0;
	for (k = 0; k < n; k++)
	    sum += A[i][k]*B[k][j];
	C[i][j] += sum;
    }
/* $end mm-jik */
}

void ikj(array A, array B, array C, int n) 
{
    int i, j, k;
    double r;
    
    /* $begin mm-ikj */
for (i = 0; i < n; i++)
    for (k = 0; k < n; k++) {
	r = A[i][k];
	for (j = 0; j < n; j++)
	    C[i][j] += r*B[k][j];
    }
/* $end mm-ikj */
}

void kij(array A, array B, array C, int n)
{
    int i, j, k;
    double r;

    /* $begin mm-kij */
for (k = 0; k < n; k++)
    for (i = 0; i < n; i++) {
	r = A[i][k];
	for (j = 0; j < n; j++)
	    C[i][j] += r*B[k][j];
    }
/* $end mm-kij */
}

void kji(array A, array B, array C, int n)
{
    int i, j, k;
    double r;

/* $begin mm-kji */
for (k = 0; k < n; k++)
    for (j = 0; j < n; j++) {
	r = B[k][j];
	for (i = 0; i < n; i++)
	    C[i][j] += A[i][k]*r;
    }
/* $end mm-kji */
}

void jki(array A, array B, array C, int n)
{
    int i, j, k;
    double r;

/* $begin mm-jki */
for (j = 0; j < n; j++)
    for (k = 0; k < n; k++) {
	r = B[k][j];
	for (i = 0; i < n; i++)
	    C[i][j] += A[i][k]*r;
    }
/* $end mm-jki */
}

/* 
 * Run the six versions of matrix multiply and display performance
 * as clock cycles per inner loop iteration.
 */ 

int main()
{
    int n;

    init(ga, gb, MAXN);

    printf("matmult cycles/loop iteration\n");
    printf("%3s%6s%6s%6s%6s%6s%6s\n", "n", 
	   "jki", "kji", "ijk", "jik", "kij", "ikj");
    fflush(stdout);
    for (n = MINN; n <= MAXN; n += INCN) {  
	printf("%3d ", n);

	printf("%5.2f ", run(jki, n));
	printf("%5.2f ", run(kji, n));
	printf("%5.2f ", run(ijk, n));
	printf("%5.2f ", run(jik, n));
	printf("%5.2f ", run(kij, n));
	printf("%5.2f ", run(ikj, n));
	printf("\n");
	fflush(stdout);
    }
    exit(0);
}

