#include <stdio.h>
#include <stdlib.h>



int main() 
{
    printf("sizeof(unsigned) = %ld\n", sizeof(unsigned));
    printf("sizeof(size_t) = %ld\n", sizeof(size_t));
    printf("sizeof(ssize_t) = %ld\n", sizeof(ssize_t));
    printf("sizeof(int) = %ld\n", sizeof(int));
    printf("sizeof(long int) = %ld\n", sizeof(long int));
    printf("sizeof(char) = %ld\n", sizeof(char));
    printf("sizeof(short) = %ld\n", sizeof(short));
    printf("sizeof(float) = %ld\n", sizeof(float));
    printf("sizeof(double) = %ld\n", sizeof(double));
    printf("sizeof(long double) = %ld\n", sizeof(long double));
    printf("sizeof(char *) = %ld\n", sizeof(char *));
    exit(0);
}

