/* Simple illustration of handling of constants */
#include <stdio.h>
#include <stdint.h>

typedef long long ll_t;

void t32() {
  /* $begin constant32_comp_zero */
  int dpos32 = (-2147483648 > 0);
  int hpos32 = (0x80000000  > 0);
  /* $end constant32_comp_zero */
  /* $begin constant32_assign */
  int dtmin32  = -2147483648;
  int dpos32a = (dtmin32 > 0);
  int htmin32  = 0x80000000;
  int hpos32a = (htmin32 > 0);
  /* $end constant32_assign */
  printf("dtmin32 = %d (0x%x)\n", dtmin32, dtmin32);
  printf("htmin32 = %d (0x%x)\n", htmin32, htmin32);
  printf("dpos32 = %d hpos32 = %d\n", dpos32, hpos32);
  printf("dpos32a = %d hpos32a = %d\n", dpos32a, hpos32a);
}

void t64() {
  /* $begin constant64_comp_zero */
  int dpos64 = (-9223372036854775808 > 0);
  int hpos64 = (0x8000000000000000   > 0);
  /* $end constant64_comp_zero */
  /* $begin constant64_assign */
  int64_t dtmin64  = -9223372036854775808;
  int dpos64a = (dtmin64 > 0);
  int64_t htmin64  = 0x8000000000000000;
  int hpos64a = (htmin64 > 0);
  /* $end constant64_assign */
  printf("dtmin64 = %lld (0x%llx)\n", dtmin64, dtmin64);
  printf("htmin64 = %lld (0x%llx)\n", htmin64, htmin64);
  printf("dpos64 = %d, hpos64 = %d\n", dpos64, hpos64);
  printf("dpos64a = %d, hpos64a = %d\n", dpos64a, hpos64a);
}

void hm1() {
    int h32m1 =     -0x7FFFFFFF-1;
    int h32m1pos = (-0x7FFFFFFF-1 > 0);
    printf("h32m1 = %d (0x%x).  h32m1pos = %d\n", h32m1, h32m1, h32m1pos);
    int64_t h64m1 = -0x7FFFFFFFFFFFFFFF-1;
    int h64m1pos = (-0x7FFFFFFFFFFFFFFF-1 > 0);
    printf("h64m1 = %lld (0x%llx).  h64m1pos = %d\n", h64m1, h64m1, h64m1pos);
}

void new_defs32() {
    ll_t valld =
	/* $begin tmin32_defs */
	  2147483647 + 1    /* A. */
	/* $end tmin32_defs */
	;
    ll_t vallh =
	/* $begin tmin32_defs */
	  0x7FFFFFFF + 1    /* B. */
	/* $end tmin32_defs */
	;
    ll_t valhd =
	/* $begin tmin32_defs */
	  2147483649 - 1    /* C. */
	/* $end tmin32_defs */
	;
    ll_t valhh =
	/* $begin tmin32_defs */
	  0x80000001 - 1    /* D. */
	/* $end tmin32_defs */
	;
    ll_t valhdn =
	/* $begin tmin32_defs */
	-(2147483649 - 1)   /* E. */
	/* $end tmin32_defs */
	;
    ll_t valhhn =
	/* $begin tmin32_defs */
	-(0x80000001 - 1)   /* F. */
	/* $end tmin32_defs */
	;
    printf("2147483647 + 1 -> %lld (0x%llx)\n", valld, valld);
    printf("0x7FFFFFFF + 1 -> %lld (0x%llx)\n", vallh, vallh);
    printf("2147483649 - 1 -> %lld (0x%llx)\n", valhd, valhd);
    printf("0x80000001 - 1 -> %lld (0x%llx)\n", valhh, valhh);
    printf("-(2147483649 - 1) -> %lld (0x%llx)\n", valhdn, valhdn);
    printf("-(0x80000001 - 1) -> %lld (0x%llx)\n", valhhn, valhhn);
}


int main(int argc, char *argv[]) {
  printf("word size = %d\n", sizeof(int *) * 8);
  t32();
  t64();
  hm1();
  new_defs32();
  return 0;
}
