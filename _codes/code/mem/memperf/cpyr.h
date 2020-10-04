#define MAXREMOTE  8192      /* remote mapped segment size */

/* load test (with summing to circumvent compiler optimization) */
int cpy_ls_r(double* a,int l,int mx,int it);

/* const store test */
int cpy_vs_r(double* a,int l,int mx,int it);

/* load copy test (strided load, contiguous store) */
int cpy_lc_r(double* a,double* c,int l,int mx,int it);

/* copy store test (contiguous load, strided store) */ 
/* a,c changed !!!*/
int cpy_cs_r(double* a,double* c,int l,int mx,int it);

