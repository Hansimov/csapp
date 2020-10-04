/* Find number of cycles used by function that takes 2 arguments */

/* Function to be tested takes two integer arguments */
typedef int (*test_funct)(int, int); 

/* Compute time used by function f  */
double fcyc2(test_funct f, int param1, int param2, int clear_cache);

/*********  These routines are used to help with the analysis *********/

/*
Parameters:
  k:  How many samples must be within epsilon for convergence 
  epsilon: What is tolerance 
  maxsamples: How many samples until give up?
*/

/* Full version of fcyc with control over parameters */
double fcyc2_full(test_funct f, int param1, int param2, int clear_cache,
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
double fcyc2_full_tod(test_funct f, int param1, int param2, int clear_cache,
		     int k, double epsilon, int maxsamples, int compensate);

double fcyc2_tod(test_funct f, int param1, int param2, int clear_cache);
