/* Test performance of absolute value computations */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "clock.h"

/* Data arrays */
#define MAXLEN (1L<<20)

typedef long (*afun)(long, long);

/* Functions being tested */
long absdiff(long a, long b);
long absdiff_asm(long a, long b);

/* All 1's & all 0's */
long hi_lo_a[MAXLEN], hi_lo_b[MAXLEN];

/* Alternating 1's and 0's.  Out of phase */
long alt_a[MAXLEN], alt_b[MAXLEN];

/* Random */
long ran_a[MAXLEN], ran_b[MAXLEN];

static void setup() {
    size_t i;
    for (i = 0; i < MAXLEN; i++) {
	hi_lo_a[i] = 1; hi_lo_b[i] = 0;
	alt_a[i] = i % 2; alt_b[i] = 1-alt_a[i];
	ran_a[i] = random() % 2; ran_b[i] = 1-ran_a[i];
#if 0
	if (i < 10) {
	    printf("i = %ld.  %ld, %ld, %ld, %ld, %ld, %ld\n",
		   i, hi_lo_a[i], hi_lo_b[i], alt_a[i], alt_b[i], ran_a[i], ran_b[i]);
	}
#endif
    }
}

long ad(long a, long b) {
    return a < b ? b-a : a-b;
}

volatile long gsum = 0;

double addrun(size_t n) {
    size_t i;
    long a = random();
    long sum = 0;
    start_counter();
    for (i = 0; i < n; i++)
	sum += a;
    double t = get_counter()/n;
    gsum += sum;
    return t;
}

double mulrun(size_t n) {
    size_t i;
    long a = random();
    long prod = 1;
    start_counter();
    for (i = 0; i < n; i++)
	prod *= a;
    double t = get_counter()/n;
    gsum += prod;
    return t;
}

static double run(afun f, long *avals, long *bvals, size_t n) {
    size_t i;
    long sum = 0;
    /* Make pass over data */
    for (i = 0; i < n; i++) {
	long a = avals[i];
	long b = bvals[i];
	long s = ad(a, b);
	sum += s;
#if 0
	if (i < 10) {
	    printf("a = %ld, b = %ld, ad = %ld\n", a, b, s);
	}
#endif
    }
    gsum += sum;
    /* Now do real run */
    start_counter();
    for (i = 0; i < n; i++) {
	sum += f(avals[i], bvals[i]);
    }
    double t = get_counter()/n;
    gsum += sum;
    return t;
}

int main(int argc, char *argv[]) {
    size_t n = MAXLEN;
    if (argc > 1)
	n = atoi(argv[1]);
    setup();
    double t, tgood, tavg, thilo, tlohi;
    double tcmov1, tcmov2, tcmov3, tcmov4;
    t = addrun(n);
    printf("Serial addition. %.2f cycles/element\n", t);
    t = mulrun(n);
    printf("Serial multiplication. %.2f cycles/element\n", t);
    t = run(absdiff, hi_lo_a, hi_lo_b, n);
    printf("Function: absdiff.     Data hi/lo.   Length %lu.  Cycles/element %.2f\n",
	   n, t);
    tcmov1 = t;
    t = run(absdiff_asm, hi_lo_a, hi_lo_b, n);
    printf("Function: absdiff_asm. Data hi/lo.   Length %lu.  Cycles/element %.2f\n",
	   n, t);
    thilo = t;

    t = run(absdiff, hi_lo_b, hi_lo_a, n);
    printf("Function: absdiff.     Data lo/hi.   Length %lu.  Cycles/element %.2f\n",
	   n, t);
    tcmov2 = t;
    t = run(absdiff_asm, hi_lo_b, hi_lo_a, n);
    printf("Function: absdiff_asm. Data lo/hi.   Length %lu.  Cycles/element %.2f\n",
	   n, t);
    tlohi = t;

    t = run(absdiff, alt_a, alt_b, n);
    printf("Function: absdiff.     Data alt.     Length %lu.  Cycles/element %.2f\n",
	   n, t);
    tcmov3 = t;
    t = run(absdiff_asm, alt_a, alt_b, n);
    printf("Function: absdiff_asm. Data alt.     Length %lu.  Cycles/element %.2f\n",
	   n, t);
    tgood = t;

    printf("Avg(%.2f, %.2f) = %.2f.  Compare to %.2f\n",
	   thilo, tlohi, (thilo+tlohi)/2.0,tgood);

    t = run(absdiff, ran_a, ran_b, n);
    printf("Function: absdiff.     Data random.  Length %lu.  Cycles/element %.2f\n",
	   n, t);
    tcmov4 = t;
    t = run(absdiff_asm, ran_a, ran_b, n);
    printf("Function: absdiff_asm. Data random.  Length %lu.  Cycles/element %.2f\n",
	   n, t);
    tavg = t;
    printf("cmov times: %.2f, %.2f, %.2f, %.2f.  Avg = %.2f\n",
	   tcmov1, tcmov2, tcmov3, tcmov4, (tcmov1+tcmov2+tcmov3+tcmov4)/4.0);
    printf("Penalty = 2.0*(%.2f-%.2f) = %.2f\n",
	   tavg, tgood, 2.0*(tavg - tgood));
    return 0;
}

