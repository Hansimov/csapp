/* Benchmark factorials */
#include <stdio.h>
#include "cpe.h"

#define ASIZE 1024

long rfact(long n)
{
    if (n <= 1)
	return 1;
    return n * rfact(n-1);
}

/* $begin fact */
long fact(long n)
{
    long i;
    long result = 1;

    for (i = 2; i <= n; i++)
	result = result * i;
    return result;
}
/* $end fact */

/* $begin fact_u2 */
long fact_u2a(long n)
{
    long i;
    long result = 1;

    for (i = 2; i <= n-1; i +=2) {
	result = (result * i) * (i+1);
    }
    for (; i <= n; i++)
	result *= i;
    return result;
}
/* $end fact_u2 */

long fact_u2b(long n)
{
    long i;
    long result = 1;

    for (i = 2; i <= n-1; i +=2) {
	/* $begin fact_u2line */
	result = result * (i * (i+1));
	/* $end fact_u2line */
    }
    for (; i <= n; i++)
	result *= i;
    return result;
}

long fact_u2c(long n)
{
    long i;
    long result0 = 1;
    long result1 = 1;

    for (i = 2; i <= n-1; i+=2) {
	result0 *= i;
	result1 *= (i+1);
    }
    for (; i <= n; i++)
	result0 *= i;
    return result0 * result1;
}


long fact_u3a(long n)
{
    long i;
    long result = 1;

    for (i = 2; i <= n-2; i +=3) {
	result = (result * i) * (i+1) * (i+2);
    }
    for (; i <= n; i++)
	result *= i;
    return result;
}

long fact_u3b(long n)
{
    long i;
    long result = 1;

    for (i = 2; i <= n-2; i +=3) {
	result = result * (i * (i+1) * (i+2));
    }
    for (; i <= n; i++)
	result *= i;
    return result;
}

long fact_u3c(long n)
{
    long i;
    long result0 = 1;
    long result1 = 1;
    long result2 = 1;

    for (i = 2; i <= n-2; i+=3) {
	result0 *= i;
	result1 *= (i+1);
	result2 *= (i+2);
    }
    for (; i <= n; i++)
	result0 *= i;
    return result0 * result1 * result2;
}

/* Strange version to test partial expansion of recursion */
long rfact_a(long n)
{
    if (n <= 1)
	return 1;
    return n * -rfact_a(n-1);
}



typedef long (*fact_fun)(long);

#define TEST_COUNT 9

static fact_fun funs[TEST_COUNT] =
    { rfact, fact,
      fact_u2a, fact_u2b, fact_u2c,
      fact_u3a, fact_u3b, fact_u3c,
      rfact_a
    };
    

static char *test_descr[TEST_COUNT] =
    {
	"Recursive",
	"Iterative",
	"Unroll 2X Assoc 1",
	"Unroll 2X Assoc 2",
	"Unroll 2X Split",
	"Unroll 3X Assoc 1",
	"Unroll 3X Assoc 2",
	"Unroll 3X Split",
	"Expansion of recursion"
    };


long idx = 0;

static void test(long n)
{
    funs[idx](n);
}

/* Perform functional test of factorial function i */
static void ftest(long i)
{
    long n;
    for (n = 0; n < 10; n++) {
	if (funs[i](n) != rfact(n)) {
	    printf("Oops.  %ld! yields %ld, should be %ld\n",
		   n, funs[i](n), rfact(n));
	    break;
	}
    }
}

static void run_test(long i) 
{
    double cpe;
    printf("Description: %s, ",
	   test_descr[i]);
    idx = i;
    cpe = find_cpe(test, ASIZE);
    /* print results */
    printf("CPE = %.2f\n", cpe);
    ftest(i);
}

int main()
{
    int i;
    for (i = 0; i < TEST_COUNT; i++)
	run_test(i);
    return 0;
}
