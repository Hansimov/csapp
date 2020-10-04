#include "combine.h"

/* 
 * Combining functions contained in the solutions to problems
 */

char combine5px8_descr[] = "GNU pointer code, unrolled by 8";
/* $begin combine5px8-ans */
void combine5px8(vec_ptr v, data_t *dest)
{
    long length = vec_length(v); 
    long limit = length - 8; 
    data_t *data = get_vec_start(v); 
    data_t x = IDENT; 
    long i; 

    /* Combine 8 elements at a time */
    for (i = 0; i <= limit; i+=8) {
	x = x OPER data[0]
	    OPER data[1] 
	    OPER data[2] 
	    OPER data[3] 
	    OPER data[4] 
	    OPER data[5] 
	    OPER data[6] 
	    OPER data[7]; 
	data += 8; 
    }

    /* Finish any remaining elements */ 
    for (; i < length; i++) {
	x = x OPER data[0]; 
	data++; 
    }
    *dest = x; 
}
/* $end combine5px8-ans */


void register_combiners(void)
{
    add_combiner(combine5px8, combine5px8, combine5px8_descr);
}








