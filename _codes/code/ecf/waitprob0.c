#include "csapp.h"

/* $begin waitprob0 */
/* $begin wasidewaitprob0 */
int main() 
{
    if (Fork() == 0) {
	printf("a"); fflush(stdout);
    }
    else {
	printf("b"); fflush(stdout);
	waitpid(-1, NULL, 0); 
    }
    printf("c"); fflush(stdout);
    exit(0);
}
/* $end waitprob0 */
/* $end wasidewaitprob0 */
