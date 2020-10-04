#include <stdlib.h>
#include <stdio.h>

long leaf(long y) {
    return y+2;
}

long top(long x) {
    return 2 * leaf(x-5);
}




int main(int argc, char *argv[]) {
    long cval = top(100);
    printf("top(100) --> %ld\n", cval);
    return 0;
}
