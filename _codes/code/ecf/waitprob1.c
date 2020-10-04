#include "csapp.h"

/* $begin waitprob1 */
/* $begin wasidewaitprob1 */
int main() 
{
    int status;
    pid_t pid;
  
    printf("Hello\n");
    pid = Fork();
    printf("%d\n", !pid);
    if (pid != 0) {
	if (waitpid(-1, &status, 0) > 0) {
	    if (WIFEXITED(status) != 0)
		printf("%d\n", WEXITSTATUS(status));
	}
    }
    printf("Bye\n");
    exit(2);
}
/* $end waitprob1 */
/* $end wasidewaitprob1 */
