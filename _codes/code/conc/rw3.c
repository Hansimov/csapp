/* 
 * Readers-writers solution that is fair to both readers and
 * writers. Simplifying assumption is that the number of concurrent
 * active readers is at most N.
 *
 * Source: Henri Casanova, University of Hawaii
*/
/* $begin rw3 */
#include "csapp.h"

#define N 10

/* Global variables */
sem_t sem;    /* Initially = N */
sem_t wmutex; /* Initially = 1 */

void reader(void) 
{
    while (1) {
	P(&sem);

	/* Critical section: */
	/* Reading happens   */

	V(&sem);
    }
}

void writer(void) 
{
    int i;

    while (1) {
	P(&wmutex);
	for (i=0; i<N; i++)
	    P(&sem);
	V(&wmutex);

	/* Critical section: */
	/* Writing happens   */

	for (i=0; i<N; i++)
	    V(&sem);
    }
}
/* $end rw3 */
