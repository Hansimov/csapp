/* $begin forkprob4 */
#include "csapp.h"

void doit() 
{
    Fork();
    Fork();
    printf("hello\n");
    return;
}

int main() 
{
    doit();
    printf("hello\n");
    exit(0);
}
/* $end forkprob4 */


