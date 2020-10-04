#include <stdlib.h>
#include <stdio.h>


long last(long u, long v) {
    return u*v;
}

long first(long x) {
    return last(x-1, x+1);
}

int main(int argc, char *argv[]) {
    long cval = first(10);
    printf("first(10) --> %ld\n", cval);
    return 0;
}
