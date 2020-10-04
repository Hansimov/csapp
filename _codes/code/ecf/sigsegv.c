#include "csapp.h"

/* trigger delivery of SIGSEGV signal (Linux "Segmentation fault" message) */
int main() {

    int *a = 0;
    int b = *a;

    printf("b=%d\n", b);
    exit(0);
}
