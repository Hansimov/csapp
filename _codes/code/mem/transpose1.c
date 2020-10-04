/* $begin transpose1 */
typedef int array[2][2];

void transpose1(array dst, array src) 
{
    int i, j;

    for (i = 0; i < 2; i++) {
	for (j = 0; j < 2; j++) {
	    dst[j][i] = src[i][j];
	}
    }
}
/* $end transpose1 */
