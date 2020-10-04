/*
 * Program that prints out some interesting parts of the memory map
 * Notes:
 *   1. pmap shows that the initial brk value is always the heap start.
 *   2. text, data, and bss are invariant. 
 *   3. stack, heap, and library segments vary from run to run. 
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

extern char etext, edata, end;

double bssvar;
char datavar[1024]={'a'};

int main(int argc, char **argv, char **envp) 
{
    long bytecnt = 0;
    char *heapaddrp, *lastblockp;
    size_t blocksize;
    long i, iter, numblocks, blockcnt;
    char **p, **envpn=NULL;

    /* get address of last envp[] entry */
    for (p = envp; *p; p++)
        envpn = p;

    printf("First address past:\n");
    printf("    program text (etext)      %10p\n", &etext);
    printf("    initialized data (edata)  %10p\n", &edata);
    printf("    uninitialized data (end)  %10p\n", &end);
    printf("\n");
    printf("size_t    = %d\n", (int)sizeof(size_t));  
    printf("socklen_t = %d\n", (int)sizeof(socklen_t));  
    printf("&main     = %p\n", &main);
    printf("&datavar  = %p\n", &datavar);
    printf("&bssvar   = %p\n", &bssvar);
    printf("localvar  = %p\n", &bytecnt);
    printf("argv      = %p\n", argv);
    printf("envp      = %p\n", envp);
    printf("stacktop  = %p\n", *envpn);
    printf("\n");

    /* Compute the size of the malloc blocks */

    /* Allocate some smaller chunks to get the direction of growth. */
    printf("Heap addresses:\n");
    blocksize = (1L << 10);
    numblocks = 8;
    blockcnt = 0;
    printf("Heap start = %p\n", sbrk(0));  
    for (i=0; i<numblocks; i++) {
	if ((heapaddrp = malloc(blocksize)) == NULL) 
	    break;
        blockcnt += blocksize;
        printf("blockaddr = %p [Heap end = %p]\n", heapaddrp, sbrk(0));
    }
    printf("...\n");

    
    /* Allocate some larger blocks to exhaustion */
    blocksize = (1<<30);
    iter = 0;
    while((heapaddrp = malloc(blocksize))) {
        lastblockp = heapaddrp;
        lastblockp[0] = 1;
        blockcnt += blocksize;
        if ((iter++ % (1<<14)) == 0)
            printf("blockaddr = %p [Heap end = %p]\n", lastblockp, sbrk(0));
    }
    printf("blockaddr = %p [Heap end = %p]\n", lastblockp, sbrk(0));
    printf("Total allocated bytes = 0x%lx\n", blockcnt);

    printf("pausing so that you can check .so locations with pmap\n");
    while(1); /* check .so locations with pmap */
    exit(0);
}
