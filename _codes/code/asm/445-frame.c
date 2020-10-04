/* Example of stack frame */
#include <stdio.h>

/* Example of function requiring a stack frame */
/* $begin 445-frame-c */
long vframe(long n, long idx, long *q)  {
    long i;
    long *p[n];
    p[0] = &i;
    for (i = 1; i < n; i++)
	p[i] = q;
    return *p[idx];
}
/* $end 445-frame-c */

long lframe(long n, long idx)  {
    long i;
    int a[n];
    a[0] = 7;
    for (i = 1; i < n; i++)
	a[i] = 3;
    return a[idx];
}

int main() {
    return 0;
}
