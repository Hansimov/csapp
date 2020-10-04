#include "csapp.h"

pid_t getpgid(pid_t pid);

void handler(int sig) 
{
    if (sig == SIGINT)
	printf("pg     : pid[%5d] pgid[%5d]: received SIGINT\n", 
	       getpid(), getpgrp());
    else if (sig == SIGTSTP)
	printf("pg     : pid[%5d] pgid[%5d]: received SIGTSTP\n", 
	       getpid(), getpgrp());
    else
	printf("pg     : unknown signal: %d\n", sig);

}

int main() 
{
    Signal(SIGINT, handler);
    /*    Signal(SIGTSTP, handler);*/

    if (Fork() == 0) {
	Execve("pgchild", NULL, NULL);
    }
	
    printf("pg     : pid[%5d] ppid[%5d] pgid[%5d] ppgid[%5d]: hello\n", 
	   getpid(), getppid(), getpgrp(), getpgid(getppid()));
    pause();
    exit(0);
}
