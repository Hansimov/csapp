#include <stdio.h>
#include <stdlib.h>
#include "clock.h"

#define NVALS 10

int main(int argc, char *argv[]) {
    int n = 1;
    double cvals[NVALS];
    int ccnts[NVALS];
    int nval = 0;
    if (argc > 1) {
	n = atoi(argv[1]);
    }
    int i, j;
    for (i = 0; i < n; i++) {
	double c = mhz(1) / 1000.0;
	int found = 0;
	for (j = 0; !found && j < nval; j++) {
	    if (found = (c == cvals[j]))
		ccnts[j]++;
	}
	if (!found) {
	    cvals[nval] = c;
	    ccnts[nval++] = 1;
	}
	int stime = random() & 0x7;
	printf("Sleeping for %d seconds\n", stime);
	sleep(stime);
    }
    if (nval == 1) {
	printf("Stable clock rate = %.2f\n", cvals[0]);
    } else {
	printf("Multiple clock rates measured:");
	for (j = 0; j < nval; j++) {
	    printf(" %.2f (%d times)", cvals[j], ccnts[j]);
	}
	printf("\n");
    }
    return 0;
}
