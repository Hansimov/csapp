#include <stdio.h>
#include <stdlib.h>

/* $begin 130-absdiff_se-c */
long lt_cnt = 0;
long ge_cnt = 0;

long absdiff_se(long x, long y)
{
    long result;
    if (x < y) {
	lt_cnt++;
	result = y - x;
    }
    else {
	ge_cnt++;
	result = x - y; 
    }
    return result;
}
/* $end 130-absdiff_se-c */

/* $begin 130-gotodiff_se-c */
long gotodiff_se(long x, long y)
{
    long result;
    if (x >= y) 
	goto x_ge_y;   //line:asm:abs:goto
    lt_cnt++; //line:asm:abs:lt
    result =  y - x; //line:asm:abs:cyx
    return result;
 x_ge_y: //line:asm:abs:xgey
    ge_cnt++;
    result = x - y;
    return result;
} 
/* $end 130-gotodiff_se-c */

/* $begin 130-gotodiff_se-alt-c */
long gotodiff_se_alt(long x, long y) {
    long result;
    if (x < y)
	goto x_lt_y;
    ge_cnt++;
    result = x - y;
    return result; 
 x_lt_y:
    lt_cnt++;
    result =  y - x;
    return result;
} 
/* $end 130-gotodiff_se-alt-c */

/* Declaration of externally defined versions */
long absdiff(long x, long y);
long cmovdiff(long x, long y);
long absdiff_asm(long x, long y);

int main(int argc, char *argv[]) {
  long x = atoi(argv[1]);
  long y = atoi(argv[2]);
  long z1 = absdiff_se(x,y);
  long z2 = gotodiff_se(x,y);
  long z3 = cmovdiff(x,y);
  long z4 = absdiff(x,y);
  long z5 = absdiff_asm(x,y);
  printf("x = %ld, y = %ld, |x-y| = (%ld,%ld,%ld,%ld,%ld)\n",
	 x, y, z1, z2, z3, z4, z5);
  return 0;
}
