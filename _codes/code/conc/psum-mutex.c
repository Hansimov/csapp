/* 
 * psum-mutex.c - A simple parallel sum program where each thread sums
 *                into a global variable protected by a mutex
 */
/* $begin psummutex */
#include "csapp.h"
#define MAXTHREADS 32    

void *sum_mutex(void *vargp); /* Thread routine */

/* Global shared variables */
long gsum = 0;           /* Global sum */
long nelems_per_thread;  /* Number of elements to sum */
sem_t mutex;             /* Mutex to protect global sum */

int main(int argc, char **argv) 
{
    long i, nelems, log_nelems, nthreads, myid[MAXTHREADS];
    pthread_t tid[MAXTHREADS];

    /* Get input arguments */
    if (argc != 3) { 
	printf("Usage: %s <nthreads> <log_nelems>\n", argv[0]);
	exit(0);
    }
    nthreads = atoi(argv[1]);
    log_nelems = atoi(argv[2]);
    nelems = (1L << log_nelems);
    /* $end psummutex */
    /* Check input arguments */
    if  ((nelems % nthreads) != 0 || (log_nelems > 31)) {
	printf("Error: invalid nelems\n");
	exit(0);
    }
    /* $begin psummutex */
    nelems_per_thread = nelems / nthreads;
    sem_init(&mutex, 0, 1);

    /* Create peer threads and wait for them to finish */
    for (i = 0; i < nthreads; i++) {                  //line:conc:psummutex:createloop1
	myid[i] = i;                                  //line:conc:psummutex:createloop2
	Pthread_create(&tid[i], NULL, sum_mutex, &myid[i]); //line:conc:psummutex:createloop3
    }                                                 //line:conc:psummutex:createloop4
    for (i = 0; i < nthreads; i++)                    //line:conc:psummutex:waitloop1
	Pthread_join(tid[i], NULL);                   //line:conc:psummutex:waitloop2
    
    /* Check final answer */
    if (gsum != (nelems * (nelems-1))/2)     //line:conc:psummutex:check1
	printf("Error: result=%ld\n", gsum); //line:conc:psummutex:check2

    exit(0);
}
/* $end psummutex */

/* $begin psummutexthread */
/* Thread routine for psum-mutex.c */
void *sum_mutex(void *vargp) 
{
    long myid = *((long *)vargp);          /* Extract the thread ID */ //line:conc:psummutex:extractid
    long start = myid * nelems_per_thread; /* Start element index */ //line:conc:psummutex:getstart
    long end = start + nelems_per_thread;  /* End element index */ //line:conc:psummutex:getend
    long i;

    for (i = start; i < end; i++) {        //line:conc:psummutex:threadsumloop1
        P(&mutex);                     //line:conc:psummutex:lock
	gsum += i;                     //line:conc:psummutex:threadsumloop2 
        V(&mutex);                     //line:conc:psummutex:unlock
    }	                               //line:conc:psummutex:threadsumloop3
    return NULL;
}
/* $end psummutexthread */

