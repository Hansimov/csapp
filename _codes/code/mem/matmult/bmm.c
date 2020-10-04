/* block matrix multiply (ijk and ikj permutations only) */
#include <stdio.h>
#include <stdlib.h>
#include "mm.h"
#include "fcycbmm.h"
#include "clock.h"

/* fcyc() should clear the cache */
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
		exit(0);
	    }
}

/* Run f and return clocks per inner loop iteration */
double run(test_funct f, int n, int bsize)
{
    double cpi;

    cpi = fcyc(f, n, bsize, CLEARCACHE) / (n*n*n);
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

/***************************************************
 * Two different versions of blocked matrix multiply 
 ***************************************************/
/* $begin bmm-ijk */
void bijk(array A, array B, array C, int n, int bsize) 
{
    int i, j, k, kk, jj;
    double sum;
    int en = bsize * (n/bsize); /* Amount that fits evenly into blocks */
  
    for (i = 0; i < n; i++)
	for (j = 0; j < n; j++)
	    C[i][j] = 0.0;

    for (kk = 0; kk < en; kk += bsize) { 
	for (jj = 0; jj < en; jj += bsize) {
	    for (i = 0; i < n; i++) {
		for (j = jj; j < jj + bsize; j++) {
		    sum = C[i][j];
		    for (k = kk; k < kk + bsize; k++) {
			sum += A[i][k]*B[k][j];
		    }
		    C[i][j] = sum;
		}
	    }
	}
	/* $end bmm-ijk */
	/* Now finish off rest of j values  (not shown in textbook) */
	for (i = 0; i < n; i++) {
	    for (j = en; j < n; j++) {
		sum = C[i][j];
		for (k = kk; k < kk + bsize; k++) {
		    sum += A[i][k]*B[k][j];
		}
		C[i][j] = sum;
	    }
	}
	/* $begin bmm-ijk */
    }
    /* $end bmm-ijk */
    /* Now finish remaining k values (not shown in textbook) */ 
    for (jj = 0; jj < en; jj += bsize) {
	for (i = 0; i < n; i++) {
	    for (j = jj; j < jj + bsize; j++) {
		sum = C[i][j];
		for (k = en; k < n; k++) {
		    sum += A[i][k]*B[k][j];
		}
		C[i][j] = sum;
	    }
	}
    }
    
    /* Now finish off rest of j values (not shown in textbook) */
    for (i = 0; i < n; i++) {
	for (j = en; j < n; j++) {
	    sum = C[i][j];
	    for (k = en; k < n; k++) {
		sum += A[i][k]*B[k][j];
	    }
	    C[i][j] = sum;
	}
    }
    /* $begin bmm-ijk */
}
/* $end bmm-ijk */

void bikj(array A, array B, array C, int n, int bsize) 
{
    int i, j, k;
    int kk, jj;
    double r;

    int en = bsize*(n/bsize); /* Number of elements within normal blocks */
    for (i = 0; i < n; i++)
	for (j = 0; j < n; j++)
	    C[i][j] = 0.0;
    /* Do blocks along k */
    for (kk = 0; kk < en; kk += bsize) {
	for (jj = 0; jj < en; jj += bsize) {
	    for (i = 0; i < n; i++) {
		for (k = kk; k < kk + bsize; k++) {
		    r = A[i][k];
		    for (j = jj; j < jj + bsize; j++) {
			C[i][j] += r*B[k][j];
		    }
		}
	    }
	}
	
	/* Now finish remaining j values */
	for (i = 0; i < n; i++) {
	    for (k = kk; k < kk + bsize; k++) {
		r = A[i][k];
		for (j = en; j < n; j++) {
		    C[i][j] += r*B[k][j];
		}
	    }
	}
    }
    
    /* Now finish remaining values of k */
    for (jj = 0; jj < en; jj += bsize) {
	for (i = 0; i < n; i++) {
	    for (k = en; k < n; k++) {
		r = A[i][k];
		for (j = jj; j < jj + bsize; j++) {
		    C[i][j] += r*B[k][j];
		}
	    }
	}
    }
    
    /* Now finish remaining j values */
    for (i = 0; i<n; i++) {
	for (k = en; k < n; k++) {
	    r = A[i][k];
	    for (j = en; j < n; j++) {
		C[i][j] += r*B[k][j];
	    }
	}
    }
}

/* Run different versions of blocked matrix multiply
   and return display cycles per inner loop iteration. */

int main(int argc, char **argv) 
{
    int n, bsize;

    init(ga, gb, MAXN);

    printf("blocked mm cycles/iteration (for varying matrix sizes)\n");
    printf("%3s%3s%7s%7s\n", "n", "b", "ijk", "ikj");

    /* See the effect of varying sizes */
    bsize = INCN;
    for (n = MINN; n <= MAXN; n += bsize) {  
	printf("%3d %3d ", n, bsize);
	printf("%5.2f ", run(bijk, n, bsize));
	fflush(stdout);
	printf("%5.2f ", run(bikj, n, bsize));
	printf("\n");
    }
    printf("\n");

    /* Now see effect of varying block sizes */
    printf("blocked mm cycles/iteration (for varying block sizes)\n");
    printf("%3s%3s%7s%7s\n", "n", "b", "ijk", "ikj");

    n = MAXN;
    for (bsize = INCN; bsize <= n; bsize += INCN) {
	printf("%3d %3d ", n, bsize);
	printf("%5.2f ", run(bijk, n, bsize));
	fflush(stdout);
	printf("%5.2f ", run(bikj, n, bsize));
	printf("\n");
    }

    exit(0);
}
