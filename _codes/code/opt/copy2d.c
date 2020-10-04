#include <stdio.h>
#include <stdlib.h>
#include "clock.h"
#include "cpe.h"

/* Copy 2-dimensional array */

#define ASIZE 2048

void copyij(long int src[ASIZE][ASIZE], long int dst[ASIZE][ASIZE])
{
  long int i,j;
  for (i = 0; i < ASIZE; i++)
    for (j = 0; j < ASIZE; j++)
      dst[i][j] = src[i][j];
}

void copyji(long int src[ASIZE][ASIZE], long int dst[ASIZE][ASIZE])
{
  long int i,j;
  for (j = 0; j < ASIZE; j++)
    for (i = 0; i < ASIZE; i++)
      dst[i][j] = src[i][j];
}


long int a[ASIZE][ASIZE];
long int b[ASIZE][ASIZE];

void funij(long int n)
{
  copyij(a,b);  
}

void funji(long int n)
{
  copyji(a,b);  
}

int main(int argc, char *argv[])
{
    long int n = 1;
    if (argc > 1)
	n = atoi(argv[1]);
    long int i;
    for (i = 0; i < n; i++) {
	double c = mhz(1);
	double tji = measure_function(funji, 0);
	double tij = measure_function(funij, 0);

	printf("ij: Array size %d, Cycles = %.0f, Net CPE = %.2f, ms = %.1f\n",
	       ASIZE, tij, tij/(ASIZE*ASIZE), tij/(c * 1e3));
	printf("ji: Array size %d, Cycles = %.0f, Net CPE = %.2f, ms = %.1f\n",
	       ASIZE, tji, tji/(ASIZE*ASIZE), tji/(c * 1e3));
    }
  return 0;
}

