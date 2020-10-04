#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <inttypes.h>

/* Determine whether arguments can be multiplied without overflow */
int cmult_ok(char x, char y) {
    char p = x*y;
    /* Either x is zero, or dividing p by x gives y */
    return !x || p/x == y;
}

/* Second version of checking code */
/* Determine whether arguments can be multiplied without overflow */
int cmult_ok2(char x, char y) {
    if (x == 0 || y == 0)
	return 1;
    if (x < 0 && y < 0)
	return CHAR_MAX / x <= y;
    if (x < 0 && y > 0)
	return CHAR_MIN / x >= y;
    if (x > 0 && y < 0)
	return CHAR_MIN / x <= y;
    else
	return CHAR_MAX / x >= y;
}

/* Third version of checking code */
/* Determine whether arguments can be multiplied without overflow */
int cmult_ok3(char x, char y) {
    if (x == 0 || y == 0)
	return 1;
    int xneg = x < 0;
    int yneg = y < 0;
    int pneg = xneg ^ yneg; /* Sign of x*y */
    int lim = pneg ? CHAR_MIN : CHAR_MAX; /* Limiting value of x*y */
    int div = lim / x;
    /* Compare y to limiting value of quotient */
    return yneg ? div <= y : y >= div;
}

/* Buggy version of checking code */
/* Determine whether arguments can be multiplied without overflow */
/* WARNING: This code is buggy */
int bad_cmult_ok(char x, char y) {
    if (x == 0)
	return 1;
    /* Normalize so that both arguments nonnegative */
    int absx = x < 0 ? x : -x;
    return CHAR_MAX / absx >= y;
}


/* Determine whether arguments can be multiplied without overflow */
int test_cmult_ok(char x, char y) {
    int p = x*y;
    return p >= CHAR_MIN && p <= CHAR_MAX;
}
/* $begin tmult_ok */
/* $begin tmult_ok2 */
/* Determine whether arguments can be multiplied without overflow */
int tmult_ok(int x, int y) {
    /* $end tmult_ok2 */
    int p = x*y;
    /* Either x is zero, or dividing p by x gives y */
    return !x || p/x == y; 
}
/* $end tmult_ok */

/* $begin tmult_ovf */
/* $begin tmult_ovf2 */
/* Determine whether multiplying will cause overflow */
int tmult_ovf(int x, int y) {
    /* $end tmult_ovf2 */
    int p = x*y;
    /* x is nonzero, and dividing p by x does not gives y */
    return x && p/x != y; 
}
/* $end tmult_ovf */
  
/* Determine whether arguments can be multiplied without overflow */
int tmult_ok2(int x, int y) {
    /* $begin tmult_ok2 */
    /* Compute product without overflow */
    int64_t pll = (int64_t) x*y; //line:data:prob:tmult_prod
    /* See if casting to int preserves value */
    return pll == (int) pll;
}
/* $end tmult_ok2 */

/* Determine whether multiplying will cause overflow */
int tmult_ovf2(int x, int y) {
    /* $begin tmult_ovf2 */
    /* Compute product without overflow */
    int64_t pll = (int64_t) x*y; //line:data:prob:tmult_prod
    /* See if casting to int changes value */
    return pll != (int) pll;
}
/* $end tmult_ovf2 */

/* Determine whether arguments can be multiplied without overflow */
int bad_tmult_ok(int x, int y) {
    /* Compute product without overflow */
    /* $begin bad_tmult_prod */
    int64_t pll = x*y;
    /* $end bad_tmult_prod */
    /* See if casting to int preserves value */
    return pll == (int) pll;
}

int main() {
    int x, y;
    for (x = CHAR_MIN; x <= CHAR_MAX; x++)
	for (y = CHAR_MIN; x <= CHAR_MAX; x++) {
	    char p = x * y;
	    if (cmult_ok(x,y) != test_cmult_ok(x,y)) {
		printf("cmult_ok: Got different results for %d * %d -> %d\n",
		       x, y, p);

		return 0;
	    }
	}
    for (x = CHAR_MIN; x <= CHAR_MAX; x++)
	for (y = CHAR_MIN; x <= CHAR_MAX; x++) {
	    char p = x * y;
	    if (cmult_ok2(x,y) != test_cmult_ok(x,y)) {
		printf("cmult_ok2: Got different results for %d * %d -> %d\n",
		       x, y, p);

		return 0;
	    }
	}
    for (x = CHAR_MIN; x <= CHAR_MAX; x++)
	for (y = CHAR_MIN; x <= CHAR_MAX; x++) {
	    char p = x * y;
	    if (cmult_ok3(x,y) != test_cmult_ok(x,y)) {
		printf("cmult_ok3: Got different results for %d * %d -> %d\n",
		       x, y, p);

		return 0;
	    }
	}
    for (x = CHAR_MIN; x <= CHAR_MAX; x++)
	for (y = CHAR_MIN; x <= CHAR_MAX; x++) {
	    char p = x * y;
	    if (bad_cmult_ok(x,y) != test_cmult_ok(x,y)) {
		printf("bad_cmult_ok: Got different results for %d * %d -> %d\n",
		       x, y, p);

		return 0;
	    }
	}
    printf("All OK\n");
    return 0;
}
