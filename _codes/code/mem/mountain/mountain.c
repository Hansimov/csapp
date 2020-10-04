/* mountain.c - Generate the memory mountain. */
/* $begin mountainmain */
#include <stdlib.h>
#include <stdio.h>
#include "fcyc2.h" /* measurement routines */
#include "clock.h" /* routines to access the cycle counter */

#define MINBYTES (1 << 14)  /* First working set size */
#define MAXBYTES (1 << 27)  /* Last working set size */
#define MAXSTRIDE 15        /* Stride x8 bytes */
#define MAXELEMS MAXBYTES/sizeof(long) 

/* $begin mountainfuns */
long data[MAXELEMS];      /* The global array we'll be traversing */

/* $end mountainfuns */
/* $end mountainmain */
void init_data(long *data, int n);
int test(int elems, int stride);
double run(int size, int stride, double Mhz);

/* $begin mountainmain */
int main()
{
    int size;        /* Working set size (in bytes) */
    int stride;      /* Stride (in array elements) */
    double Mhz;      /* Clock frequency */

    init_data(data, MAXELEMS); /* Initialize each element in data */
    Mhz = mhz(0);              /* Estimate the clock frequency */
/* $end mountainmain */
    /* Not shown in the text */
    printf("Clock frequency is approx. %.1f MHz\n", Mhz);
    printf("Memory mountain (MB/sec)\n");

    printf("\t");
    for (stride = 1; stride <= MAXSTRIDE; stride++)
	printf("s%d\t", stride);
    printf("\n");

 /* $begin mountainmain */
    for (size = MAXBYTES; size >= MINBYTES; size >>= 1) {
/* $end mountainmain */
	/* Not shown in the text */
	if (size > (1 << 20))
	    printf("%dm\t", size / (1 << 20));
	else
	    printf("%dk\t", size / 1024);

/* $begin mountainmain */
	for (stride = 1; stride <= MAXSTRIDE; stride++) {
	    printf("%.0f\t", run(size, stride, Mhz));
	    
	}
	printf("\n");
    }
    exit(0);
}
/* $end mountainmain */

/* init_data - initializes the array */
void init_data(long *data, int n)
{
    int i;

    for (i = 0; i < n; i++)
	data[i] = i;
}

/* $begin mountainfuns */
/* test - Iterate over first "elems" elements of array "data" with
 *        stride of "stride", using 4x4 loop unrolling.
 */
int test(int elems, int stride)
{
    long i, sx2 = stride*2, sx3 = stride*3, sx4 = stride*4;
    long acc0 = 0, acc1 = 0, acc2 = 0, acc3 = 0;
    long length = elems;
    long limit = length - sx4;

    /* Combine 4 elements at a time */
    for (i = 0; i < limit; i += sx4) {
	acc0 = acc0 + data[i];     
        acc1 = acc1 + data[i+stride];
	acc2 = acc2 + data[i+sx2]; 
        acc3 = acc3 + data[i+sx3];
    }

    /* Finish any remaining elements */
    for (; i < length; i += stride) {
	acc0 = acc0 + data[i];
    }
    return ((acc0 + acc1) + (acc2 + acc3));
}

/* run - Run test(elems, stride) and return read throughput (MB/s).
 *       "size" is in bytes, "stride" is in array elements, and Mhz is
 *       CPU clock frequency in Mhz.
 */
double run(int size, int stride, double Mhz)
{   
    double cycles;
    int elems = size / sizeof(double);       

    test(elems, stride);                     /* Warm up the cache */       //line:mem:warmup
    cycles = fcyc2(test, elems, stride, 0);  /* Call test(elems,stride) */ //line:mem:fcyc
    return (size / stride) / (cycles / Mhz); /* Convert cycles to MB/s */  //line:mem:bwcompute
}
/* $end mountainfuns */


