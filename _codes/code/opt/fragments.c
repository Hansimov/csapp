#include "combine.h"

void combine3(vec_ptr v, data_t *dest);
void combine4(vec_ptr v, data_t *dest);

/* $begin loop-problem-funs */
long min(long x, long y) { return x < y ? x : y; }
long max(long x, long y) { return x < y ? y : x; }  
void incr(long *xp, long v) { *xp += v; }
long square(long x) { return x*x; }
/* $end loop-problem-funs */

void fragments() 
{
    long i, x=0, y=0, t;
    vec_ptr v = 0;

    /* $begin loop-problem-a */
    for (i = min(x, y); i < max(x, y); incr(&i, 1))
	t += square(i);
    /* $end loop-problem-a */

    /* $begin loop-problem-b */
    for (i = max(x, y) - 1; i >= min(x, y); incr(&i, -1))
	t += square(i);
    /* $end loop-problem-b */

    {
    /* $begin loop-problem-c */
    long low = min(x, y);
    long high = max(x, y);

    for (i = low; i < high; incr(&i, 1))
	t += square(i);
    /* $end loop-problem-c */
    }
 
    /* $begin aliasing */
    combine3(v, get_vec_start(v) + 2);
    combine4(v, get_vec_start(v) + 2);
    /* $end aliasing */

}


