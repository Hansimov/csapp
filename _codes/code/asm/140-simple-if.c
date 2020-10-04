#include <stdio.h>

/* $begin 140-simple-if-c */
void cond(long a, long *p)
{
    if (p && a > *p)
	*p = a;
}
/* $end 140-simple-if-c */


/* $begin 140-simple-if-goto-c */
void goto_cond(long a, long *p) {
    if (p == 0)
	goto done;
    if (*p >= a)
	goto done;
    *p = a;
 done:
    return;
}
/* $end 140-simple-if-goto-c */


/* $begin 140-simple-if2-c */
void cond2(long a, long *p)
{
    if (p && a > 0)
	*p = a;
}
/* $end 140-simple-if2-c */
