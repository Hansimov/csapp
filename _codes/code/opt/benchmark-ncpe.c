#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "fcyc.h"
#include "combine.h"

/* Compute "net CPE" for benchmarks with different vector lengths */

#ifndef CNT
#define CNT 1024
#endif

/* Keep track of a number of different combining programs */
#define MAX_BENCHMARKS 100

static struct {
    combiner cfunct;
    combiner checkfunct;
    char *description;
} benchmarks[MAX_BENCHMARKS];

static int benchmark_count = 0;

static int current_benchmark = 0;

static vec_ptr data;
static data_t combine_result;

/* Used to make sure code doesn't get optimized away */
volatile data_t sink; 

static void setup(int cnt)
{
    int i;
    data = new_vec(cnt);
    /* Initialize array  */
    for (i = 0; i < cnt; i++) 
#if 0
	/* This runs into overflow inefficiencies with FLOAT PROD */
	set_vec_element(data, i, (data_t) (i+1));
#else
    set_vec_element(data, i, (data_t) (random() & 0x1) ? -1 : 1);
#endif
    sink = (data_t) 0;
}

void run(long *junk) {
    benchmarks[current_benchmark].cfunct(data, &combine_result);
}
     
/* Perform test of combination function */
static void run_test(int bench_index, int cnt) {
    double cyc;
    char *description = benchmarks[bench_index].description;
    data_t good_result;
    current_benchmark = bench_index;
    setup(cnt);
    cyc = fcyc(run, NULL);
    benchmarks[bench_index].cfunct(data, &combine_result);
    benchmarks[bench_index].checkfunct(data, &good_result);
    if (combine_result != good_result) {
	printf("Function %s, Should be %d, Got %d\n",
	       description, (int) good_result, (int) combine_result);
    }
    /* print results */
    /* Column Heading */
    printf("%s %s %s:\n", DATA_NAME, OP_NAME, description);
    printf("%.1f cycles, Net: %.2f cycles/element\n", cyc, cyc/cnt);
}

void add_combiner(combiner f, combiner fc, char *description) {
    benchmarks[benchmark_count].cfunct = f;
    benchmarks[benchmark_count].checkfunct = fc;
    benchmarks[benchmark_count].description = description;
    benchmark_count++;
}

int main(int argc, char *argv[])
{
    int i;
    int cnt = CNT;
    if (argc > 1)
	cnt = atoi(argv[1]);
    register_combiners();
    for (i = 0; i < benchmark_count; i++) {
	run_test(i, cnt);
    }
    return 0;
}

