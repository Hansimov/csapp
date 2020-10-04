/* $begin staticsize */
#include "csapp.h"
#define MAXN 15213

int array[MAXN];

int main() 
{
    int i, n;

    scanf("%d", &n);
    if (n > MAXN)
        app_error("Input file too big");
    for (i = 0; i < n; i++) 
        scanf("%d", &array[i]);         
    exit(0);
}
/* $end staticsize */

