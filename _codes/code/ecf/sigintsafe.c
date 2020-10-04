/* $begin sigintsafe */
#include "csapp.h"

void sigint_handler(int sig) /* Safe SIGINT handler */ 
{
    Sio_puts("Caught SIGINT!\n"); /* Safe output */    
    _exit(0);                     /* Safe exit */   
}                                       
/* $end sigintsafe */

int main() 
{
    /* Install the SIGINT handler */         
    if (signal(SIGINT, sigint_handler) == SIG_ERR) 
	unix_error("signal error");                
    
    pause(); /* Wait for the receipt of a signal */ 
    
    return 0;
}
