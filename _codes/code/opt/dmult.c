/* Benchmark multiplication of set of numbers */

#include <stdio.h>
#include <stdlib.h>
#include "clock.h"


/* List of numbers */
typedef struct ELE *list_ptr;

typedef struct ELE {
    double val;
    list_ptr next;
} list_ele;


/* The global data */
/* How many data sets ? */
#define TCNT 5
double *array_data[TCNT];
list_ptr list_data[TCNT];

/* Initialize data */
int global_cnt = 10000;
/* Correct answer */
double answer[TCNT];

void init(int cnt) {
    /* Create data that is random sequence of +1 and -1 */
    global_cnt = cnt;
    int t;
    for (t = 0; t < TCNT; t++) {
	answer[t] = 1.0;
	int i;
	array_data[t] = calloc(cnt, sizeof(double));
	list_ele *list_nodes = (list_ele *) calloc(cnt, sizeof(list_ele));
	list_data[t] = NULL;
	for (i = 0; i < cnt; i++) {
	    double val = random() & 0x1 ? -1.0 : 1.0;
	    array_data[t][i] = val;
	    list_ptr head = &list_nodes[i];
	    head->val = val;
	    head->next = list_data[t];
	    list_data[t] = head;
	    answer[t] *= val;
	}
    }
}

char list_prod_descr[] = "Traversing Singly-Linked List";
double list_prod(list_ptr ls)
{
    double val = 1.0;
    while (ls) {
	val *= ls->val;
	ls = ls->next;
    }
    return val;
}

double wrap_list_prod(int t)
{
    return list_prod(list_data[t]);
}

char array_u1p1S_prod_descr[] = "Array.  Unroll 1x.  Parallel 1x, Standard associativity";
double array_u1p1S_prod(double *array, int cnt) {
    int i;
    double val = 1.0;
    for (i = 0; i < cnt; i++) {
	val *= array[i];
    }
    return val;
}

double wrap_array_u1p1S_prod(int t)
{
    return array_u1p1S_prod(array_data[t], global_cnt);
}


char array_u5p5S_prod_descr[] = "Array.  Unroll 5x.  Parallel 5x, Standard associativity";
double array_u5p5S_prod(double *array, int cnt) {
    int i;
    double val0 = 1.0;
    double val1 = 1.0;
    double val2 = 1.0;
    double val3 = 1.0;
    double val4 = 1.0;
    for (i = 0; i <= cnt-5; i+=5) {
	val0 *= array[i];
	val1 *= array[i+1];
	val2 *= array[i+2];
	val3 *= array[i+3];
	val4 *= array[i+4];
    }
    for (; i < cnt; i++)
	val0 *= array[i];
    return val0 * val1 * val2 * val3 * val4;
}

double wrap_array_u5p5S_prod(int t)
{
    return array_u5p5S_prod(array_data[t], global_cnt);
}

char array_u5p1S_prod_descr[] = "Array.  Unroll 5x.  Parallel 1x, Standard associativity";
double array_u5p1S_prod(double *array, int cnt) {
    int i;
    double val = 1.0;
    for (i = 0; i <= cnt-5; i+=5) {
	val = val * array[i] * array[i+1] * array[i+2] * array[i+3] * array[i+4];
    }
    for (; i < cnt; i++)
	val *= array[i];
    return val;
}

double wrap_array_u5p1S_prod(int t)
{
    return array_u5p1S_prod(array_data[t], global_cnt);
}


char array_u5p1A_prod_descr[] = "Array.  Unroll 5x.  Parallel 1x, Modified associativity";
double array_u5p1A_prod(double *array, int cnt) {
    int i;
    double val = 1.0;
    for (i = 0; i <= cnt-5; i+=5) {
	val = val * ((array[i] * array[i+1]) * (array[i+2] * array[i+3] * array[i+4]));
    }
    for (; i < cnt; i++)
	val *= array[i];
    return val;
}

double wrap_array_u5p1A_prod(int t)
{
    return array_u5p1A_prod(array_data[t], global_cnt);
}


#define VSIZE 2
typedef double vec_t __attribute__ ((vector_size(16)));
typedef union {
    vec_t v;
    double d[VSIZE];
} pack_t;

#define ALIGN (VSIZE*sizeof(double))
#define ALIGN_INIT 1

char sse_u1p1_prod_descr[] = "2x SSE.  Unroll 1x.  Parallel 1x.";

double sse_u1p1_prod(double *array, int cnt)
{
    pack_t xfer;
    vec_t accum;
    double result = 1.0;
    double *data = array;
    /* Initialize accumulators */
    int i;
    for (i = 0; i < VSIZE; i++)
	xfer.d[i] = 1.0;
    accum = xfer.v;

    /* Single step until meet alignment requirements */
    while (((long) data) % ALIGN && cnt) {
	result = result * *data++;
	cnt--;
    }
    /* Parallel accumulation with SSE */
    while (cnt >= VSIZE) {
	vec_t chunk = *((vec_t *) data);
	accum = accum * chunk;
	data += VSIZE;
	cnt -= VSIZE;
    }
    /* Single step until end */
    while (cnt) {
	result = result * *data++;
	cnt--;
    }
    xfer.v = accum;
    for (i = 0; i < VSIZE; i++)
	result = result * xfer.d[i];
    return result;
}

double wrap_sse_u1p1_prod(int t)
{
    return sse_u1p1_prod(array_data[t], global_cnt);
}


char sse_u5p5_prod_descr[] = "2x SSE.  Unroll 5x.  Parallel 5x.";

double sse_u5p5_prod(double *array, int cnt)
{
    pack_t xfer;
    vec_t accum0, accum1, accum2, accum3, accum4;
    double result = 1.0;
    double *data = array;
    /* Initialize accumulators */
    int i;
    for (i = 0; i < VSIZE; i++)
	xfer.d[i] = 1.0;
    accum0 = accum1 = accum2 = accum3 = accum4 = xfer.v;

    /* Single step until meet alignment requirements */
    while (((long) data) % ALIGN && cnt) {
	result = result * *data++;
	cnt--;
    }
    /* Parallel accumulation with SSE */
    while (cnt >= VSIZE*5) {
	vec_t chunk0 = *((vec_t *) data);
	accum0 *= chunk0;
	vec_t chunk1 = *((vec_t *) (data+VSIZE));
	accum1 *= chunk1;
	vec_t chunk2 = *((vec_t *) (data+2*VSIZE));
	accum2 *= chunk2;
	vec_t chunk3 = *((vec_t *) (data+3*VSIZE));
	accum3 *= chunk3;
	vec_t chunk4 = *((vec_t *) (data+4*VSIZE));
	accum4 *= chunk4;
	data += 5*VSIZE;
	cnt -= 5*VSIZE;
    }
    /* Single step until end */
    while (cnt) {
	result = result * *data++;
	cnt--;
    }
    xfer.v = (accum0 * accum1) * (accum2 * accum3 * accum4);
    for (i = 0; i < VSIZE; i++)
	result = result * xfer.d[i];
    return result;
}

double wrap_sse_u5p5_prod(int t)
{
    return sse_u5p5_prod(array_data[t], global_cnt);
}

char sse_u8p8_prod_descr[] = "2x SSE.  Unroll 8x.  Parallel 8x.";

double sse_u8p8_prod(double *array, int cnt)
{
    pack_t xfer;
    vec_t accum0, accum1, accum2, accum3, accum4, accum5, accum6, accum7;
    double result = 1.0;
    double *data = array;
    /* Initialize accumulators */
    int i;
    for (i = 0; i < VSIZE; i++)
	xfer.d[i] = 1.0;
    accum0 = accum1 = accum2 = accum3 = accum4 = accum5 = accum6 = accum7 = xfer.v;

    /* Single step until meet alignment requirements */
    while (((long) data) % ALIGN && cnt) {
	result = result * *data++;
	cnt--;
    }
    /* Parallel accumulation with SSE */
    while (cnt >= VSIZE*8) {
	vec_t chunk0 = *((vec_t *) data);
	accum0 *= chunk0;
	vec_t chunk1 = *((vec_t *) (data+VSIZE));
	accum1 *= chunk1;
	vec_t chunk2 = *((vec_t *) (data+2*VSIZE));
	accum2 *= chunk2;
	vec_t chunk3 = *((vec_t *) (data+3*VSIZE));
	accum3 *= chunk3;
	vec_t chunk4 = *((vec_t *) (data+4*VSIZE));
	accum4 *= chunk4;
	vec_t chunk5 = *((vec_t *) (data+5*VSIZE));
	accum5 *= chunk5;
	vec_t chunk6 = *((vec_t *) (data+6*VSIZE));
	accum6 *= chunk6;
	vec_t chunk7 = *((vec_t *) (data+7*VSIZE));
	accum7 *= chunk7;
	data += 8*VSIZE;
	cnt -= 8*VSIZE;
    }
    /* Single step until end */
    while (cnt) {
	result = result * *data++;
	cnt--;
    }
    xfer.v = ((accum0 * accum1) * (accum2 * accum3)) * ((accum4 * accum5) * (accum6 * accum7));
    for (i = 0; i < VSIZE; i++)
	result = result * xfer.d[i];
    return result;
}

double wrap_sse_u8p8_prod(int t)
{
    return sse_u8p8_prod(array_data[t], global_cnt);
}

typedef double (*dfun)(int);

void tester(dfun fun, char *name, char *descr) {
    int t;
    double cyc, nsecs, ghz;
    for (t = TCNT-1; t >= 0; t--) {
	double val = fun(t);
	if (val != answer[t]) {
	    printf("Function '%s' Data Error. Test %d", name, t);
	    printf(", Expected %.1f.  Got %.1f\n", answer[t], val);
	}
    }
    /* Now do timing run with first data set */
    start_counter();
    fun(0);
    cyc = get_counter();
    ghz = mhz(0)/1000.0;
    nsecs = cyc/ghz;
    printf("Function '%s' (%s) %.0f cycles, %.0f nsecs, %.2f cycles/element\n",
	   name, descr, cyc, nsecs, cyc/global_cnt);
}

typedef struct {
    dfun fun;
    char *name;
    char *descr;
} b_ele;

b_ele tests[] = {

    {wrap_list_prod, "list", list_prod_descr},
    {wrap_array_u1p1S_prod, "array_u1p1S", array_u1p1S_prod_descr}, 
    {wrap_array_u5p5S_prod, "array_u5p5S", array_u5p5S_prod_descr},
    {wrap_array_u5p1S_prod, "array_u5p1S", array_u5p1S_prod_descr},
    {wrap_array_u5p1A_prod, "array_u5p1A", array_u5p1A_prod_descr},
    {wrap_sse_u1p1_prod, "sse_u1p1", sse_u1p1_prod_descr},
    {wrap_sse_u5p5_prod, "sse_u5p5", sse_u5p5_prod_descr},
    {wrap_sse_u8p8_prod, "sse_u8p8", sse_u8p8_prod_descr},
    {NULL, NULL, NULL}
};

void run(int cnt) {
    init(cnt);
    printf("Count = %d, Ghz = %.2f\n", cnt, mhz(0)/1000.0);
    int i;
    for (i = 0; tests[i].fun != NULL; i++) {
	tester(tests[i].fun, tests[i].name, tests[i].descr);
    }
}

int main(int argc, char *argv[]) {
    int cnt = 20000;
    if (argc > 1)
	cnt = atoi(argv[1]);
    run(cnt);
    return 0;
}


