#include <stdio.h>
#include <stdlib.h>

#define N 1<<8

int a[N][N][N];

/* $begin sumarray3d */
int sumarray3d(int a[N][N][N]) 
{  	
    int i, j, k, sum = 0;

    for (i = 0; i < N; i++) {
	for (j = 0; j < N; j++) {
	    for (k = 0; k < N; k++) {
		sum += a[k][i][j];
	    }
	}
    }
    return sum;	
}
/* $end sumarray3d */


int main()
{
    int i, j, k;

    for (i = 0; i < N; i++) 
	for (j = 0; j < N; j++)
	    for (k = 0; k < N; k++)
		a[i][j][k] = ((k%2 == 0) ? 1 : -1);

    /* should return zero */
    printf("sum=%d\n", sumarray3d(a));
    exit(0);
}
