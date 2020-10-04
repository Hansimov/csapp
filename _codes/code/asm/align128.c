/* Testing of alignments */

#include <stdio.h>
#include <stdlib.h>

typedef unsigned __int128 uint128_t;

typedef struct {
    uint128_t big;
    int small;
} test_struct;


int main() {
    printf("Test structure has size %d\n", (int) sizeof(test_struct));

    int i;
    printf("Incrementing\n");
    for (i = 4; i < 64; i+=4) {
	printf("Allocated %d block at address %p\n",
	       i, malloc(i));
    }
    printf("Nonlinear\n");
    for (i = 16; i < 64; i+=16) {
	printf("Allocated %d block at address %p\n",
	       2*i, malloc(2*i));
	printf("Allocated %d block at address %p\n",
	       i, malloc(i));
    }

}
