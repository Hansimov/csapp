#include <stdio.h>
#include <stdlib.h>

/* $begin pointstruct */
#define N 1000

typedef struct {
    int vel[3];
    int acc[3];
} point;

point p[N];
/* $end pointstruct */

/* $begin clear1 */
void clear1(point *p, int n) 
{
    int i, j;

    for (i = 0; i < n; i++) {
	for (j = 0; j < 3; j++) 
	    p[i].vel[j] = 0;
	for (j = 0; j < 3; j++) 
	    p[i].acc[j] = 0;
    }
}
/* $end clear1 */

/* $begin clear2 */
void clear2(point *p, int n) 
{
    int i, j;

    for (i = 0; i < n; i++) {
	for (j = 0; j < 3; j++) {
	    p[i].vel[j] = 0;
	    p[i].acc[j] = 0;
	}
    }
}
/* $end clear2 */

/* $begin clear3 */
void clear3(point *p, int n) 
{
    int i, j;

    for (j = 0; j < 3; j++) {
	for (i = 0; i < n; i++)
	    p[i].vel[j] = 0;
	for (i = 0; i < n; i++)
	    p[i].acc[j] = 0;
    }
}
/* $end clear3 */

int main() 
{
    clear1(p, N);
    clear2(p, N);
    clear3(p, N);
    exit(0);
}
