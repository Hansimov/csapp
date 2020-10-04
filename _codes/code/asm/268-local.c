
/* Recursive function.  Store local array */
long int rarray(long int x) {
    if (x <= 0)
	return x;
    volatile long int a[3];
    a[1] = x-1;
    return rarray(x-2) + a[1];
}

/*
  Recursive function.  Store local array.
  Demonstrates where array access is needed.
 */
long int rarray2(long int x) {
    if (x <= 0)
	return x;
    volatile long int a[5];
    a[4] = x & 0x3; /* Between 0 and 3 */
    a[a[0]] = x-1;
    return rarray2(x-2) + a[a[0]];
}

/* Recursive function.
   Local variable on stack */
long int rlvar(long int x) {
    if (x <= 0)
	return x;
    volatile long int xm1 = x-1;
    return rlvar(x-2) + xm1;
}


/* Recursive function.
   Local variable implemented with callee-save register */
long int rcsave(long int x) {
    if (x <= 0)
	return x;
    long int xm1 = x-1;
    return rcsave(x-2) + xm1;
}

/* Recursive function.
   Use local variable to provide addressable storage
*/
long int rlstore(long int *xp) {
    volatile long int nx;
    long int x = *xp;
    if (x <= 0)
	return x;
    nx = x-1;
    return rlstore((long int *) &nx) + 2;
}

/* Recursive function.
   Create variable-length array.
   Requires base pointer
*/
long int rvarray(long int x, long int n) {
    if (x <= 0)
	return x;
    long int a[n];
    a[0] = 17;
    a[n-1] = x;
    return rvarray(x-1, n) + a[0] + a[n-1];
}
