#include <stdio.h>
#include <stdlib.h>

/* $begin opt-arith-ans */
#define M 31
#define N 8
/* $end opt-arith-ans */

#if 0

/* $begin opt-arith-ques */
#define M      /* Mystery number 1 */
#define N      /* Mystery number 2 */
/* $end opt-arith-ques */

#endif

/* $begin opt-arith-ques */
int arith(int x, int y) {
    int result = 0;
    result = x*M + y/N; /* M and N are mystery numbers. */
    return result;
}
/* $end opt-arith-ques */

#define MB 15
#define NB 4

int arithb(int x, int y) {
    int result = 0;
    result = x*MB + y/NB; /* M and N are mystery numbers. */
    return result;
}

/* $begin opt-arith-pseudo-a */
/* $begin opt-arith-pseudo-b */
/* Translation of assembly code for arith */
int optarith(int x, int y) {
     /* $end opt-arith-pseudo-b */
    int t = x;
    x <<= 5;
    x -= t;
    if (y < 0) y += 7;
    y >>= 3;  /* Arithmetic shift */
    return x+y;
}
/* $end opt-arith-pseudo-a */

/* Translation of assembly code for arith */
int optarithb(int x, int y) {
     /* $begin opt-arith-pseudo-b */
    int t = x;
    x <<= 4;
    x -= t;
    if (y < 0) y += 3;
    y >>= 2;  /* Arithmetic shift */
    return x+y;
}
/* $end opt-arith-pseudo-b */

int main(int argc, char *argv[]) {
    int x = atoi(argv[1]);
    int y = atoi(argv[2]);
    int a = arith(x,y);
    int b = optarith(x,y);
    if (a != b)
	printf("Whoops! ");
    printf("A: x = %d, y = %d, normal --> %d, opt --> %d\n", x, y, a, b);

    a = arithb(x,y);
    b = optarithb(x,y);
    if (a != b)
	printf("Whoops! ");
    printf("B: x = %d, y = %d, normal --> %d, opt --> %d\n", x, y, a, b);

    return 0;
}
