#include <stdio.h>
#include <stdlib.h>

/* 
 * test - tests the mysystem-ans program
 *   if called with no args, intentionally segfault
 *   otherwise exit status is argv[1]
 */
int main(int argc, char **argv) {

    printf("hello from test (%d)\n", atoi(argv[1]));
    if (argc == 1)
	*(char *)main = 0; /* seg fault */
    else 
	exit(atoi(argv[1]));

    exit(0); /* keeps gcc -W happy */
}
