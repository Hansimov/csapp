#include "csapp.h"

/* $begin fork2 */
/* $begin wasidefork2 */
int main() 
{
    Fork();
    Fork();
    printf("hello\n");
    exit(0);
}
/* $end fork2 */
/* $end wasidefork2 */
