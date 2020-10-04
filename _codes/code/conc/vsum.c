/* 
 * vsum.c - A simple parallel sum program
 */
/* $begin vsum */
#include "csapp.h"

#define MAXTHREADS 32    
#define MAXN 1<<27

void *sum(void *vargp);

/* Global shared variables */
double vector[MAXN];          /* Vector */
double psum[MAXTHREADS]; /* Partial sum computed by each thread */
long nelems_per_thread;  /* Region size for each thread */

int main(int argc, char **argv) 
{
    long i, nelems, log_nelems, nthreads;
    pthread_t tid[MAXTHREADS];
    int myid[MAXTHREADS];
    double result = 0;

    /* Get input arguments */
    if (argc != 3) {
	printf("Usage: %s <nthreads> <log_nelems>\n", argv[0]);
	exit(0);
    }
    nthreads = atoi(argv[1]);
    log_nelems = atoi(argv[2]);
    nelems = (1L << log_nelems);
    /* $end psum */
    /* Check input arguments */
    if  ((nelems % nthreads) != 0 || (nelems > MAXN)) {
	printf("Error: invalid nelems\n");
	exit(0);
    }
    /* $begin psum */
    nelems_per_thread = nelems / nthreads;

    /* Initialize vector */
    for (i = 0; i < nelems; i++) 
	vector[i] = 1.1;

    /* Create threads and wait for them to finish */
    for (i = 0; i < nthreads; i++) {
	myid[i] = i;
	Pthread_create(&tid[i], NULL, sum, &myid[i]);
    }
    for (i = 0; i < nthreads; i++) 
	Pthread_join(tid[i], NULL);
    
    /* Add up the partial sums computed by each thread */
    for (i = 0; i < nthreads; i++) 
	result += psum[i];

    /* Check final answer */
    printf("result = %f\n", result);

    exit(0);
}
/* $end psum */

/* Thread routine */
/* $begin psum-thread */
void *sum(void *vargp) 
{
    int myid = *((int *)vargp);             /* Extract the thread ID */
    long start = myid * nelems_per_thread;  /* Start element index */
    long end = start + nelems_per_thread;   /* End element index */
    long i, sum = 0;

    for (i = start; i < end; i++) {
	sum += sqrt(vector[i]);
    }	     
    psum[myid] = sum;

    return NULL;
}
/* $end psum-thread */

