#include <stdio.h>
#include <stdlib.h>

long __get_clockfreq();

int main() {
  long f = __get_clockfreq();
  printf("%ld\n", f);
  return 0;
}
