/* 
 * psuml.c - A simple parallel sum program where each thread sums into
 *           a local variable, which it then copies to a distinct
 *           array element
 */
#include "csapp.h"
#define MAXTHREADS 32    

void *sum_local(void *vargp); /* Thread routine */

/* Global shared variables */
long psum[MAXTHREADS];  /* Partial sum computed by each thread */
long nelems_per_thread; /* Number of elements summed by each thread */

int main(int argc, char **argv) 
{
    long i, nelems, log_nelems, nthreads, myid[MAXTHREADS], result = 0;
    pthread_t tid[MAXTHREADS];

    /* Get input arguments */
    if (argc != 3) { 
	printf("Usage: %s <nthreads> <log_nelems>\n", argv[0]);
	exit(0);
    }
    nthreads = atoi(argv[1]);
    log_nelems = atoi(argv[2]);
    nelems = (1L << log_nelems);

    /* Check input arguments */
    if  ((nelems % nthreads) != 0 || (log_nelems > 31)) {
	printf("Error: invalid nelems\n");
	exit(0);
    }
    nelems_per_thread = nelems / nthreads;

    /* Create peer threads and wait for them to finish */
    for (i = 0; i < nthreads; i++) {                  //line:conc:psumlocal:createloop1
	myid[i] = i;                                  //line:conc:psumlocal:createloop2
	Pthread_create(&tid[i], NULL, sum_local, &myid[i]); //line:conc:psumlocal:createloop3
    }                                                 //line:conc:psumlocal:createloop4
    for (i = 0; i < nthreads; i++)                    //line:conc:psumlocal:waitloop1
	Pthread_join(tid[i], NULL);                   //line:conc:psumlocal:waitloop2
    
    /* Add up the partial sums computed by each thread */
    for (i = 0; i < nthreads; i++)                    //line:conc:psumlocal:sumloop1
	result += psum[i];                            //line:conc:psumlocal:sumloop2

    /* Check final answer */
    if (result != (nelems * (nelems-1))/2)     //line:conc:psumlocal:check1
	printf("Error: result=%ld\n", result); //line:conc:psumlocal:check2

    exit(0);
}

/* $begin psumlocalthread */
/* Thread routine for psum-local.c */
void *sum_local(void *vargp) 
{
    long myid = *((long *)vargp);          /* Extract the thread ID */ //line:conc:psumlocal:extractid
    long start = myid * nelems_per_thread; /* Start element index */ //line:conc:psumlocal:getstart
    long end = start + nelems_per_thread;  /* End element index */ //line:conc:psumlocal:getend
    long i, sum = 0;

    for (i = start; i < end; i++) {        //line:conc:psumlocal:threadsumloop1
	sum += i;                          //line:conc:psumlocal:threadsumloop2 
    }	                                   //line:conc:psumlocal:threadsumloop3
    psum[myid] = sum; //line:conc:psumlocal:
    return NULL;
}
/* $end psumlocalthread */

