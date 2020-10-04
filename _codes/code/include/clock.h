/* Routines for using cycle counter */

/* Start the counter */
void start_counter();

/* Get # cycles since counter started.  Returns 1e20 if detect timing anomaly */
double get_counter();

/* Determine clock rate of processor (using a default sleeptime) */
double mhz(int verbose);

/* Determine clock rate of processor, having more control over accuracy */
double mhz_full(int verbose, int sleeptime);

