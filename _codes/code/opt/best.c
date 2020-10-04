#include <stdio.h>
#include <stdlib.h>

/* Experiments with conditionals */

/* Find minimum or maximum element in array.  Assume n > 0 */
/* Keep updating destination value */
void best1(int *data, int n, int find_max, int *resultp)
{
    long int i;
    *resultp = data[0];
    for (i = 1; i < n; i++) {
	if (data[i] > *resultp && find_max ||
	    data[i] < *resultp && find_max)
	    *resultp = data[i];
    }
}

/* Find minimum or maximum element in array.  Assume n > 0 */
/* Accumulate result in local variable */
void best2(int *data, int n, int find_max, int *resultp)
{
    long int i;
    int result = data[0];
    for (i = 1; i < n; i++) {
	if (data[i] > result && find_max ||
	    data[i] < result && find_max)
	    result = data[i];
    }
    *resultp = result;
}

/* Find minimum or maximum element in array.  Assume n > 0 */
/* Reorder conditional tests */
void best3(int *data, int n, int find_max, int *resultp)
{
    long int i;
    int result = data[0];
    for (i = 1; i < n; i++) {
	if (find_max  && data[i] > result  ||
	    !find_max && data[i] < result)
	    result = data[i];
    }
    *resultp = result;
}

/* Find minimum or maximum element in array.  Assume n > 0 */
/* Split apart conditional cases */
void best4(int *data, int n, int find_max, int *resultp)
{
    long int i;
    int result = data[0];
    for (i = 1; i < n; i++) {
	if (find_max) {
	    if (data[i] > result) result = data[i];
	} else {
	    if (data[i] < result) result = data[i];
	}
    }
    *resultp = result;
}

/* Find minimum or maximum element in array.  Assume n > 0 */
/* Split into two loops */
void best5(int *data, int n, int find_max, int *resultp)
{
    long int i;
    int result = data[0];
    if (find_max) {
	for (i = 1; i < n; i++)
	    if (data[i] > result) result = data[i];
    } else {
	for (i = 1; i < n; i++)
	    if (data[i] > result) result = data[i];
    }
    *resultp = result;
}

/* Find minimum or maximum element in array.  Assume n > 1 */
/* Accumulate two values in parallel */
void best6(int *data, int n, int find_max, int *resultp)
{
    long int i;
    int result0 = data[0];
    int result1 = data[1];
    for (i = 1; i < n-1; i+=2) {
	if (find_max) {
	    if (data[i]   > result0)  result0 = data[i];
	    if (data[i+1] > result1)  result1 = data[i+1];
	} else {
	    if (data[i]   < result0)  result0 = data[i];
	    if (data[i+1] < result1)  result1 = data[i+1];
	}
    }
    for (; i < n; i++) {
	if (find_max) {
	    if (data[i] > result0)  result0 = data[i];
	} else {
	    if (data[i] < result0)  result0 = data[i];
	}
    }
    if (find_max) {
	if (result1 > result0)  result0 = result1;
    } else {
	if (result1 < result0)  result0 = result1;
    }
    *resultp = result0;
}

/* Find minimum or maximum element in array.  Assume n > 1 */
/* Accumulate two values in parallel */
void best7(int *data, int n, int find_max, int *resultp)
{
    long int i;
    int result0 = data[0];
    int result1 = data[1];
    if (find_max) {
	for (i = 1; i < n-1; i+=2) {
	    if (data[i]   > result0)  result0 = data[i];
	    if (data[i+1] > result1)  result1 = data[i+1];
	}
	for (; i < n; i++) {
	    if (data[i] > result0)  result0 = data[i];
	}
	if (result1 > result0)  result0 = result1;
    } else {
	for (i = 1; i < n-1; i+=2) {
	    if (data[i]   < result0)  result0 = data[i];
	    if (data[i+1] < result1)  result1 = data[i+1];
	}
	for (; i < n; i++) {
	    if (data[i] < result0)  result0 = data[i];
	}
	if (result1 < result0)  result0 = result1;
    }
    *resultp = result0;
}

#define LEN 1024
/* Completely random */
int random_data[LEN];
/* On each step, randomly achieve new min or new max */
int ranminmax_data[LEN];

static void random_init() {
    /* Fill with random data */
    int i;
    for (i = 0; i < LEN; i++)
	random_data[i] = random();
}

static void ranminmax_init() {
    int min_sofar = 0;
    int max_sofar = 0;
    ranminmax_data[0] = 0;
    for (i = 1; i < LEN; i++) {
	if (random() & 0x1)
	    ranminmax_data[i] = ++max_sofar;
	else
	    ranminmax_data[i] = --max_sofar;
    }
}

static void init() {
    random_init();
    ranminmax_init();
}


