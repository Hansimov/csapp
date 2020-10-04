#include <stdio.h>
#include <stdlib.h>

float x[8], y[8];

/* $begin dotprod */
float dotprod(float x[8], float y[8]) 
{
    float sum = 0.0;
    int i;

    for (i = 0; i < 8; i++)
	sum += x[i] * y[i];
    return sum;
}
/* $end dotprod */

int main()
{
    int i;

    for (i = 0; i < 8; i++) {
	x[i] = i;
	y[i] = i;
    }

    printf("dotprod=%f\n", dotprod(x, y));
    exit(0);
}
