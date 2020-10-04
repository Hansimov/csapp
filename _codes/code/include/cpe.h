/* Compute CPE for function */

/* Compute for function that is linear in some parameter cnt */
typedef void (*elem_fun_t)(long int);

/* Different ways of finding samples 
   UNI_SAMPLE: samples uniformly spaced between bias*maxcnt and maxcnt
   RAN_SAMPLE: samples randomly selected between bias*maxcnt and maxcnt
*/

typedef enum {UNI_SAMPLE, RAN_SAMPLE}
  sample_t;

/* Find cpe for function f, which allows cnt up to maxcnt.
   Uses default parameters
*/
double find_cpe(elem_fun_t f, long int maxcnt);

/* Find cpe for function f, which allows cnt up to maxcnt, using
   specified number of sample points.
   If data_file, then print data so that can plot points with Excel
   smethod determines method for generating samples
*/
double find_cpe_full(elem_fun_t f, long int maxcnt, long int samples, FILE *data_file,
		     sample_t smethod, double bias, long int verbose);

/* Find number of cycles taken by function.
   Do this by running number of trials until best two within TOL (2%) of
   each other
*/
double measure_function(elem_fun_t f, long int cnt);
