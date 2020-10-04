#include <stdio.h>

void missrate()
{
    /* $begin missrate2b */
    int x[2][256];
    int i;
    int sum = 0;

    for (i = 0; i < 256; i++) {
	sum += x[0][i] * x[1][i];
    }
    /* $end missrate2b */
}

