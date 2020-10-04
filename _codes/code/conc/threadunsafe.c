/*
 * threadunsafe.c - demonstrates that various functions are thread-unsafe
 * because they always return the same address 
 */
#include "csapp.h"

int main() {
    struct tm tm;
    time_t time_t;
    struct in_addr addr;

    printf("asctime       : %p\n", asctime(&tm));
    printf("ctime         : %p\n", ctime(&time_t));
    printf("localtime     : %p\n", localtime(&time_t));
    printf("gethostbyname : %p\n", gethostbyname("localhost"));

    inet_aton("127.0.0.1", &addr);
    printf("gethostbyaddr : %p\n", 
	   gethostbyaddr((const char *)&addr,
			 sizeof(struct in_addr), AF_INET));

    printf("inet_ntoa     : %p\n", inet_ntoa(addr));
    exit(0);
}
