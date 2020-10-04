/* $begin kill */
#include "csapp.h"

int main() 
{
    pid_t pid;

    /* Child sleeps until SIGKILL signal received, then dies */   
    if ((pid = Fork()) == 0) {   
	Pause();  /* Wait for a signal to arrive */  
	printf("control should never reach here!\n");
	exit(0);
    }

    /* Parent sends a SIGKILL signal to a child */
    Kill(pid, SIGKILL);
    exit(0);
}
/* $end kill */
