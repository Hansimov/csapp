/*
 * Program that prints out some interesting parts of the memory map
 */
#include <stdio.h>
#include <stdlib.h>

double bssvar = 10000.0;
char datavar[4096];

int main() 
{
    char *heapaddrp;
    size_t blocksize;
    long iter, modval;

    printf("&main      = %016lx\n", (long)main);
    printf("&bssvar    = %016lx\n", (long)&bssvar);
    printf("&datavar   = %016lx\n", (long)&datavar);

    /* Compute the size of the malloc blocks */
    if (sizeof(long) == 8) { /* 64 bit */
	blocksize = (1024 * (1 << 20));
	blocksize *= 4;
	modval = 128;
    }
    else { /* 32 bit */
	blocksize = (1 << 20);
	modval = 16;
    }

    /* Allocate big chunks until the heap is exhausted */
    printf("heap addresses:\n");
    iter = 0;
    while(1) {
	if ((heapaddrp = malloc(blocksize)) == NULL) 
	    break;
	if ((iter%modval) == 0)
	    printf("heapaddrp  = %016lx\n", (long)heapaddrp);
	iter++;
    }

    printf("stacktop   = %016lx\n", (long)&heapaddrp);
    printf("\nPause, and check .so locations using pmap\n");
    while(1); /* check .so locations with pmap */
    exit(0);
}
