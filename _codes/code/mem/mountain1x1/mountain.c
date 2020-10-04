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
	    printf("%.1f\t", run(size, stride, Mhz));
	    
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
/*
 * test - Iterate over first "elems" elements of array "data" 
 *        with stride of "stride".
 */
int test(int elems, int stride) /* The test function */
{
    int i;
    long result = 0; 
    volatile long sink; 

    for (i = 0; i < elems; i += stride) {
	result += data[i];  
    }
    sink = result; /* So compiler doesn't optimize away the loop */
    return sink;
}

/* 
 * run - Run test(elems, stride) and return read throughput (MB/s).
 *       "size" is in bytes, "stride" is in array elements, and 
 *       Mhz is CPU clock frequency in Mhz.
 */
double run(int size, int stride, double Mhz)
{   
    double cycles;
    int elems = size / sizeof(double);       

    test(elems, stride);                     /* warm up the cache */       //line:mem:warmup
    cycles = fcyc2(test, elems, stride, 0);  /* call test(elems,stride) */ //line:mem:fcyc
    return (size / stride) / (cycles / Mhz); /* convert cycles to MB/s */  //line:mem:bwcompute
}
/* $end mountainfuns */


