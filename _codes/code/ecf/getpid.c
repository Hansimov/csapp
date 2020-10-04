#include "csapp.h"

int main() 
{
    pid_t pid = getpid();
    pid_t ppid = getppid();

    printf("pid=%d ppid=%d\n", pid, ppid);

    exit(0);
}
