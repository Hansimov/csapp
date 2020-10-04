
#ifdef PWR2
#define N 64
#else
#define N 60
#endif

/* $begin missrate */
typedef int array_t[N][N];

int sumA(array_t a)
{
    int i, j;
    int sum = 0;
    for (i = 0; i < N; i++)
	for (j = 0; j < N; j++) {
	    sum += a[i][j];
	}
    return sum;
}

int sumB(array_t a)
{
    int i, j;
    int sum = 0;
    for (j = 0; j < N; j++) 
	for (i = 0; i < N; i++) {
	    sum += a[i][j];
	}
    return sum;
}

int sumC(array_t a)
{
    int i, j;
    int sum = 0;
    for (j = 0; j < N; j+=2) 
	for (i = 0; i < N; i+=2) {
	    sum += (a[i][j] + a[i+1][j]
		    + a[i][j+1] + a[i+1][j+1]);
	}
    return sum;
}
/* $end missrate */
