#include <stdlib.h>

/* $begin 300-swapadd-c */
long swap_add(long *xp, long *yp)  
{ 
    long x = *xp; 
    long y = *yp; 
    *xp = y; 
    *yp = x; 
    return x + y; 
} 

long caller() 
{ 
    long arg1 = 534; 
    long arg2 = 1057; 
    long sum = swap_add(&arg1, &arg2); 
    long diff = arg1 - arg2; 
    return sum * diff; 
} 
/* $end 300-swapadd-c */
