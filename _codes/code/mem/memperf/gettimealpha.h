/*
    time measuring with rtclock
    Alpha real time clock counter 
 */

typedef unsigned long uint32;
extern int rtclock();

extern inline void getclock (uint32 *hi, uint32 *lo)
{
  *hi=0;
  *lo=rtclock();
}

/* 64 bit subtract t1-t0 */
extern inline int subtract64(uint32 hi0, uint32 lo0, uint32 hi1, uint32 lo1 )
{
  uint32 hir, lor;
  
  hir = (hi1 - hi0);
  if (lo0 < lo1) lor = (lo1 - lo0);
  else lor = 0xFFFFFFFF-(lo0-lo1) ;
  return lor;
}
