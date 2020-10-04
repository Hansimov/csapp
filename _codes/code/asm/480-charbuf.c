#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* $begin 480-charbuf-c */
int len(char *s) {
    return strlen(s);
}

void iptoa(char *s, long *p) {
    long val = *p;
    sprintf(s, "%ld", val);
}

int intlen(long x) {
    long v;
    char buf[12];
    v = x;
    iptoa(buf, &v);
    return len(buf);
}
/* $end 480-charbuf-c */

void itoa(char *s, int x)
{
    sprintf(s, "%d", x);
}

void storeint(int val, int *dest)
{
    *dest  = val;
}

int intlen2(int x) {
    int v;
    char buf[12];
    storeint(x, &v);
    itoa(buf, v);
    return len(buf);
}

