/* clock.c
 * Retrofitted to use thread-specific timers
 * and to get clock information from /proc/cpuinfo
 * (C) R. E. Bryant, 2010
 *
 */

/* When this constant is not defined, uses time stamp counter */
#define USE_POSIX 0

/* Choice to use cpu_gettime call or Intel time stamp counter directly */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifdef USE_POSIX
#include <time.h>
#endif
#include "clock.h"

int gverbose = 1;

/* Keep track of clock speed */
double cpu_ghz = 0.0;

/* Get megahertz from /etc/proc */
#define MAXBUF 512


double core_mhz(int verbose) {
    static char buf[MAXBUF];
    FILE *fp = fopen("/proc/cpuinfo", "r");
    cpu_ghz = 0.0;

    if (!fp) {
	fprintf(stderr, "Can't open /proc/cpuinfo to get clock information\n");
	cpu_ghz = 1.0;
	return cpu_ghz * 1000.0;
    }
    while (fgets(buf, MAXBUF, fp)) {
	if (strstr(buf, "cpu MHz")) {
	    double cpu_mhz = 0.0;
	    sscanf(buf, "cpu MHz\t: %lf", &cpu_mhz);
	    cpu_ghz = cpu_mhz / 1000.0;
	    break;
	}
    }
    fclose(fp);
    if (cpu_ghz == 0.0) {
	fprintf(stderr, "Can't open /proc/cpuinfo to get clock information\n");
	cpu_ghz = 1.0;
	return cpu_ghz * 1000.0;
    }
    if (verbose) {
	printf("Processor Clock Rate ~= %.4f GHz (extracted from file)\n", cpu_ghz);
    }
    return cpu_ghz * 1000;
}

double mhz(int verbose) {
    double val = core_mhz(verbose);
    return val;
}

#ifdef USE_POSIX
/* Simulate counters by using nanosecond timers and then converting to clock cycles */
struct timespec last_time;

/* Use thread clock */
#define CLKT CLOCK_THREAD_CPUTIME_ID

void start_counter()
{
    if (cpu_ghz == 0.0)
	mhz(gverbose);
    if (clock_gettime(CLKT, &last_time) != 0) {
	fprintf(stderr, "Couldn't get time\n");
	exit(1);
    }
}

double get_counter()
{
    struct timespec new_time;
    double delta_nsecs = 0.0;
    if (clock_gettime(CLKT, &new_time) != 0) {
	fprintf(stderr, "Couldn't get time\n");
	exit(1);
    }
    delta_nsecs = 1e9 * (new_time.tv_sec - last_time.tv_sec) + (new_time.tv_nsec - last_time.tv_nsec);
    return delta_nsecs * cpu_ghz;
}

#else /* !USE_POSIX */

/* Use x86 cycle counter */

/* Initialize the cycle counter */
static unsigned cyc_hi = 0;
static unsigned cyc_lo = 0;

/* Set *hi and *lo to the high and low order bits  of the cycle counter.  
   Implementation requires assembly code to use the rdtsc instruction. */
void access_counter(unsigned *hi, unsigned *lo)
{
    asm("rdtsc; movl %%edx,%0; movl %%eax,%1"   /* Read cycle counter */
	: "=r" (*hi), "=r" (*lo)                /* and move results to */
	: /* No input */                        /* the two outputs */
	: "%edx", "%eax");
}


/* Record the current value of the cycle counter. */
void start_counter()
{
    access_counter(&cyc_hi, &cyc_lo);
}

/* Return the number of cycles since the last call to start_counter. */
double get_counter()
{
    unsigned ncyc_hi, ncyc_lo;
    unsigned hi, lo, borrow;
    double result;

    /* Get cycle counter */
    access_counter(&ncyc_hi, &ncyc_lo);

    /* Do double precision subtraction */
    lo = ncyc_lo - cyc_lo;
    borrow = cyc_lo > ncyc_lo;
    hi = ncyc_hi - cyc_hi - borrow;
    result = (double) hi * (1 << 30) * 4 + lo;
    return result;
}
#endif /* USE_POSIX */

