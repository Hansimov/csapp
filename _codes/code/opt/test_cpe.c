#include <stdio.h>
#include <stdlib.h>
#include "cpe.h"

/* Test of CPE code */
#define ERRLIM 10
#define MAXCNT (1 << 18)
static float data[3*MAXCNT];
static float *a, *b, *c, *p;

static void setup(long len)
{
    a = data;
    b = a+len;
    c = b+len;
    p = b;
}

/* $begin psum */
/* Compute prefix sum of vector a */
void psum1(float a[], float p[], long n)
{
    long i;
    p[0] = a[0];
    for (i = 1; i < n; i++)
	p[i] = p[i-1] + a[i];
}

void psum2(float a[], float p[], long n)
{
    long i;
    p[0] = a[0];
    for (i = 1; i < n-1; i+=2) {
	float mid_val = p[i-1] + a[i];
	p[i]    = mid_val;
	p[i+1]  = mid_val + a[i+1];
    }
    /* For even n, finish remaining element */
    if (i < n)
	p[i] = p[i-1] + a[i];
}
/* $end psum */

/* $begin psum1a */
void psum1a(float a[], float p[], long n)
{
    long i;
    /* last_val holds p[i-1]; val holds p[i] */
    float last_val, val;
    last_val = p[0] = a[0];
    for (i = 1; i < n; i++) {
	val  = last_val + a[i];
	p[i] = val;
	last_val = val;
    }
}
/* $end psum1a */

void tpsum1(long cnt)
{
    psum1(a, p, (long) cnt);
}

void tpsum2(long cnt)
{
    psum2(a, p, (long) cnt);
}

void tpsum1a(long cnt)
{
    psum1a(a, p, (long) cnt);
}


void check(elem_fun_t tpsumX, long cnt) {
    long i;
    long errcnt = 0;
    for (i = 0; i < cnt; i++) {
	a[i] = (float) (random() % 1000);
    }
    p = b;
    tpsum1(cnt);
    p = c;
    tpsumX(cnt);
    for (i = 0; i < cnt; i++) {
	if (b[i] != c[i]) {
	    printf("Ref: i = %ld, b[i-1] = %.0f, a[i] = %.0f, b[i] = %.0f.  Got b[i-1] = %.0f, b[i] = %.0f\n",
		   i, c[i-1], a[i], c[i], b[i-1], b[i]);
	    errcnt++;
	    if (errcnt > ERRLIM) {
		printf("Too many errors.  Exiting\n");
		exit(1);
	    }
	}
    }
}

static void usage(char *name)
{
    printf("Usage: %s [-q] [-u] [-a][-r] [-l CNT] [-n REPS] [-s SAMPLES] [-b BIAS] [-k SEED]\n", name);
    printf("\t-q\tQuiet mode\n");
    printf("\t-u\tUse unrolled code\n");
    printf("\t-a\tUse alternate code\n");
    printf("\t-r\tUse random sampling\n");
    printf("\t-l len\tSet vector length\n");
    printf("\t-n reps\tSet number of repetitions\n");
    printf("\t-s samples\tSet number of samples\n");
    printf("\t-b bias\tSet bias (between 0 & 1.0) determining sample value\n");
    printf("\t-k seed\tSet seed for rng\n");
    exit(0);
}

int main(int argc, char *argv[])
{
    elem_fun_t f = tpsum1;
    int cnt = 1024;
    int i;
    int samples = 8;
    double bias = 0.0;
    int reps = 1;
    int seed = 31415;
    int verbose = 2;
    sample_t smethod = UNI_SAMPLE;
    for (i = 1; i < argc; i++) {
	if (*argv[i] == '-')
	    switch(argv[i][1]) {
	    case 'u':
		f = tpsum2;
		break;
	    case 'a':
		f = tpsum1a;
		break;
	    case 'r':
		smethod = RAN_SAMPLE;
		break;
	    case 'q':
		verbose = 0;
		break;
	    case 'l':
		i++;
		if (i >= argc)
		    usage(argv[0]);
		cnt = atoi(argv[i]);
		if (cnt <= 0 || cnt > MAXCNT)
		    usage(argv[0]);
		break;
	    case 'n':
		i++;
		if (i >= argc)
		    usage(argv[0]);
		reps = atoi(argv[i]);
		if (reps < 0)
		    usage(argv[0]);
		break;
	    case 'k':
		i++;
		if (i >= argc)
		    usage(argv[0]);
		seed = atoi(argv[i]);
		break;
	    case 'b':
		i++;
		if (i >= argc)
		    usage(argv[0]);
		bias = atof(argv[i]);
		if (bias < 0 || bias > 1.0)
		    usage(argv[0]);
		break;
	    case 's':
		i++;
		if (i >= argc)
		    usage(argv[0]);
		samples = atoi(argv[i]);
		if (samples <= 0)
		    usage(argv[0]);
		break;
	    default:
		usage(argv[0]);
		break;
	    }
    }
    setup(cnt);
    if (f != tpsum1)
	check(f, cnt);
    if (samples == 1) {
	double t = measure_function(f, cnt);
	printf("Cycles = %.2f, CPE = %.2f\n",
	       t, t/cnt);
    } else {
	double cpe_full, cpe_def;
	while (reps--) {
	    srandom(seed);
	    cpe_full = find_cpe_full(f, cnt, samples, stdout, smethod, bias, verbose);
	    printf("Full cpe = %.2f\n", cpe_full);
	}
	cpe_def = find_cpe(f, cnt);
	printf("Default cpe = %.2f\n", cpe_def);
    }
    return 0;
}
