/* clock.c
 * Retrofitted to use real-time timers and to get clock information from /proc/cpuinfo
 * (C) R. E. Bryant, 2011
 *
 */

/* Choice to use cpu_gettime call or Intel time stamp counter directly */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "clock.h"

#define CLOCK_VERSION CLOCK_REALTIME

int gverbose = 1;

/* Keep track of clock speed */
double cpu_ghz = 0.0;

/* Get megahertz from /etc/proc */
#define MAXBUF 512


volatile int incr = 1;
volatile int val = 0;

/* Induce load on processor to have it set clock rate to maximum */
/* How many steps to run? */
#define STEP_CNT (1<<30)

void burn_cpu() {
    int i;
    val = 0;
    incr = random() & 0x7;
    for (i = 0; i < STEP_CNT; i++)
	val *= incr;
}

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

/*
  02/22/2010.  Attempt to determine processor clock rate even when
  speed step is in use.  Keep running CPU-intensive task until
  determine maximum clock rate.
*/
double mhz(int verbose) {
    double maxval = 0.0;
    /* Temporary fix to specific machine */
    double val = core_mhz(verbose);
    /* This was the new method */
    while (val != maxval) {
	burn_cpu();
	if (val > maxval)
	    maxval = val;
	val = core_mhz(verbose);
    }
    return val;
}

/* Simulate cycle counters by using nanosecond timers and then converting to clock cycles */
struct timespec last_time;

void start_counter()
{
    if (cpu_ghz == 0.0) {
	mhz(gverbose);
    }
    if (clock_gettime(CLOCK_VERSION, &last_time) != 0) {
	fprintf(stderr, "Couldn't get time\n");
	exit(1);
    }
}

double get_counter()
{
    struct timespec new_time;
    double delta_nsecs = 0.0;
    if (clock_gettime(CLOCK_VERSION, &new_time) != 0) {
	fprintf(stderr, "Couldn't get time\n");
	exit(1);
    }
    delta_nsecs = 1e9 * (new_time.tv_sec - last_time.tv_sec) + (new_time.tv_nsec - last_time.tv_nsec);
    return delta_nsecs * cpu_ghz;
}

double mhz_full(int verbose, int sleeptime) {
    return mhz(verbose);
}

void start_comp_counter()
{
    start_counter();
}

double get_comp_counter()
{
    return get_counter();
}

