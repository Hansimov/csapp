/* 
 * prodconsn.c - generic producers-consumers manipulating a shared buffer 
 */
/* $begin prodconsnmain */
#include "csapp.h"
#include "sbuf.h"

#define NITEMS   5  /* Number of items to produce/consume */
#define BUFSIZE  4  /* Max number of items allowed in buffer */
#define MAXSLEEP 2  /* Sleep to simulate working on items */

sbuf_t sbuf; /* Shared buffer */

void *producer(void *arg)  /* Producer thread routine */
{
    int i, item;
    for (i = 0; i < NITEMS; i++) {
	Sleep(rand() % MAXSLEEP);       /* Work for a while */
	item = i;                       /* Produce item */
	printf("Produced %d\n", item);
	sbuf_insert(&sbuf, item);       /* Insert item in buffer */
    }
    return NULL;
}

void *consumer(void *arg)  /* Consumer thread routine */
{
    int i, item;
    for (i = 0; i < NITEMS; i++) {
	item = sbuf_remove(&sbuf);     /* Remove item from buffer */
	sleep(rand() % MAXSLEEP);      /* Work on the item for a while */
	printf("Consumed %d\n", item); /* Consume the item */
    }
    return NULL;
}

int main() 
{
    pthread_t tid_producer, tid_consumer;
    sbuf_init(&sbuf, BUFSIZE);
    Pthread_create(&tid_producer, NULL, producer, NULL);
    Pthread_create(&tid_consumer, NULL, consumer, NULL);
    Pthread_join(tid_producer, NULL);
    Pthread_join(tid_consumer, NULL);
    sbuf_deinit(&sbuf);
    exit(0);
}
/* $end prodconsnmain */
