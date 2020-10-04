#include <stdio.h>
#include <stdlib.h>

/* 
 * NOTE: This code may generate a compiler warning about
 * the large constant 2147483648
*/

int main ()
{
    /* $begin printf */
    int x = -1;
    unsigned u = 2147483648; /* 2 to the 31st */

    printf("x = %u = %d\n", x, x);
    printf("u = %u = %d\n", u, u);
    /* $end printf */

    exit(0);
}
