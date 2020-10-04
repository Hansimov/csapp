/* Illustration of examples where stack space varies dynamically */

#include <stdlib.h>
#include <string.h>

void reverse_string_mallocchar *s) {
    size_t n = strlen(s);
    char *buf = (char *) malloc(n);
    size_t i;
    for (i = 0; i < n; i++) {
	buf[n-i-1] = s[i];
    }
    for (i = 0; i < n; i++) {
	s[i] = buf[i];
    }
    free(buf);
}

void reverse_string_alloca(char *s) {
    size_t n = strlen(s);
    char *buf = (char *) alloca(n);
    size_t i;
    for (i = 0; i < n; i++) {
	buf[n-i-1] = s[i];
    }
    for (i = 0; i < n; i++) {
	s[i] = buf[i];
    }
}

void reverse_string_array(char *s) {
    size_t n = strlen(s);
    size_t i;
    char buf[n];
    for (i = 0; i < n; i++) {
	buf[n-i-1] = s[i];
    }
    for (i = 0; i < n; i++) {
	s[i] = buf[i];
    }
}
