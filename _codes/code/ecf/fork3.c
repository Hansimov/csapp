#include "csapp.h"

/* $begin fork3 */
int main() 
{
    Fork();
    Fork();
    Fork();
    printf("hello\n");
    exit(0);
}
/* $end fork3 */

