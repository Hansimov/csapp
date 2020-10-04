/* Check special values of IEEE format */

/* $begin ieee-defs */
#define _GNU_SOURCE 1
#include <math.h>
/* $end ieee-defs */

#if 0
/* $begin ieee-prob */
#define POS_INFINITY 
#define NEG_INFINITY 
#define NEG_ZERO 
/* $end ieee-prob */
#endif

/* $begin ieee-ans */
#define POS_INFINITY 1e400
#define NEG_INFINITY (-POS_INFINITY)
#define NEG_ZERO (-1.0/POS_INFINITY)
/* $end ieee-ans */

int main()
{
  printf("POS_INFINITY = %f\n", POS_INFINITY);
  printf("NEG_INFINITY = %f\n", NEG_INFINITY);
  printf("NEG_ZERO = %f\n", NEG_ZERO);

  /* from math.h */
  printf("INFINITY = %f\n", INFINITY);
  printf("NAN = %f\n", NAN);
}
