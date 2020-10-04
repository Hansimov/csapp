#include "csapp.h"

/* trigger delivery of SIGFPE signal (Linux "Floating exception" message) */
int main() {
    int a = 1;
    int b = 0;
    int c = a/b;

    printf("c=%d\n", c);
    exit(0);
}
