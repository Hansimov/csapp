/** Characterize times for when process is paused for OS events */
/* An "event" is defined to be a period when this process does not
   execute for at least some threshold (e.g., 1000) clock cycles
*/
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "clock.h"
#include "options.h"
#include "load.h"

/* How many OS events can I log? */
#define MAXEVENT 1000

/* Timings of OS events.  All measured in clock cycles */
double tstart[MAXEVENT];
double tend[MAXEVENT];

/* Create log of OS events */
void acquire(int nevent, int threshold)
{
  double oldt;
  int e = 0;
  start_counter();
  oldt = get_counter();
  while (e < nevent) {
    double newt = get_counter();
    if (newt-oldt >= threshold) {
      tstart[e] = oldt;
      tend[e] = newt;
      e++;
    }
    oldt = newt;
  }
}

static double Mhz = 0.0;
double cyc2ms(double c)
{
  if (Mhz == 0)
    Mhz = mhz(1);
  return c/(Mhz*1e3);
}

#define NMIN(x,y) {if ((x)>(y)) (x)=(y);}
#define NMAX(x,y) {if ((x)<(y)) (x)=(y);}

/* How long was active interval i? */
double tactive(int i)
{
  if (i == 0)
    return tstart[i];
  else
    return tstart[i]-tend[i-1];
}

/* How long was inactive interval i? */
double tinactive(int i)
{
  return tend[i]-tstart[i];
}

/* Print results */
void report(int nevent)
{
  int e;
  double tot_activetime = 0.0;
  double min_activetime = 1e20;
  double max_activetime = 0;
  double tot_inactivetime = 0.0;
  double min_inactivetime = 1e20;
  double max_inactivetime = 0;
  double astart = 0.0;
  for (e = 0; e < nevent; e++) {
    /* Time spent by process */
    double at = tactive(e);
    double it = tinactive(e);

    tot_activetime += at;
    NMIN(min_activetime,at);
    NMAX(max_activetime,at);

    tot_inactivetime += it;
    NMIN(min_inactivetime,it);
    NMAX(max_inactivetime,it);

    printf("A%d \tTime %.0f \t(%.2f ms), \tDuration %8.0f \t(%f ms)\n",
	   e, astart, cyc2ms(astart), at, cyc2ms(at));

    astart = tend[e];

    printf("I%d \tTime %.0f \t(%.2f ms), \tDuration %8.0f \t(%f ms)\n",
	   e, tstart[e], cyc2ms(tstart[e]), it, cyc2ms(it));
    fflush(stdout);

  }
  printf("Inactive periods required %f/%.2f milliseconds (%.3f%% of total)\n",
	 cyc2ms(tot_inactivetime), cyc2ms(tend[nevent-1]),
	 100*tot_inactivetime/tend[nevent-1]);

  printf("A times: min=%.0f (%.3f ms), avg=%.0f (%.3f ms), max=%.0f (%.3f ms)\n",
	 min_activetime, cyc2ms(min_activetime),
	 (tot_activetime/nevent), cyc2ms(tot_activetime/nevent),
	 max_activetime, cyc2ms(max_activetime));

  printf("I times: min=%.0f (%.3f ms), avg=%.0f (%.3f ms), max=%.0f (%.3f ms)\n",
	 min_inactivetime, cyc2ms(min_inactivetime),
	 (tot_inactivetime/nevent), cyc2ms(tot_inactivetime/nevent),
	 max_inactivetime, cyc2ms(max_inactivetime));
}

int main(int argc, char *argv[])
{
  int nevent = 100;
  int threshold = 1000;
  int load = 0;
  int freq = 0;
  int sleeptime = 0;
  add_int_option("nevent", &nevent);
  add_int_option("threshold", &threshold);
  add_int_option("load", &load);
  add_int_option("frequency", &freq);
  add_int_option("sleep", &sleeptime);
  parse_options(argc, argv, NULL);
  show_options(stdout);
  if(freq > 0)
    Mhz = freq;
  add_load(load, CPU_LOAD);
  if (sleeptime)
    sleep(sleeptime);
  acquire(nevent, threshold);
  kill_loads();

  report(nevent);
  return 0;
}
     
