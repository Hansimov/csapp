
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/* $begin strlen */
/* Prototype for library function strlen */
size_t strlen(const char *s);
/* $end strlen */

/* $begin strlonger */
/* Determine whether string s is longer than string t */
/* WARNING: This function is buggy */
int strlonger(char *s, char *t) {
    return strlen(s) - strlen(t) > 0;  
}
/* $end strlonger */

/* Determine whether string s is longer than string t */
int strlonger2(char *s, char *t) {
    /* $begin strlonger-fix */
    return strlen(s) > strlen(t); 
    /* $end strlonger-fix */

}

/* $begin strshorter */
/* Determine whether string s is shorter than string t */
/* WARNING: This function is buggy */
int strshorter(char *s, char *t) {
    return strlen(s) - strlen(t) < 0;  
}
/* $end strshorter */

/* Determine whether string s is shorter than string t */
int strshorter2(char *s, char *t) {
    /* $begin strshorter-fix */
    return strlen(s) < strlen(t); 
    /* $end strshorter-fix */
}


int main(int argc, char *argv[]) {
    char *s1 = argc > 1 ? argv[1] : (char *) "howdy";
    char *s2 = argc > 2 ? argv[2] : (char *) "doddy";
    int l1 = strlonger(s1, s2);
    int l2 = strlonger2(s1, s2);
    int r1 = strshorter(s1, s2);
    int r2 = strshorter2(s1, s2);  
    printf("'%s':'%s'.  Longer 1? : %d.  Longer 2? : %d\n", s1, s2, l1, l2);
    printf("'%s':'%s'.  Shorter 1? : %d.  Shorter 2? : %d\n", s1, s2, r1, r2);
    return 0;
}
