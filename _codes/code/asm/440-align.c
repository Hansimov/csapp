#include <stdlib.h>

/* $begin 440-aligns1-c */
struct S1 { 
    int  i; 
    char c; 
    int  j; 
}; 
/* $end 440-aligns1-c */

/* $begin 440-aligns2-c */
struct S2 { 
    int  i; 
    int  j; 
    char c; 
}; 
/* $end 440-aligns2-c */

/* $begin 440-structbig-c */
struct {
    char     *a;
    short     b;
    double    c;
    char      d;
    float     e;
    char      f;
    long      g;
    int       h;
/* $end 440-structbig-c */
} rec_a;

/* $begin 440-structlittle-c */
struct {
    char     *a;
    double    c;
    long      g;
    float     e;
    int       h;
    short     b;
    char      d;
    char      f;
/* $begin 440-structbig-c */
} rec;
/* $end 440-structbig-c */
/* $end 440-structlittle-c */

size_t bsize() {
    return sizeof(rec_a);
}

size_t lsize() {
    return sizeof(rec);
}
