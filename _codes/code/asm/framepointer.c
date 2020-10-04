#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void print_str(char *s);

/* Variable stack frame incurred by alloca call */
void print_rev_aa(char *s) {
    size_t len = strlen(s);
    char *buf = alloca(len+1);
    size_t i;
    for (i = 0; i < len; i++)
	buf[len-i] = s[i];
    /* Add terminating null character */
    buf[len] = '\0';
    print_str(buf);
}

/* Dynamic arrays */
/* Variable stack frame incurred by alloca call */
void print_rev_da(char *s) {
    size_t len = strlen(s);
    char buf[len+1];
    size_t i;
    for (i = 0; i < len; i++)
	buf[len-i] = s[i];
    /* Add terminating null character */
    buf[len] = '\0';
    print_str(buf);
}

/* Variable stack frame incurred by alloca call */
void print_revn_aa(char *s, size_t n) {
    char *buf = alloca(n+1);
    size_t i;
    for (i = 0; i < n; i++)
	buf[n-i] = s[i];
    /* Add terminating null character */
    buf[n] = '\0';
    print_str(buf);
}

/* Dynamic arrays */
/* Variable stack frame incurred by alloca call */
void print_revn_da(char *s, size_t n) {
    char buf[n+1];
    size_t i;
    for (i = 0; i < n; i++)
	buf[n-i] = s[i];
    /* Add terminating null character */
    buf[n] = '\0';
    print_str(buf);
}
