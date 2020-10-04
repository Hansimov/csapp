#include <stdio.h>
#include <stdlib.h>

/* Classic recursion */
long euclid_rec1(long a, long b) {
    if (b == 0)
	return a;
    return euclid_rec1(b, a % b);
}



/* Using local variable to store result */
long euclid_store1_helper(long a, long b, long *dest) {
    long result;
    if (b == 0)
	result = a;
    else
	euclid_store1_helper(b, a % b, &result);
    *dest = result;
}

long euclid_store1(long a, long b) {
    long result;
    euclid_store1_helper(a, b, &result);
    return result;
}


/* Using local variable to store result and to save arguments */
long euclid_store2_helper(long args[2], long *dest) {
    long result;
    long a = args[0];
    long b = args[1];
    if (b == 0)
	result = args[0];
    else {
	long nargs[] = {b, a % b};
	euclid_store2_helper(nargs, &result);
    }
    *dest = result;
}

long euclid_store2(long a, long b) {
    long result;
    long args[] = {a,  b};
    euclid_store2_helper(args, &result);
    return result;
}


typedef long (*efun_t)(long, long);


efun_t funs[] = {euclid_rec1, euclid_store1, euclid_store2, NULL};

int main(int argc, char *argv[]) {
    int a = 1;
    int b = 1;
    if (argc > 1)
	a = atoi(argv[1]);
    if (argc > 2)
	b = atoi(argv[2]);
    int i;
    for (i = 0; funs[i] != NULL; i++) {
	printf("Version %d.  GCD(%d, %d) = %d\n",
	       i, a, b, funs[i](a, b));
    }
    return 0;
}

