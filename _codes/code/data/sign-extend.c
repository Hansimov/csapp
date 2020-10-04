#include <stdio.h>
#include <stdlib.h>

/* Code for Sign Extension Problem */

/* $begin sign-extend */
int fun1(unsigned word) {
    return (int) ((word << 24) >> 24);
}

int fun2(unsigned word) {
    return ((int) word << 24) >> 24;    
}
/* $end sign-extend */

int main(int argc, char *argv[])
{
    int i;
    for (i = 1; i < argc; i++) {
	int w = atoi(argv[i]);
	printf("word = %u, fun1(word) = %d, fun2(word) = %d\n",
	       w, fun1(w), fun2(w));
    }
    return 0;
}
