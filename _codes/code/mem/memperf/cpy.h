#ifndef CPY_H
#define CPY_H

/* load test (with summing to circumvent compiler optimization) */
int cpy_ls1(double* a,int l,int mx,int it);
int cpy_ls2(double* a,int l,int mx,int it);
int cpy_ls4(double* a,int l,int mx,int it);
int cpy_ls8(double* a,int l,int mx,int it);

/* const store test */
int cpy_vs1(double* a,int l,int mx,int it);
int cpy_vs2(double* a,int l,int mx,int it);
int cpy_vs4(double* a,int l,int mx,int it);
int cpy_vs8(double* a,int l,int mx,int it);

/* load copy test (strided load, contiguous store) */
int cpy_lc1(double* a,double* c,int l,int mx,int it);
int cpy_lc2(double* a,double* c,int l,int mx,int it);
int cpy_lc4(double* a,double* c,int l,int mx,int it);
int cpy_lc8(double* a,double* c,int l,int mx,int it);

int cpy_cs1mmx(double* a,double* c,int l,int mx,int it); 

/* copy store test (contiguous load, strided store) */
int cpy_cs1(double* a,double* c,int l,int mx,int it);
int cpy_cs2(double* a,double* c,int l,int mx,int it);
int cpy_cs4(double* a,double* c,int l,int mx,int it);
int cpy_cs8(double* a,double* c,int l,int mx,int it);

#endif
