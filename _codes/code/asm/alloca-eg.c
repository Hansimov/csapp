#include <stdlib.h>
#include <stdio.h>

/* Variable stack frame incurred by alloca call */
void print_rev(char *s) {
    size_t len = strlen(s);
    char *buf = alloca(len+1);
    size_t i;
    for (i = 0; i < len; i++)
	buf[len-i] = s[i];
    /* Add terminating null character */
    buf[len] = '\0';
    printf(buf);
}
