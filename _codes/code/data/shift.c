#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
  if (argc != 3) {
    fprintf(stderr, "Usage: %s x n\n", argv[0]);
    exit(0);
  } else {
    long x = (int) strtoul(argv[1], NULL, 0);
    int k = (int) strtoul(argv[2], NULL, 0);
    long arval = (x >> k);
    unsigned long lrval = (long unsigned) x >> k;
    long lval = (x << k);
    printf("x = 0x%lx, k = %d:\n", x, k);
    printf("\tleft:\t0x%lx\n", lval);
    printf("\tlog:\t0x%lx\n", lrval);
    printf("\tarith:\t0x%lx\n", arval);
  }
  return 0;
}
