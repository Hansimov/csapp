/* Implementation of constant division */
#include <stdio.h>
#include <stdlib.h>

/* $begin div8 */
int div8(int x) {
    /* Compute bias to be either 0 (x >= 0) or 7 (x < 0) */
    int bias = (x >> 31) & 0x7;
    return (x + bias) >> 3;
}
/* $end div8 */

/* $begin div16 */
int div16(int x) {
    /* Compute bias to be either 0 (x >= 0) or 15 (x < 0) */
    int bias = (x >> 31) & 0xF;
    return (x + bias) >> 4;
}
/* $end div16 */

int div2k(int x, int k)
{
  return (x<0 ? x+(1<<k)-1 : x) >> k;
}


int main(int argc, char *argv[]) {
  int i;
  for (i = 1; i < argc; i++) {
    int x = strtol(argv[i], NULL, 0);
    int x8 = div8(x);
    int x16 = div16(x);
    printf("x = %d, x/8 = %d, x/16 = %d\n", x, x8, x16);
    x8 = div2k(x,3);
    x16 = div2k(x,4);
    //    printf("Alternate: x = %d, x/8 = %d, x/16 = %d\n", x, x8, x16);
  }
  return 0;
}
