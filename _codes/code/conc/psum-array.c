/* 
 * psum-array.c - A simple parallel sum program where each thread sums
 *                into its own distinct global array element.
 */
#include "csapp.h"
#define MAXTHREADS 32    

void *sum_array(void *vargp); /* Thread routine */

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
    for (i = 0; i < nthreads; i++) {                  //line:conc:psumarray:createloop1
	myid[i] = i;                                  //line:conc:psumarray:createloop2
	Pthread_create(&tid[i], NULL, sum_array, &myid[i]); //line:conc:psumarray:createloop3
    }                                                 //line:conc:psumarray:createloop4
    for (i = 0; i < nthreads; i++)                    //line:conc:psumarray:waitloop1
	Pthread_join(tid[i], NULL);                   //line:conc:psumarray:waitloop2
    
    /* Add up the partial sums computed by each thread */
    for (i = 0; i < nthreads; i++)                    //line:conc:psumarray:sumloop1
	result += psum[i];                            //line:conc:psumarray:sumloop2

    /* Check final answer */
    if (result != (nelems * (nelems-1))/2)     //line:conc:psumarray:check1
	printf("Error: result=%ld\n", result); //line:conc:psumarray:check2

    exit(0);
}

/* $begin psumarraythread */
/* Thread routine for psum-array.c */
void *sum_array(void *vargp) 
{
    long myid = *((long *)vargp);          /* Extract the thread ID */ //line:conc:psumarray:extractid
    long start = myid * nelems_per_thread; /* Start element index */ //line:conc:psumarray:getstart
    long end = start + nelems_per_thread;  /* End element index */ //line:conc:psumarray:getend
    long i;

    for (i = start; i < end; i++) {        //line:conc:psumarray:threadsumloop1
	psum[myid] += i;                   //line:conc:psumarray:threadsumloop2 
    }	                                   //line:conc:psumarray:threadsumloop3
    return NULL;
}
/* $end psumarraythread */

