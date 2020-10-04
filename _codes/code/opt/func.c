#include <stdio.h>
#include <stdlib.h>

/* $begin func */
long f();

long func1() {
    return f() + f() + f() + f();
}

long func2() {
    return 4*f();
}
/* $end func */

/* $begin f */
long counter = 0;

long f() {
    return counter++;
}
/* $end f */

/* $begin func1in */
/* Result of inlining f in func1 */
long func1in() {
    long t = counter++; /* +0 */
    t += counter++;     /* +1 */
    t += counter++;     /* +2 */
    t += counter++;     /* +3 */
    return t;
}
/* $end func1in */

/* $begin func1opt */
/* Optimization of inlined code */
long func1opt() {
    long t = 4 * counter + 6;
    counter += 4;
    return t;
}
/* $end func1opt */

int main(int argc, char *argv[]) {
    int ival = 0;
    if (argc > 0)
	ival = atoi(argv[1]);
    counter = ival; printf("func1 -> %ld, counter = %ld\n", func1(), counter);
    counter = ival; printf("func2 -> %ld, counter = %ld\n", func2(), counter);
    counter = ival; printf("func1in -> %ld, counter = %ld\n", func1in(), counter);
    counter = ival; printf("func1opt -> %ld, counter = %ld\n", func1opt(), counter);
    return 0;
}
