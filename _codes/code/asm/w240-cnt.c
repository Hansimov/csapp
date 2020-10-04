/* 
 * cnt.c - Different approaches to handling races
 */
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <semaphore.h>
#include <sys/time.h>

void *thread(void *vargp);  /* Thread routine prototype */

/* Different incrementers */
#define INCR_CNT 4
void bad_incr(int *val);
void lock_incr(int *val);
void mutex_incr(int *val);
void sem_incr(int *val);


typedef void (*incr_t)(int *);
incr_t incrs[INCR_CNT] = {bad_incr, lock_incr, mutex_incr, sem_incr};
char *inames[INCR_CNT] = {"bad", "lock", "mutex", "sem"};

incr_t incr_fun;

/* Global shared variables */
volatile int cnt = 0; /* Counter */

sem_t sem;           /* Semaphore that protects counter */
pthread_mutex_t mutex;

void run_test(int niters, int nthreads, int incr_idx);

int main(int argc, char **argv) 
{
    int niters;
    int nthreads = 2;
    int incr_idx = 0;

    /* Check input argument */
    if (argc < 2 || argc > 4) { 
	printf("usage: %s <niters> [<nthreads> [<incrfun>]]\n", argv[0]);
	exit(0);
    }
    niters = atoi(argv[1]);
    if (argc >= 3) {
	nthreads = atoi(argv[2]);
    }
    if (argc >= 4) {
	incr_idx = atoi(argv[3]);
	if (incr_idx < 0 || incr_idx >= INCR_CNT) {
	    printf("incrfun must be between 0 and %d\n", INCR_CNT);
	    exit(0);
	}
    }
    run_test(niters, nthreads, incr_idx);
    exit(0);
}

void run_test(int niters, int nthreads, int incr_idx)
{
    pthread_t tid[nthreads];
    int t;
    struct timeval ts;
    double stime;
    double dtime;
    char *iname = inames[incr_idx];
    incr_fun = incrs[incr_idx];
    cnt = 0;
    
    sem_init(&sem, 0, 1);  /* sem = 1 */
    pthread_mutex_init(&mutex, NULL);

    gettimeofday(&ts, NULL);
    stime = 1e9 * ts.tv_sec + 1e3 * ts.tv_usec;
    /* Create threads and wait for them to finish */
    for (t = 0; t < nthreads; t++) 
	pthread_create(&tid[t], NULL, thread, &niters);
    for (t = 0; t < nthreads; t++) 
	pthread_join(tid[t], NULL);
    gettimeofday(&ts, NULL);
    dtime = (1e9 * ts.tv_sec + 1e3 * ts.tv_usec - stime) / niters;


    /* Check result */
    if (cnt != (nthreads * niters))
	printf("BOOM!\t");
    else
	printf("OK\t");
    printf("%d\t%s\t%d\t%.1f\n", cnt, iname, nthreads, dtime);
    exit(0);
}

void *thread(void *vargp) 
{
    int i, niters = *((int *)vargp);

    for (i = 0; i < niters; i++) {
	incr_fun((int *) &cnt);
    }
    return NULL;
}

/* $begin w240-bad_incr-c */
void bad_incr(int *ptr)
{
    (*ptr)++;
}
/* $end w240-bad_incr-c */

/* $begin w240-lock_incr-c */
void lock_incr(int *ptr)
{
    asm("lock            # Insert lock prefix\n\t"
	"addl $1, %[p]   # Increment *ptr"
	: [p] "+m" (*ptr) /* Output */
	);
}
/* $end w240-lock_incr-c */

/* $begin w240-mutex_incr-c */
void mutex_incr(int *ptr)
{
    pthread_mutex_lock(&mutex);
    (*ptr)++;
    pthread_mutex_unlock(&mutex);
}
/* $end w240-mutex_incr-c */


/* $begin w240-sem_incr-c */
void sem_incr(int *ptr)
{
    sem_wait(&sem);
    (*ptr)++;
    sem_post(&sem);
}
/* $end w240-sem_incr-c */
