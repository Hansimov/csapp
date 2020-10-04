/* p5tsc.h -- functions to use Pentium cycle counter for timing of events.
   Christian Kurmann <kurmann@inf.ethz.ch>
   based on Brad Karp, David Mazieres's p5cnt package from Harvard. */

typedef unsigned long uint32;

/* Cycle Counter */

/*
 *  Write <hi>:<lo> into MSR number <msr>.
 */

extern __inline__ void
wrmsr (const uint32 msr, uint32 hi, uint32 lo)
{
  __asm __volatile ( 
    "movl %0, %%ecx; movl %1, %%edx; movl %2, %%eax; .byte 0xf; .byte 0x30"   
    : : "g" (msr), "g" (hi), "g" (lo) : "eax", "ecx", "edx");
}

/* macro for clearing tsc */
#define cltsc wrmsr((uint32) 0x10, (uint32) (0), (uint32) (0))

/*
 *  Read 64 bit time stamp counter.  Put the high 32 bits in
 *  <*hi>, and the lower 32 bits in <*lo>.
 */
extern __inline__ void
rdtsc (uint32 *hi, uint32 *lo)
{
  __asm __volatile (
    ".byte 0xf; .byte 0x31; movl %%edx, %0; movl %%eax, %1"
    : "=g" (*hi), "=g" (*lo) :: "eax", "edx");
}


/* Performance Monitor Counters */

extern __inline__ void
spmc (uint32 ecx)
{
  __asm __volatile (
        "movl %0, %%ecx         # select counter "
    : : "g" (ecx) : "ecx");
}

/*
 *  Read 64 bit Performance Monitor Counter.  Put the high 32 bits in
 *  <*hi>, and the lower 32 bits in <*lo>.
 */
extern __inline__ void
rdpmc (uint32 *hi, uint32 *lo)
{
  __asm __volatile (
        ".byte 0xf; .byte 0x33; movl %%edx, %0; movl %%eax, %1"
    : "=g" (*hi), "=g" (*lo) :: "eax", "edx");
}

/* 64 bit subtract t1-t0 (result 32 bit integer) */
extern __inline__ int subtract64(uint32 hi0, uint32 lo0, uint32 hi1, uint32 lo1 )
{
  uint32 hir, lor;

        hir = (hi1 - hi0);
        lor = (lo1 - lo0);
        if (lo1 < lo0) hir -= 1;
        return (hir > 0 ? 0:lor);
}
