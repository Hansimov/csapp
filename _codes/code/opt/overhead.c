#include <stdio.h>
#include <stdlib.h>
#include "clock.h"


volatile int sink = 0;

double overhead() {
    start_counter();
    //    sink ++;
    return get_counter();
    
}

void run(int cnt) {
    int i;
    for (i = 0; i < cnt; i++) {
	double t = overhead();
	printf("%.0f cycles\n", t);
    }
}

int main (int argc, char *argv[]) {
    int cnt = 10;
    if (argc > 1)
	cnt = atoi(argv[1]);
    run(cnt);
    return 0;
}
