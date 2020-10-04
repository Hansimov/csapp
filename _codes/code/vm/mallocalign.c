#include <stdio.h>
#include <stdlib.h>

int main() {
    int i, size, minsize = 128;
    char *p;
    
    for (i=0; i<1000; i++) {
        p = (char *) malloc (i);

        size=1;
        while (!((long)p % size)) {
            size *= 2;
        }
        size /= 2;
        if (size < minsize)
            minsize = size;
        printf("%x: p=%p align=%d\n", i, p, size); 
    }
    printf ("alignment = %d\n", minsize);
    return 0;
}
