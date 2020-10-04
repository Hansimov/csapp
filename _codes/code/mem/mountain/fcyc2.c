/* Compute time used by a function f that takes two integer args */
#include <stdlib.h>
#include <sys/times.h>
#include <stdio.h>

#include "clock.h"
#include "fcyc2.h"

static double *values = NULL;
int samplecount = 0;

#define KEEP_VALS 1
#define KEEP_SAMPLES 1

#if KEEP_SAMPLES
double *samples = NULL;
#endif

/* Start new sampling process */
static void init_sampler(int k, int maxsamples)
{
  if (values)
    free(values);
  values = calloc(k, sizeof(double));
#if KEEP_SAMPLES
  if (samples)
    free(samples);
  /* Allocate extra for wraparound analysis */
  samples = calloc(maxsamples+k, sizeof(double));
#endif
  samplecount = 0;
}

/* Add new sample.  */
void add_sample(double val, int k)
{
  int pos = 0;
  if (samplecount < k) {
    pos = samplecount;
    values[pos] = val;
  } else if (val < values[k-1]) {
    pos = k-1;
    values[pos] = val;
  }
#if KEEP_SAMPLES
  samples[samplecount] = val;
#endif
  samplecount++;
  /* Insertion sort */
  while (pos > 0 && values[pos-1] > values[pos]) {
    double temp = values[pos-1];
    values[pos-1] = values[pos];
    values[pos] = temp;
    pos--;
  }
}

/* Get current minimum */
double get_min()
{
  return values[0];
}

/* What is relative error for kth smallest sample */
double err(int k)
{
  if (samplecount < k)
    return 1000.0;
  return (values[k-1] - values[0])/values[0];
}

/* Have k minimum measurements converged within epsilon? */
int has_converged(int k_arg, double epsilon_arg, int maxsamples)
{
  if ((samplecount >= k_arg) &&
      ((1 + epsilon_arg)*values[0] >= values[k_arg-1]))
    return samplecount;
  if ((samplecount >= maxsamples))
    return -1;
  return 0;
}

/* Code to clear cache */
/* Pentium III has 512K L2 cache, which is 128K ints */
#define ASIZE (1 << 17)
/* Cache block size is 32 bytes */
#define STRIDE 8
static int stuff[ASIZE];
static int sink;

static void clear()
{
  int x = sink;
  int i;
  for (i = 0; i < ASIZE; i += STRIDE)
    x += stuff[i];
  sink = x;
}

double fcyc2_full(test_funct f, int param1, int param2, int clear_cache,
		 int k, double epsilon, int maxsamples, int compensate) 
{
  double result;
  init_sampler(k, maxsamples);
  if (compensate) {
    do {
      double cyc;
      if (clear_cache)
	clear();
      f(param1, param2);   /* warm cache */
      start_comp_counter();
      f(param1, param2);
      cyc = get_comp_counter();
      add_sample(cyc, k);
    } while (!has_converged(k, epsilon, maxsamples) && samplecount < maxsamples);
  } else {
    do {
      double cyc;
      if (clear_cache)
	clear();
      f(param1, param2); /* warm cache */
      start_counter();
      f(param1, param2);
      cyc = get_counter();
      add_sample(cyc, k);
    } while (!has_converged(k, epsilon, maxsamples) && samplecount < maxsamples);
  }
#ifdef DEBUG
  {
    int i;
    printf(" %d smallest values: [", k);
    for (i = 0; i < k; i++)
      printf("%.0f%s", values[i], i==k-1 ? "]\n" : ", ");
  }
#endif
  result = values[0];
#if !KEEP_VALS
  free(values); 
  values = NULL;
#endif
  return result;  
}

double fcyc2(test_funct f, int param1, int param2, int clear_cache)
{
  return fcyc2_full(f, param1, param2, clear_cache, 3, 0.01, 500, 0);
}


/******************* Version that uses gettimeofday *************/

static double Mhz = 0.0;

#include <sys/time.h>

static struct timeval tstart;

/* Record current time */
void start_counter_tod()
{
  if (Mhz == 0)
    Mhz = mhz_full(0, 10);
  gettimeofday(&tstart, NULL);
}

/* Get number of seconds since last call to start_timer */
double get_counter_tod()
{
  struct timeval tfinish;
  long sec, usec;
  gettimeofday(&tfinish, NULL);
  sec = tfinish.tv_sec - tstart.tv_sec;
  usec = tfinish.tv_usec - tstart.tv_usec;
  return (1e6 * sec + usec)*Mhz;
}

/** Special counters that compensate for timer interrupt overhead */

static double cyc_per_tick = 0.0;

#define NEVENT 100
#define THRESHOLD 1000
#define RECORDTHRESH 3000

/* Attempt to see how much time is used by timer interrupt */
static void callibrate(int verbose)
{
  double oldt;
  struct tms t;
  clock_t oldc;
  int e = 0;
  times(&t);
  oldc = t.tms_utime;
  start_counter_tod();
  oldt = get_counter_tod();
  while (e <NEVENT) {
    double newt = get_counter_tod();
    if (newt-oldt >= THRESHOLD) {
      clock_t newc;
      times(&t);
      newc = t.tms_utime;
      if (newc > oldc) {
	double cpt = (newt-oldt)/(newc-oldc);
	if ((cyc_per_tick == 0.0 || cyc_per_tick > cpt) && cpt > RECORDTHRESH)
	  cyc_per_tick = cpt;
	/*
	if (verbose)
	  printf("Saw event lasting %.0f cycles and %d ticks.  Ratio = %f\n",
		 newt-oldt, (int) (newc-oldc), cpt);
	*/
	e++;
	oldc = newc;
      }
      oldt = newt;
    }
  }
  if (verbose)
    printf("Setting cyc_per_tick to %f\n", cyc_per_tick);
}

static clock_t start_tick = 0;

void start_comp_counter_tod() {
  struct tms t;
  if (cyc_per_tick == 0.0)
    callibrate(0);
  times(&t);
  start_tick = t.tms_utime;
  start_counter_tod();
}

double get_comp_counter_tod() {
  double time = get_counter_tod();
  double ctime;
  struct tms t;
  clock_t ticks;
  times(&t);
  ticks = t.tms_utime - start_tick;
  ctime = time - ticks*cyc_per_tick;
  /*
  printf("Measured %.0f cycles.  Ticks = %d.  Corrected %.0f cycles\n",
	 time, (int) ticks, ctime);
  */
  return ctime;
}


double fcyc2_full_tod(test_funct f, int param1, int param2, int clear_cache,
		 int k, double epsilon, int maxsamples, int compensate) 
{
  double result;
  init_sampler(k, maxsamples);
  if (compensate) {
    do {
      double cyc;
      if (clear_cache)
	clear();
      start_comp_counter_tod();
      f(param1, param2);
      cyc = get_comp_counter_tod();
      add_sample(cyc, k);
    } while (!has_converged(k, epsilon, maxsamples) && samplecount < maxsamples);
  } else {
    do {
      double cyc;
      if (clear_cache)
	clear();
      start_counter_tod();
      f(param1, param2);
      cyc = get_counter_tod();
      add_sample(cyc, k);
    } while (!has_converged(k, epsilon, maxsamples) && samplecount < maxsamples);
  }
#ifdef DEBUG
  {
    int i;
    printf(" %d smallest values: [", k);
    for (i = 0; i < k; i++)
      printf("%.0f%s", values[i], i==k-1 ? "]\n" : ", ");
  }
#endif
  result = values[0];
#if !KEEP_VALS
  free(values); 
  values = NULL;
#endif
  return result;  
}

double fcyc2_tod(test_funct f, int param1, int param2, int clear_cache)
{
  return fcyc2_full_tod(f, param1, param2, clear_cache, 3, 0.01, 20, 0);
}






