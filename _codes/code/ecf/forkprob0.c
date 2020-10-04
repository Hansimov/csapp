#include "csapp.h"

/* $begin forkprob0 */
int main() 
{
    int x = 1;

    if (Fork() == 0)
	printf("p1: x=%d\n", ++x);  //line:ecf:forkprob0:childfork
    printf("p2: x=%d\n", --x);      //line:ecf:forkprob0:parentfork
    exit(0);
}
/* $end forkprob0 */

