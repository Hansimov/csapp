#include "csapp.h"

void handler(int sig) 
{
    if (sig == SIGINT)
	printf("pgchild: pid[%5d] pgid[%5d]: received SIGINT\n", 
	       getpid(), getpgrp());
    else if (sig == SIGTSTP)
	printf("pgchild: pid[%5d] pgid[%5d]: received SIGTSTP\n", 
	       getpid(), getpgrp());
    else
	printf("pgchild: unknown signal: %d\n", sig);

}

int main() 
{
    Signal(SIGINT, handler);
    Signal(SIGTSTP, handler);

    printf("pgchild: pid[%5d] ppid[%5d] pgid[%5d] ppgid[%5d]: hello\n", 
	   getpid(), getppid(), getpgrp(), getpgid(getppid()));
    pause();
    exit(0);
}
