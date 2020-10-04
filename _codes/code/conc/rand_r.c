#include <stdio.h>
#include <stdlib.h>

/* $begin rand_r */
/* rand_r - return pseudorandom integer on 0..32767 */
int rand_r(unsigned int *nextp)
{
    *nextp = *nextp * 1103515245 + 12345;
    return (unsigned int)(*nextp / 65536) % 32768;
}
/* $end rand_r */

int main()
{
    unsigned int next = 1;

    printf("%d\n", rand_r(&next));
    printf("%d\n", rand_r(&next));
    printf("%d\n", rand_r(&next));
    exit(0);
}

