#include <stdio.h>
#include <stdlib.h>

unsigned t2u() {
    /* $begin t2u */
    int x = -1; 
    unsigned ux = (unsigned) x; 
    /* $end t2u */
    return ux;
}


void explicit_cast() {
    /* $begin explicit-cast */
    int tx, ty; 
    unsigned ux, uy; 

    tx = (int) ux; 
    uy = (unsigned) ty; 
    /* $end explicit-cast */
}
 
void implicit_cast() {
    /* $begin implicit-cast */
    int tx, ty; 
    unsigned ux, uy; 

    tx = ux; /* Cast to signed */ 
    uy = ty; /* Cast to unsigned */ 
    /* $end implicit-cast */ 
}

int mytrunc() {
    /* $begin trunc */
    int   x = 53191; 
    short sx = (short) x;  /* -12345 */ 
    int   y = sx;          /* -12345 */ 
    /* $end trunc */
    return y;
}

int main(int argc, char *argv[]) {
    if (argc > 1) {
    /* $begin eg-t2u */
    short    int    v  = -12345;
    unsigned short uv = (unsigned short) v;
    printf("v = %d, uv = %u\n", v, uv);
   /* $end eg-t2u */
    return 0;
    }

    /* $begin eg-u2t */
    unsigned u = 4294967295u;   /* UMax */
    int     tu = (int) u;
    printf("u = %u, tu = %d\n", u, tu);
   /* $end eg-u2t */
    return 0;
    
}
