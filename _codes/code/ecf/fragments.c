#include "csapp.h"

void insert(void *list, int item) 
{
}

void fragments()
{
    int pid=0;
    sigset_t mask, prev;

/* $begin sigatomic */
    volatile sig_atomic_t flag;
/* $end sigatomic */

/* $begin volatile */
    volatile int g;
/* $end volatile */
    
    int cnt = 0;
    flag = 0;
    flag = cnt;
    cnt = flag;

/* $begin pausewait */
    while (!pid)  /* Race! */
        pause();
/* $end pausewait */

/* $begin sleepwait */
    while (!pid) /* Too slow! */
        sleep(1);
/* $end sleepwait */

/* $begin atomicpause */
    sigprocmask(SIG_BLOCK, &mask, &prev);
    pause();
    sigprocmask(SIG_SETMASK, &prev, NULL);
/* $end atomicpause */

/* $begin errorcheck */    
    if ((pid = fork()) < 0) {
	fprintf(stderr, "fork error: %s\n", strerror(errno));
	exit(0);
    }
/* $end errorcheck */    

/* $begin unixerroruse */
    if ((pid = fork()) < 0)
	unix_error("fork error");
/* $end unixerroruse */

/* $begin forkwrapperuse */    
    pid = Fork();
/* $end forkwrapperuse */    


}

