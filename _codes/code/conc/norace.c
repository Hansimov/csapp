/* 
 * norace.c - fixes the race in race.c
 */
/* $begin norace */
#include "csapp.h"
#define N 4

void *thread(void *vargp);

int main() 
{
    pthread_t tid[N];
    int i, *ptr;

    for (i = 0; i < N; i++) {
        ptr = Malloc(sizeof(int));                    //line:conc:norace:createthread1
        *ptr = i;                                     //line:conc:norace:createthread2
        Pthread_create(&tid[i], NULL, thread, ptr);   //line:conc:norace:createthread3
    } //line:conc:norace:endloop
    for (i = 0; i < N; i++) 
        Pthread_join(tid[i], NULL);
    exit(0);
}

/* Thread routine */
void *thread(void *vargp) 
{
    int myid = *((int *)vargp); //line:conc:norace:assign
    Free(vargp); 
    printf("Hello from thread %d\n", myid);
    return NULL;
}
/* $end norace */
