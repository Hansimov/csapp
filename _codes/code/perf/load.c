#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/signal.h>
#include "load.h"

/* Max. load processes */
#define PLIMIT 100

static pid_t child_id[PLIMIT];
static int child_count = 0;


static int sink;

/* Run cpu-intensive code */

static void cpu_run()
{
  int i = 1;
  sink = 1;
  while (1)
    sink *= i++;
}

/* Run cache intensive code */
/* L1 cache is 16KB = 4K integers, with 32B line size */
#define CSIZE (1<<12)
#define CSTRIDE 8
static void cache_run()
{
  int i;
  int *data = calloc(CSIZE, sizeof(int));
  while (1) {
    /* Write array */
    for (i = 0; i < CSIZE; i += CSTRIDE)
      data[i] = i;
    /* Read it back */
    sink = 0;
    for (i = 0; i < CSIZE; i += CSTRIDE)
      sink += data[i];
  }
}

/* Run memory intensive code */
/* L2 cache is 512KB = 128K integers, with 32B line size */
#define MSIZE (1<<18)
#define MSTRIDE 8
static void mem_run()
{
  int i;
  int *data = calloc(MSIZE, sizeof(int));
  while (1) {
    /* Write array */
    for (i = 0; i < MSIZE; i += MSTRIDE)
      data[i] = i;
    /* Read it back */
    sink = 0;
    for (i = 0; i < MSIZE; i += MSTRIDE)
      sink += data[i];
  }
}

void add_load(int count, load_t load_type) {
  int i;
  if (count == 0)
    return;
  for (i = 0; i < count; i++) {
    pid_t id;
    if (i+1 == PLIMIT) {
      fprintf(stderr, "Can't create more than %d child processes\n",
	      PLIMIT);
      exit(1);
    }
    id = fork();
    if (id) {
      /* Parent */
      child_id[child_count++] = id;
    } else {
      /* Child */
      switch(load_type) {
      case CPU_LOAD:
	cpu_run();
	break;
      case CACHE_LOAD:
	cache_run();
	break;
      case MEM_LOAD:
	mem_run();
	break;
      default:
	fprintf(stderr, "Unknown Load type %d\n", load_type);
	exit(1);
      }
      exit(0);
    }
  }
  sleep(1);
}

/* Kill all existing loads */
/* Kill All Load Processes  */
void kill_loads() {
  while (child_count > 0) {
    int status;
    kill(child_id[--child_count], 9);
    wait(&status);
  }
}

