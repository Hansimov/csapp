#include <stdio.h>

void missrate()
{
    /* $begin missrate2 */
    int x[2][128];
    int i;
    int sum = 0;

    for (i = 0; i < 128; i++) {
	sum += x[0][i] * x[1][i];
    }
    /* $end missrate2 */
}

