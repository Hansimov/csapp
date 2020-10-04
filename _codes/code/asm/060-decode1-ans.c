/* $begin 060-decode1-ans-proto */
void decode1(long *xp, long *yp, long *zp);
/* $end 060-decode1-ans-proto */


/* $begin 060-decode1-ans-c */
void decode1(long *xp, long *yp, long *zp) 
{ 
    long x = *xp; 
    long y = *yp; 
    long z = *zp; 

    *yp = x; 
    *zp = y; 
    *xp = z; 
} 
/* $end 060-decode1-ans-c */

