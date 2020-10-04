/* Benchmark versions of string-lower-casing function */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "clock.h"
#include "fcyc.h"

#define ABITS 18
#define ASIZE (1 << ABITS)

/* Keep track of a number of different combining programs */
#define MAX_BENCHMARKS 10

typedef void (*lower_t)(char *);

static char data[ASIZE];

static void setup(int len)
{
    int i;
    for (i = 0; i < len-1; i++)
	data[i] = 'a' + i%26;
    data[len-1] = '\0';
}

lower_t current_lf;

void run(int *junk) {
    current_lf(data);
}
     
/* Perform test of combinition function */
static void run_test(lower_t lf, int len)
{
    double time;
    double tpe;
    current_lf = lf;
    setup(len);
    current_lf(data);
    time = fcyc(run, NULL) / mhz(0) * 1e-6;
    tpe = time * 1e6 /(double) len;
    /* print results */
    printf("%d\t%f\t%f\n", len, time, tpe);
}

void quad_lower(char *s)
{
    int i;
    for (i = 0; i < strlen(s); i++)
	if (s[i] >= 'A' && s[i] <= 'Z')
	    s[i] -= ('A' - 'a');
}

void lin_lower(char *s)
{
    int i;
    int len = strlen(s);
    for (i = 0; i < len; i++)
	if (s[i] >= 'A' && s[i] <= 'Z')
	    s[i] -= ('A' - 'a');
}


int main()
{
    int size;
    printf("Linear:   \n");
    printf("Length\tSeconds\tuSPE\n");
    for (size = 1; size <= ABITS; size++) {
	run_test(lin_lower, 1<<size);
    }
    printf("Quadratic:\n");
    printf("Length\tSeconds\tuSPE\n");
    for (size = 1; size <= ABITS; size++) {
	run_test(quad_lower, 1<<size);
    }
    return 0;
}

