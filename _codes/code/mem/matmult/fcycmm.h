/* Find number of cycles used by function */

/* Function to be tested takes single integer argument */
typedef void (*test_funct)(array, array, array, int); 

/* Compute time used by function f.  Optionally clear cache
   before each measurement */
double fcyc(test_funct f, int param, int clear_cache);

/*********  These routines are used to help with the analysis *********/

/*
Parameters:
  k:  How many samples must be within epsilon for convergence 
  epsilon: What is tolerance 
  maxsamples: How many samples until give up?
*/

/* Full version of fcyc with control over parameters */
double fcyc_full(test_funct f, int param, int clear_cache,
		 int k, double epsilon, int maxsamples, int compensate);

/* Get current minimum */
double get_min();

/* What is convergence status for k minimum measurements within epsilon
   Returns 0 if not converged, #samples if converged, and -1 if can't
   reach convergence
*/

int has_converged(int k, double epsilon, int maxsamples);

/* What is error of current measurement */
double err(int k);

/*************  Try other clocking methods *****************/

/* Full version that uses the time of day clock */
double fcyc_full_tod(test_funct f, int param, int clear_cache,
		     int k, double epsilon, int maxsamples, int compensate);

double fcyc_tod(test_funct f, int param, int clear_cache);
