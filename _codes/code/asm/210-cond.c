#include <stdio.h>
/* Different conditionals */

/* $begin max-c */
long max(long x, long y) {
    return (x < y) ? y : x;
}
/* $end max-c */

long wa_max(long x, long y)
{
    return (x < y) ? 17+y : 23+x;
}

long wm_max(long x, long y)
{
    return (x < y) ? 17*y : 23*x;
}

long wm_max2(long x, long y)
{
    return (x < y) ? 16*y : x;
}

long wm_max3(long x, long y)
{
    return (x < y) ? 17*y : x;
}

long intabs(long x)
{
    return (x < 0) ? -x : x;
}

long cmul(long x, long y)
{
    return (y == 0) ? 0 : x*y;
}

long cmul2(long x, long y)
{
    return (y == 1) ? x : x*y;
}

long cdiv(long x, long y)
{
    return (y == 0) ? 0 : x/y;
}

long cdiv2(long x, long y)
{
    return (y == 1) ? x : x/y;
}

/* $begin 210-cread-c */
long cread(long *xp) {
    return (xp ? *xp : 0);
}
/* $end 210-cread-c */

long cread_invalid(long *xp) {
    long x = *xp;
    long xe = 0;
    if (!xp) x = xe;
    return x;
}

/* $begin se_max-c */
long lcount = 0;
long se_max(long x, long y) {
    return (x < y) ? (lcount++, y) : x;
}
/* $end se_max-c */

#define OP /
#if 0
/* $begin 210-arith-c */
#define OP _____ /* Unknown operator */

/* $end 210-arith-c */
#endif
/* $begin 210-arith-c */
long arith(long x) {
    return x OP 8;
}
/* $end 210-arith-c */
