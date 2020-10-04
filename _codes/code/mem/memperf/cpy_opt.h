#ifndef CPY_OPT_H
#define CPY_OPT_H

/* load test (with summing to be fair against non_optimized code */
int cpy_lsopt(double* a,int l,int mx,int it);

/* const store test */
int cpy_vsopt(double* a,int l,int mx,int it);

/* load copy test (strided load, contiguous store) */
int cpy_lcopt(double* a,double* c,int l,int mx,int it);

/* copy store test (contiguous load, strided store) */
int cpy_csopt(double* a,double* c,int l,int mx,int it);

#endif
