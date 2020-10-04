/* $begin cpfile */
#include "csapp.h"

#define LEN 4

int main(int argc, char **argv) 
{
    int n;
    rio_t rio;
    char buf[LEN];

    Rio_readinitb(&rio, STDIN_FILENO);
    while((n = Rio_readlineb(&rio, buf, LEN)) != 0) {
        fprintf(stderr, "n=%d\n", n);
	Rio_writen(STDOUT_FILENO, buf, n);
    }
    /* $end cpfile */
    exit(0);
    /* $begin cpfile */
}
/* $end cpfile */



