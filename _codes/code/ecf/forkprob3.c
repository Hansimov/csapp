/* $begin forkprob3 */
#include "csapp.h"

int main() 
{
    int x = 3;

    if (Fork() != 0)
	printf("x=%d\n", ++x);

    printf("x=%d\n", --x);
    exit(0);
}
/* $end forkprob3 */

