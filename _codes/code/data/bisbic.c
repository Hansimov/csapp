#include <stdio.h>
#include <stdlib.h>

/* $begin boolop-ans */
/* $begin boolop-template */
/* Declarations of functions implementing operations bis and bic */
int bis(int x, int m);
int bic(int x, int m);

/* $end boolop-template */
/* $end boolop-ans */

/* Code to implement bis (bit set) and bic (bit clear) */

/* $begin bis-ans */
/* $begin bis-template */
/* Bit Set */
int bis(int x, int m) {
/* $end bis-template */
  int result = x | m;
/* $end bis-ans */
#if 0
/* $begin bis-template */
  /* Write an expression in C that computes the effect of bit set */
  int result = ___________;
/* $end bis-template */
#endif 
/* $begin bis-template */
/* $begin bis-ans */
  return result;
}
/* $end bis-template */
/* $end bis-ans */


/* $begin bic-ans */
/* $begin bic-template */
/* Bit Clear */
int bic(int x, int m) {
/* $end bic-template */
  int result = x & ~m;
/* $end bic-ans */
#if 0
/* $begin bic-template */
  /* Write an expression in C that computes the effect of bit clear */
  int result = ___________;
/* $end bic-template */
#endif 
/* $begin bic-template */
/* $begin bic-ans */
  return result;
}
/* $end bic-template */
/* $end bic-ans */

/* OR & XOR using bis & bic */

/* $begin boolop-ans */
/* $begin boolop-template */
/* Compute x|y using only calls to functions bis and bic */
int bool_or(int x, int y) {
/* $end boolop-template */
  int result = bis(x,y);
/* $end boolop-ans */
#if 0
/* $begin boolop-template */
  int result = ___________;
/* $end boolop-template */
#endif
  /* $begin boolop-ans */
  /* $begin boolop-template */
  return result;
}

/* Compute x^y using only calls to functions bis and bic */
int bool_xor(int x, int y) {
/* $end boolop-template */
  int result = bis(bic(x,y), bic(y,x));
/* $end boolop-ans */
#if 0
/* $begin boolop-template */
  int result = ___________;
/* $end boolop-template */
#endif
  /* $begin boolop-ans */
  /* $begin boolop-template */
  return result;
}
/* $end boolop-template */
/* $end boolop-ans */

int main(int argc, char *argv[]) {
  int x, m;
  if (argc != 3) {
    printf("Usage: %s x m\n", argv[0]);
    exit(0);
  }
  sscanf(argv[1], "%x", &x);
  sscanf(argv[2], "%x", &m);
  printf("Bit Set(0x%x, 0x%x) --> 0x%x\n", x, m, bis(x,m));
  printf("Bit Clear(0x%x, 0x%x) --> 0x%x\n", x, m, bic(x,m));
  printf("Or(0x%x, 0x%x) --> 0x%x\n", x, m, bool_or(x,m));
  printf("Xor(0x%x, 0x%x) --> 0x%x\n", x, m, bool_xor(x,m));
  
  return 0;
}
