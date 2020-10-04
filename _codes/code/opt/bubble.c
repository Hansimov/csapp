/* Bubbule sort as example of conditional operations */

#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include "clock.h"

void bubble1(int a[], int n) {
    int i, j;
    for (i = n-1; i > 0; i--)
	for (j = 0; j < i; j++) {
	    if (a[j] > a[j+1]) {
		int t  = a[j];
		a[j]   = a[j+1];
		a[j+1] = t;
	    }
	}
}

void bubble2(int a[], int n) {
    int i, j;
    for (i = n-1; i > 0; i--)
	for (j = 0; j < i; j++) {
	    int naj  = a[j] > a[j+1] ? a[j+1] : a[j];
	    int naj1 = a[j] > a[j+1] ? a[j]   : a[j+1];
	    a[j]   = naj;
	    a[j+1] = naj1;
	}
}

int bubcnt(int a[], int n) {
    int i, j;
    int comparisons = 0;
    int swaps = 0;
    for (i = n-1; i > 0; i--)
	for (j = 0; j < i; j++) {
	    comparisons++;
	    if (a[j] > a[j+1]) {
		int t = a[j];
		a[j] = a[j+1];
		a[j+1] = t;
		swaps++;
	    }
	}
    printf("%d comparisions, %d swaps, ratio = %.2f\n",
	   comparisons, swaps, (double) swaps/comparisons);
    return comparisons;
}

#define LEN 100
int a0[LEN], a1[LEN], a2[LEN];


void init(unsigned seed) {
    int i;
    if (seed <= 1) {
	int val = 0;
	int incr = seed ? 1 : -1;
	for (i = 0; i < LEN; i++) {
	    a0[i] = a1[i] = a2[i] = val+=incr;
	}
    } else {
	srandom(seed);
	for (i = 0; i < LEN; i++) {
	    a0[i] = a1[i] = a2[i] = random();
	}
    }
}

void show(char *label, int a[], int n) {
    int i;
    printf("%s: ", label);
    for (i = 0; i < n; i++)
	printf("%d ", a[i]);
    printf("\n");
}

void run(int len, int trials, unsigned seed) {
    double t1, t2;
    int t, comp = 0;
    for (t = 0; t < trials; t++) {
	init(seed);
	if (t == 0) {
	    if (len <= 10) {
		show("Before ", a1, len);
	    }
	    comp = bubcnt(a0, len);
	}
	start_counter();
	bubble1(a1, len);
	t1 = get_counter();
	start_counter();
	bubble2(a2, len);
	t2 = get_counter();
	if (t == 0 && len <= 10) {
	    show("Bubble1", a1, len);
	    show("Bubble2", a2, len);
	}
	printf("%d\t%.2f\t%.2f\n", len, t1/comp, t2/comp);
    }
}

int main(int argc, char *argv[]) {
    int len = LEN;
    int trials = 3;
    unsigned seed = 1;
    if (argc > 1)
	len = atoi(argv[1]);
    if (argc > 2)
	trials = atoi(argv[2]);
    if (argc > 3)
	seed = atoi(argv[3]);
    run(len, trials, seed);
    return 0;
}
