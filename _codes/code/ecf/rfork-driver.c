#include <stdio.h>
#include <stdlib.h>

#define ITERS 10

int main()
{
    pid_t pid;
    int i;

    for (i = 0; i < ITERS; i++) {
	printf("Test %d\n", i);
	fflush(stdout);
	
	/* Child */
	if (Fork() == 0) {
	    printf("C%d\n", i);
	    fflush(stdout);
	    exit(0);
	}

	/* Parent */
	else { 
	    printf("P%d\n", i);
	    fflush(stdout);
	}
	fflush(stdout);
	wait();
	fflush(stdout);
    }

    printf("\n");
    fflush(stdout);
    exit(0);
}
