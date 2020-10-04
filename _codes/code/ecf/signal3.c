/* $begin signal3 */
#include "csapp.h"

void handler2(int sig) 
{
    pid_t pid;
    char buf[MAXBUF];

    while ((pid = waitpid(-1, NULL, 0)) > 0) {
	snprintf(buf, MAXBUF, "Handler reaped child %d\n", (int)pid); 
	write(1, buf, strlen(buf));
    }
    if (errno != ECHILD)
	unix_error("waitpid error");
    Sleep(2);
    return;
}

int main() {
    int i, n;
    char buf[MAXBUF];
    pid_t pid;

    if (signal(SIGCHLD, handler2) == SIG_ERR)
	unix_error("signal error");

    /* Parent creates children */
    for (i = 0; i < 3; i++) {
	pid = Fork();
	if (pid == 0) {
	    printf("Hello from child %d\n", (int)getpid());
	    Sleep(1);
	    exit(0);
	}
    }

    /* Manually restart the read call if it is interrupted */
    while ((n = read(STDIN_FILENO, buf, sizeof(buf))) < 0)
	if (errno != EINTR)
	    unix_error("read error");

    printf("Parent processing input\n");
    while (1)
	;

    exit(0);
}
/* $end signal3 */
