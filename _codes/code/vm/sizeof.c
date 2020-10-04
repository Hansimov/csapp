#include <stdio.h>

int main()
{
    printf("char       : %ld\n", (long)sizeof(char));
    printf("short      : %ld\n", (long)sizeof(short));
    printf("int        : %ld\n", (long)sizeof(int));
    printf("long       : %ld\n", (long)sizeof(long));
    printf("char *     : %ld\n", (long)sizeof(char *));
    printf("float      : %ld\n", (long)sizeof(float));
    printf("double     : %ld\n", (long)sizeof(double));
    printf("long double: %ld\n", (long)sizeof(long double));
    return 0;
}
