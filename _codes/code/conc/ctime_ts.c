/* 
 * ctime_ts - A thread-safe wrapper for ctime
 */
#include "csapp.h"
#define MAXSTR 128

static sem_t mutex; /* protects calls to ctime */

static void init_ctime_ts(void)
{
    Sem_init(&mutex, 0, 1);
}

/* $begin ctime_ts */
char *ctime_ts(const time_t *timep, char *privatep)
{
    char *sharedp; 

    P(&mutex);
    sharedp = ctime(timep);
    strcpy(privatep, sharedp); /* Copy string from shared to private */
    V(&mutex);
    return privatep;
}
/* $end ctime_ts */

int main()
{
    char timestr[MAXSTR];
    time_t timeval;

    /* Thread-safe code to print the current time string */
    init_ctime_ts();
    timeval = time(NULL);
    ctime_ts(&timeval, timestr);
    printf("%s", timestr);
    exit(0);
}
