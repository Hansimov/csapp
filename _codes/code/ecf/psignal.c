#include "csapp.h"

int main() 
{
    int i;
    char buf[128];

    for (i = 1; i < 31; i++) {
	sprintf(buf, "%2d", i);
	psignal(i, buf);
    }
    return 0;
}
