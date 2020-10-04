#include "csapp.h"

int main()
{
    char *p;
    printf("sbrk(0)    =%p\n", p=sbrk(0));
    printf("sbrk(4096) =%p\n", p=sbrk(4096));
    *(p+4095)=0; /* OK */
    printf("sbrk(4096) =%p\n", p=sbrk(4096));
    printf("sbrk(-4096)=%p\n", p=sbrk(-4096));
    printf("sbrk(-4096)=%p\n", p=sbrk(-4096));
    exit(0);
}
