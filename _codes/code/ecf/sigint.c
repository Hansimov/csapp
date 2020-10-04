/* $begin sigint */
#include "csapp.h"

void sigint_handler(int sig) /* SIGINT handler */   //line:ecf:sigint:beginhandler
{
    printf("Caught SIGINT!\n");    //line:ecf:sigint:printhandler
    exit(0);                      //line:ecf:sigint:exithandler
}                                              //line:ecf:sigint:endhandler

int main() 
{
    /* Install the SIGINT handler */         
    if (signal(SIGINT, sigint_handler) == SIG_ERR)  //line:ecf:sigint:begininstall
	unix_error("signal error");                 //line:ecf:sigint:endinstall
    
    pause(); /* Wait for the receipt of a signal */  //line:ecf:sigint:pause
    
    return 0;
}
/* $end sigint */
