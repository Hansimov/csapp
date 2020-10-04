#include "csapp.h"

void heapify(int **binheap, int size, int pos)
{
}

void misc() 
{
    char *bufp;
    int size=0;

    /* $begin execve */
    Execve("a.out", NULL, NULL);
    /* $end execve */


    /* $begin mmap */
    bufp = Mmap(NULL, size, PROT_READ, MAP_PRIVATE|MAP_ANON, 0, 0);
    /* $end mmap */
}

/* $begin garbage */
void garbage() 
{
    int *p = (int *)Malloc(15213);

    return; /* Array p is garbage at this point */
}
/* $end garbage */


/* $begin uninitialized */
/* Return y = Ax */
int *matvec(int **A, int *x, int n) 
{ 
    int i, j;

    int *y = (int *)Malloc(n * sizeof(int));
    
    for (i = 0; i < n; i++)
	for (j = 0; j < n; j++)
            y[i] += A[i][j] * x[j];
    return y;
}
/* $end uninitialized */

/* $begin bufoverflow */
void bufoverflow() 
{
    char buf[64];

    gets(buf); /* Here is the stack buffer overflow bug */
    return;
}
/* $end bufoverflow */

/* $begin makearray1 */
/* Create an nxm array */
int **makeArray1(int n, int m) 
{
    int i;
    int **A = (int **)Malloc(n * sizeof(int)); //line:vm:makearray1:sizeof

    for (i = 0; i < n; i++)                    //line:vm:makearray1:loop1
	A[i] = (int *)Malloc(m * sizeof(int)); //line:vm:makearray1:loop2
    return A;
}   
/* $end makearray1 */

/* $begin makearray2 */
/* Create an nxm array */
int **makeArray2(int n, int m) 
{
    int i;
    int **A = (int **)Malloc(n * sizeof(int *)); //line:vm:makearray2:malloc

    for (i = 0; i <= n; i++)                   //line:vm:makearray2:loop1
	A[i] = (int *)Malloc(m * sizeof(int)); //line:vm:makearray2:loop2
    return A;
}   
/* $end makearray2 */


/* $begin binheapdelete */
int *binheapDelete(int **binheap, int *size)
{
    int *packet = binheap[0];                
    
    binheap[0] = binheap[*size - 1];         
    *size--; /* This should be (*size)-- */  //line:vm:heapify
    heapify(binheap, *size, 0);              
    return(packet);
}
/* $end binheapdelete */

/* $begin search */
int *search(int *p, int val) 
{
    while (*p && *p != val)
	p += sizeof(int); /* Should be p++ */ //line:vm:search1
    return p;
}
/* $end search */

/* $begin stackref */
int *stackref () 
{
    int val;

    return &val; 
}  
/* $end stackref */


/* $begin heapref */
int *heapref(int n, int m) 
{
    int i;
    int *x, *y;

    x = (int *)Malloc(n * sizeof(int));                       //line:vm:heapref:mallocx

    /* ... */   /* Other calls to malloc and free go here */

    free(x);                                                  //line:vm:heapref:freex

    y = (int *)Malloc(m * sizeof(int)); 
    for (i = 0; i < m; i++)
	y[i] = x[i]++;  /* Oops! x[i] is a word in a free block */ //line:vm:heapref:refx

    return y;
}
/* $end heapref */

/* $begin leak */
void leak(int n) 
{
    int *x = (int *)Malloc(n * sizeof(int));
    
    return;  /* x is garbage at this point */
}
/* $end leak */
