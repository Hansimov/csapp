#include <stdio.h>
#include <stdlib.h>



/* 
 * NOTE: This function is supposed to get a compiler warning:
 *
 * wordsize.c: In function `int_size_is_32':
 * wordsize.c:12: warning: left shift count >= width of type
 * 
 */


/* $begin wordsize */
/* The following code does not run properly on some machines */
int bad_int_size_is_32() {
    /* Set most significant bit (msb) of 32-bit machine */
    int set_msb = 1 << 31;
    /* Shift past msb of 32-bit word */
    int beyond_msb = 1 << 32;

    /* set_msb is nonzero when word size >= 32
       beyond_msb is zero when word size <= 32  */
    return set_msb && !beyond_msb;
}
/* $end wordsize */

int find_word_size() {
    int x = 1L;
    int w = 0;

    while (x) {
	w++;
	x <<= 1;
    }
    return w;
}


int main(int argc, char *argv[]) {
    int w32 = bad_int_size_is_32();
    int w = find_word_size();

    printf("On this %d-bit machine, 32? = %s\n",
	   w, w32 ? "Yes" : "No");
    return 0;
}
