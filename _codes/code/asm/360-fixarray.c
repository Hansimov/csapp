/* Array Dimensions Problem */

#define M 5
#define N 7


/* $begin 360-fixarray-c */
long P[M][N];
long Q[N][M];

long sum_element(long i, long j) {
    return P[i][j] + Q[j][i];
}
/* $end 360-fixarray-c */
