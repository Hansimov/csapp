#include "csapp.h"

int main(int argc, char **argv)
{
/* $begin blockone */
    sigset_t mask, prev_mask;

    Sigemptyset(&mask);
    Sigaddset(&mask, SIGINT); 

    /* Block SIGINT and save previous blocked set */
    Sigprocmask(SIG_BLOCK, &mask, &prev_mask);  
    
    /* ...code region that will not be interrupted by SIGINT */

    /* Restore previous blocked set, unblocking SIGINT */
    Sigprocmask(SIG_SETMASK, &prev_mask, NULL); 

/* $end blockone */
    exit(0);
}
