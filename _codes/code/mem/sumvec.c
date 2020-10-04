#include <stdio.h>
#include <stdlib.h>

#define N 1<<20

int v[N];

/* $begin sumvec */
int sumvec(int v[N]) 
{  	
    int i, sum = 0; 

    for (i = 0; i < N; i++)
	sum += v[i];
    return sum;	
}
/* $end sumvec */

int main()
{
    int i;

    for (i = 0; i < N; i++)
	v[i] = ((i%2 == 0) ? 1 : -1);

    /* should sum to zero */
    printf("sum=%d\n", sumvec(v));
    exit(0);
}
