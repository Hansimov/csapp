/* Check stack variations */
#include <stdio.h>

/* $begin 470-scheck-c */
int main() {
    long local;
    printf("local at %p\n", &local);
    return 0;
}
/* $end 470-scheck-c */
