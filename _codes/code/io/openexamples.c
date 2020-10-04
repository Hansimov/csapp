#include "csapp.h"

int main()
{
    int fd;

    /* Open an existing file for reading */
    /* $begin openread */
    fd = Open("foo.txt", O_RDONLY, 0);
    /* $end openread */

    /* Open an existing file for appending */
    /* $begin openappend */
    fd = Open("foo.txt", O_WRONLY|O_APPEND, 0);
    /* $end openappend */

    /* Create a new file for writing */
    /* $begin opencreate */
    umask(DEF_UMASK);
    fd = Open("foo.txt", O_CREAT|O_TRUNC|O_WRONLY, DEF_MODE);
    /* $end opencreate */

    printf("fd = %d\n", fd);
    exit(0);
}
