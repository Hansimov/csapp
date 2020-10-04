/* $begin signal4 */
#include "csapp.h"

void handler2(int sig) 
{
    pid_t pid;
  
    while ((pid = waitpid(-1, NULL, 0)) > 0)
	printf("Handler reaped child %d\n", (int)pid);
    if (errno != ECHILD)
	unix_error("waitpid error");
    Sleep(2);
    return;
}

int main() 
{
    int i, n;
    char buf[MAXBUF];
    pid_t pid;

    Signal(SIGCHLD, handler2); /* sigaction error-handling wrapper */

    /* Parent creates children */
    for (i = 0; i < 3; i++) {
	pid = Fork();
	if (pid == 0) {
	    printf("Hello from child %d\n", (int)getpid());
	    Sleep(1);
	    exit(0);
	}
    }

    /* Parent waits for terminal input and then processes it */
    if ((n = read(STDIN_FILENO, buf, sizeof(buf))) < 0)
	unix_error("read error");

    printf("Parent processing input\n");
    while (1)
	;
    exit(0);
}
/* $end signal4 */
