#include <stdio.h>
#include <stdlib.h>
#include <string.h>

volatile int incr = 1;
volatile int val = 0;

/* Induce load on processor to have it set clock rate to maximum */
/* How many steps to run? */
#define STEP_CNT (1<<30)

void burn_cpu() {
    int i;
    val = 0;
    incr = random() & 0x7;
    for (i = 0; i < STEP_CNT; i++)
	val *= incr;
}

/* Get megahertz from /etc/proc */
#define MAXBUF 512

double get_mhz() {
    static char buf[MAXBUF];
    double cpu_mhz = 0.0;
    FILE *fp = fopen("/proc/cpuinfo", "r");

    if (!fp) {
	fprintf(stderr, "Can't open /proc/cpuinfo to get clock information\n");
	return cpu_mhz;
    }
    while (fgets(buf, MAXBUF, fp)) {
	if (strstr(buf, "cpu MHz")) {
	    sscanf(buf, "cpu MHz\t: %lf", &cpu_mhz);
	    break;
	}
    }
    fclose(fp);
    if (cpu_mhz == 0.0) {
	fprintf(stderr, "Can't open /proc/cpuinfo to get clock information\n");
    }
    return cpu_mhz;
}

struct timespec last_time;

int main(int argc, char *argv[]) {
  int nmeas = 100;
  if (argc > 1)
    nmeas = atoi(argv[1]);
  int i;
  double max_mhz = 0.0;
  for (i = 0; i < nmeas; i++) {
    double mhz = get_mhz();
    if (mhz > max_mhz)
      max_mhz = mhz;
    printf("%d\t%.2f\t%.2f\n", i, mhz, max_mhz);
    burn_cpu();
  }
  return 0;
}
