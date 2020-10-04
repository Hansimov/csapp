/* 
 * hello.c - Pthreads "hello, world" program 
 */
/* $begin hello */
#include "csapp.h"
void *thread(void *vargp);

int main() 
{
    pthread_t tid;
    Pthread_create(&tid, NULL, thread, NULL);
    sleep(5);
    exit(0);
}

void *thread(void *vargp) /* thread routine */
{
    Pthread_detach(pthread_self());
    printf("Hello, world!\n"); 
    while(1);
    return NULL;
}
/* $end hello */
