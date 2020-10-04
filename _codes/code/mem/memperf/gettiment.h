/*
    time measuring with QueryPerformancecounter
    normal resolution Clock Frequency 
 */

typedef unsigned long uint32;

__inline void
getcounter (uint32 *hi, uint32 *lo)
{
	LARGE_INTEGER lpCounter;
	QueryPerformanceCounter(&lpCounter);
	
	*hi = lpCounter.HighPart;
	*lo = lpCounter.LowPart;
}

/* 64 bit subtract t1-t0 */
int subtract64(uint32 hi0, uint32 lo0, uint32 hi1, uint32 lo1 )
{
  uint32 hir, lor;

  if (lo1 < lo0) {
    lor = 1000000-(lo0-lo1);
    hir = hi1 - hi0 -1;
  } else {
    lor = lo1-lo0;
    hir = hi1 - hi0;
  }
  return hir*1000000+lor;
}
