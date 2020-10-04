#include <stdio.h>
#include <stdlib.h>

/* Example showing bug with unsigned */

/* $begin bad-sum */
/* WARNING: This is buggy code */
float sum_elements(float a[], unsigned length) {
    int i;
    float result = 0;

    for (i = 0; i <= length-1; i++)
	result += a[i];
    return result;
}
/* $end bad-sum */

float a[5] = { 1.0, 2.0, 3.0, 4.0, 5.0};

void test(unsigned limit) 
{
    float x = sum_elements(a, limit);

    printf("First %u elements sum to %f\n", limit, x);
}

int main(int argc, char *argv[]) {
    int val = 5;

    if (argc > 1)
	sscanf(argv[1], "%d", &val);
    test(val);
    return 0;
}
