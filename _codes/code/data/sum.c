#include <stdlib.h>
#include <stdio.h>

/* $begin sum */
int sum(int x, int y) {
    return x + y;
}
/* $end sum */

int main(int argc, char *argv[]) 
{
    int val = 0;
    int i;

    for (i = 1; i < argc; i++) {
	int x = atoi(argv[i]);
	val = sum(val, x);
    }
    printf("Sum = %d\n", val);
    return 0;
}
