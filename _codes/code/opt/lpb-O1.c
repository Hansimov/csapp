#include "combine.h"

/* Combining functions */

char combine1_descr[] = "combine1: Maximum use of data abstraction";
/* $begin combine1 */
/* Implementation with maximum use of data abstraction */
void combine1(vec_ptr v, data_t *dest)
{
    long int i;

    *dest = IDENT;
    for (i = 0; i < vec_length(v); i++) {
	data_t val;
	get_vec_element(v, i, &val);
	/* $begin combineline */
	*dest = *dest OP val;
	/* $end combineline */
    }
}
/* $end combine1 */

char combine2_descr[] = "combine2: Take vec_length() out of loop";
/* $begin combine2 */
/* Move call to vec_length out of loop */
void combine2(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);

    *dest = IDENT;
    for (i = 0; i < length; i++) {
	data_t val;
	get_vec_element(v, i, &val);
	*dest = *dest OP val;
    }
}
/* $end combine2 */

char combine3_descr[] = "combine3: Array reference to vector data";
/* $begin combine3 */
/* Direct access to vector data */
void combine3(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    data_t *data = get_vec_start(v);

    *dest = IDENT;
    for (i = 0; i < length; i++) {
	*dest = *dest OP data[i];
    }
}
/* $end combine3 */

char combine3w_descr[] = "combine3w: Update *dest within loop only with write";
/* $begin combine3w */
/* Make sure dest updated on each iteration */
void combine3w(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Initialize in event length <= 0 */
    *dest = acc; 

    for (i = 0; i < length; i++) {
	acc = acc OP data[i];
	*dest = acc;
    }
}
/* $end combine3w */

char combine4_descr[] = "combine4: Array reference, accumulate in temporary";
/* $begin combine4 */
/* Accumulate result in local variable */
void combine4(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    for (i = 0; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}
/* $end combine4 */

char combine4b_descr[] = "combine4b: Include bonds check in loop";
/* $begin combine4b */
/* Include bounds check in loop */
void combine4b(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    data_t acc = IDENT;

    for (i = 0; i < length; i++) {
	if (i >= 0 && i < v->len) {
	    acc = acc OP v->data[i];
	}
    }
    *dest = acc;
}
/* $end combine4b */


char combine4p_descr[] = "combine4p: Pointer reference, accumulate in temporary";
/* $begin combine4p */
/* Accumulate in local variable, pointer version */
void combine4p(vec_ptr v, data_t *dest)
{
    long int length = vec_length(v);
    data_t *data = get_vec_start(v);
    data_t *dend = data+length;
    data_t acc = IDENT;

    for (; data < dend; data++)
	acc = acc OP *data;
    *dest = acc;
}
/* $end combine4p */


char combine5_descr[] = "combine5: Array code, unrolled by 2";
/* $begin combine5 */
/* Unroll loop by 2 */
void combine5(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-1;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 2 elements at a time */
    for (i = 0; i < limit; i+=2) {
      /* $begin combine5-update */
	acc = (acc OP data[i]) OP data[i+1];
      /* $end combine5-update */
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}
/* $end combine5 */

char unroll3a_descr[] = "unroll3a: Array code, unrolled by 3";
void unroll3a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-2;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 3 elements at a time */
    for (i = 0; i < limit; i+=3) {
	acc = acc OP data[i];
	acc = acc OP data[i+1];
	acc = acc OP data[i+2];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}


char combine5p_descr[] = "combine5p: Pointer code, unrolled by 2, for loop";
/* $begin combine5p */
/* Unroll loop by 2, pointer version */
void combine5p(vec_ptr v, data_t *dest)
{
    data_t *data = get_vec_start(v);
    data_t *dend = data+vec_length(v);
    data_t *dlimit = dend-1;
    data_t acc = IDENT;

    /* Combine 3 elements at a time */
    for (; data < dlimit; data += 2) {
	acc = acc OP data[0] OP data[1];
    }

    /* Finish any remaining elements */
    for (; data < dend; data++) {
	acc = acc OP data[0];
    }
    *dest = acc;
}
/* $end combine5p */

char unroll2aw_descr[] = "unroll2aw: Array code, unrolled by 2, while loop";
void unroll2aw_combine(vec_ptr v, data_t *dest)
{
    long int i = 0;
    long int length = vec_length(v);
    long int limit = length-1;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 2 elements at a time */
    while (i < limit) {
	acc = acc OP data[i];
	i+= 2;
	acc = acc OP data[i-1];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}


char unroll4a_descr[] = "unroll4a: Array code, unrolled by 4";
void unroll4a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-3;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 4 elements at a time */
    for (i = 0; i < limit; i+=4) {
	acc = acc OP data[i] OP data[i+1];
	acc = acc OP data[i+2] OP data[i+3];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}

char unroll5a_descr[] = "unroll5a: Array code, unrolled by 5";
#if 0
/* $begin unroll5 */
void unroll5(vec_ptr v, data_t *dest)
/* $end unroll5 */
#else
void unroll5a_combine(vec_ptr v, data_t *dest)
#endif
/* $begin unroll5 */
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-4;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 5 elements at a time */
    for (i = 0; i < limit; i+=5) {
	acc = acc OP data[i]   OP data[i+1];
	acc = acc OP data[i+2] OP data[i+3];
	acc = acc OP data[i+4];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}
/* $end unroll5 */

char unroll6a_descr[] = "unroll6a: Array code, unrolled by 6";
void unroll6a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-5;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 6 elements at a time */
    for (i = 0; i < limit; i+=6) {
	acc = acc OP data[i] OP data[i+1];
	acc = acc OP data[i+2] OP data[i+3];
	acc = acc OP data[i+4] OP data[i+5];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}

char unroll7a_descr[] = "unroll7a: Array code, unrolled by 7";
void unroll7a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-6;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 7 elements at a time */
    for (i = 0; i < limit; i+=7) {
	acc = acc OP data[i] OP data[i+1];
	acc = acc OP data[i+2] OP data[i+3];
	acc = acc OP data[i+4] OP data[i+5];
	acc = acc OP data[i+6];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}


char unroll8a_descr[] = "unroll8a: Array code, unrolled by 8";
void unroll8a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-7;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 8 elements at a time */
    for (i = 0; i < limit; i+=8) {
	acc = acc OP data[i] OP data[i+1];
	acc = acc OP data[i+2] OP data[i+3];
	acc = acc OP data[i+4] OP data[i+5];
	acc = acc OP data[i+6] OP data[i+7];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}

char unroll9a_descr[] = "unroll9a: Array code, unrolled by 9";
void unroll9a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-8;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 9 elements at a time */
    for (i = 0; i < limit; i+=9) {
	acc = acc OP data[i] OP data[i+1];
	acc = acc OP data[i+2] OP data[i+3];
	acc = acc OP data[i+4] OP data[i+5];
	acc = acc OP data[i+6] OP data[i+7];
	acc = acc OP data[i+8];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}

char unroll10a_descr[] = "unroll10a: Array code, unrolled by 10";
void unroll10a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-9;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 10 elements at a time */
    for (i = 0; i < limit; i+=10) {
	acc = acc OP data[i] OP data[i+1];
	acc = acc OP data[i+2] OP data[i+3];
	acc = acc OP data[i+4] OP data[i+5];
	acc = acc OP data[i+6] OP data[i+7];
	acc = acc OP data[i+8] OP data[i+9];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}


char unroll16a_descr[] = "unroll16a: Array code, unrolled by 16";
void unroll16a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-15;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 16 elements at a time */
    for (i = 0; i < limit; i+=16) {
	acc = acc OP data[i] OP data[i+1];
	acc = acc OP data[i+2] OP data[i+3];
	acc = acc OP data[i+4] OP data[i+5];
	acc = acc OP data[i+6] OP data[i+7];
	acc = acc OP data[i+8] OP data[i+9];
	acc = acc OP data[i+10] OP data[i+11];
	acc = acc OP data[i+12] OP data[i+13];
	acc = acc OP data[i+14] OP data[i+15];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}

char unroll2_descr[] = "unroll2: Pointer code, unrolled by 2";
void unroll2_combine(vec_ptr v, data_t *dest)
{
    long int length = vec_length(v);
    data_t *data = get_vec_start(v);
    int over = length%2;
    data_t *dend = data+length-over;
    data_t acc = IDENT;

    while (data < dend) {
	acc = acc OP data[0];
	acc = acc OP data[1];
	data += 2;
    }
    dend += over;
    while (data < dend) {
	acc = acc OP *data;
	data ++;
    }
    *dest = acc;
}


char unroll3_descr[] = "unroll3: Pointer code, unrolled by 3";
void unroll3_combine(vec_ptr v, data_t *dest)
{
    long int length = vec_length(v);
    data_t *data = get_vec_start(v);
    data_t *dend = data+length-2;
    data_t acc = IDENT;

    while (data < dend) {
	acc = acc OP data[0];
	acc = acc OP data[1];
	acc = acc OP data[2];
	data += 3;
    }
    dend += 2;
    while (data < dend) {
	acc = acc OP *data;
	data ++;
    }
    *dest = acc;
}


char unroll4_descr[] = "unroll4: Pointer code, unrolled by 4";
void unroll4_combine(vec_ptr v, data_t *dest)
{
    long int length = vec_length(v);
    data_t *data = get_vec_start(v);
    data_t *dend = data+length-3;
    data_t acc = IDENT;

    while (data < dend) {
	acc = acc OP data[0];
	acc = acc OP data[1];
	acc = acc OP data[2];
	acc = acc OP data[3];
	data += 4;
    }
    dend += 3;
    while (data < dend) {
	acc = acc OP *data;
	data ++;
    }
    *dest = acc;
}

char unroll8_descr[] = "unroll8: Pointer code, unrolled by 8";
void unroll8_combine(vec_ptr v, data_t *dest)
{
    long int length = vec_length(v);
    data_t *data = get_vec_start(v);
    int over = length%8;
    data_t *dend = data+length-over;
    data_t acc = IDENT;

    while (data < dend) {
	acc = acc OP data[0];
	acc = acc OP data[1];
	acc = acc OP data[2];
	acc = acc OP data[3];
	acc = acc OP data[4];
	acc = acc OP data[5];
	acc = acc OP data[6];
	acc = acc OP data[7];
	data += 8;
    }
    dend += over;
    while (data < dend) {
	acc = acc OP *data;
	data ++;
    }
    *dest = acc;
}

char unroll16_descr[] = "unroll16: Pointer code, unrolled by 16";
void unroll16_combine(vec_ptr v, data_t *dest)
{
    long int length = vec_length(v);
    data_t *data = get_vec_start(v);
    int over = length%16;
    data_t *dend = data+length-over;
    data_t acc = IDENT;

    while (data < dend) {
	acc = acc OP data[0];
	acc = acc OP data[1];
	acc = acc OP data[2];
	acc = acc OP data[3];
	acc = acc OP data[4];
	acc = acc OP data[5];
	acc = acc OP data[6];
	acc = acc OP data[7];
	acc = acc OP data[8];
	acc = acc OP data[9];
	acc = acc OP data[10];
	acc = acc OP data[11];
	acc = acc OP data[12];
	acc = acc OP data[13];
	acc = acc OP data[14];
	acc = acc OP data[15];
	data += 16;
    }
    dend += over;
    while (data < dend) {
	acc = acc OP *data;
	data ++;
    }
    *dest = acc;
}


char combine6_descr[] = "combine6: Array code, unrolled by 2, Superscalar x2";
/* $begin combine6 */
/* Unroll loop by 2, 2-way parallelism */
void combine6(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-1;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;

    /* Combine 2 elements at a time */
    for (i = 0; i < limit; i+=2) {
	acc0 = acc0 OP data[i]; 
	acc1 = acc1 OP data[i+1];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc0 = acc0 OP data[i];
    }
    *dest = acc0 OP acc1;
}
/* $end combine6 */

char unroll4x2a_descr[] = "unroll4x2a: Array code, unrolled by 4, Superscalar x2";
void unroll4x2a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-3;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;

    /* Combine 4 elements at a time */
    for (i = 0; i < limit; i+=4) {
	acc0 = acc0 OP data[i]; acc1 = acc1 OP data[i+1];
	acc0 = acc0 OP data[i+2]; acc1 = acc1 OP data[i+3];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc0 = acc0 OP data[i];
    }
    *dest = acc0 OP acc1;
}


char unroll8x2a_descr[] = "unroll8x2a: Array code, unrolled by 8, Superscalar x2";
void unroll8x2a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-7;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;

    /* Combine 8 elements at a time */
    for (i = 0; i < limit; i+=8) {
	acc0 = acc0 OP data[i]; acc1 = acc1 OP data[i+1];
	acc0 = acc0 OP data[i+2]; acc1 = acc1 OP data[i+3];
	acc0 = acc0 OP data[i+4]; acc1 = acc1 OP data[i+5];
	acc0 = acc0 OP data[i+6]; acc1 = acc1 OP data[i+7];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc0 = acc0 OP data[i];
    }
    *dest = acc0 OP acc1;
}

char unroll3x3a_descr[] = "unroll3x3a: Array code, unrolled by 3, Superscalar x3";
void unroll3x3a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-2;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;
    data_t acc2 = IDENT;

    /* Combine 4 elements at a time */
    for (i = 0; i < limit; i+=3) {
	acc0 = acc0 OP data[i]; acc1 = acc1 OP data[i+1];
	acc2 = acc2 OP data[i+2];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc0 = acc0 OP data[i];
    }
    *dest = acc0 OP acc1 OP acc2;
}


char unroll4x4a_descr[] = "unroll4x4a: Array code, unrolled by 4, Superscalar x4";
void unroll4x4a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-3;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;
    data_t acc2 = IDENT;
    data_t acc3 = IDENT;

    /* Combine 4 elements at a time */
    for (i = 0; i < limit; i+=4) {
	acc0 = acc0 OP data[i]; acc1 = acc1 OP data[i+1];
	acc2 = acc2 OP data[i+2]; acc3 = acc3 OP data[i+3];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc0 = acc0 OP data[i];
    }
    *dest = (acc0 OP acc1) OP (acc2 OP acc3);

}

char unroll8x4a_descr[] = "unroll8x4a: Array code, unrolled by 8, Superscalar x4";
void unroll8x4a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-7;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;
    data_t acc2 = IDENT;
    data_t acc3 = IDENT;

    /* Combine 8 elements at a time */
    for (i = 0; i < limit; i+=8) {
	acc0 = acc0 OP data[i];   acc1 = acc1 OP data[i+1];
	acc2 = acc2 OP data[i+2]; acc3 = acc3 OP data[i+3];
	acc0 = acc0 OP data[i+4]; acc1 = acc1 OP data[i+5];
	acc2 = acc2 OP data[i+6]; acc3 = acc3 OP data[i+7];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc0 = acc0 OP data[i];
    }
    *dest = acc0 OP acc1 OP acc2 OP acc3;
}

char unroll12x6a_descr[] = "unroll2x6a: Array code, unrolled by 12, Superscalar x6";
void unroll12x6a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-11;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;
    data_t acc2 = IDENT;
    data_t acc3 = IDENT;
    data_t acc4 = IDENT;
    data_t acc5 = IDENT;

    /* Combine 12 elements at a time */
    for (i = 0; i < limit; i+=12) {
	acc0 = acc0 OP data[i];
	acc0 = acc0 OP data[i+6]; 
	acc1 = acc1 OP data[i+1];
	acc1 = acc1 OP data[i+7];
	acc2 = acc2 OP data[i+2];
	acc2 = acc2 OP data[i+8]; 
	acc3 = acc3 OP data[i+3];
	acc3 = acc3 OP data[i+9];
	acc4 = acc4 OP data[i+4]; 
	acc4 = acc4 OP data[i+10]; 
	acc5 = acc5 OP data[i+5];
	acc5 = acc5 OP data[i+11];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc0 = acc0 OP data[i];
    }
    *dest = (acc0 OP acc1) OP (acc2 OP acc3) OP (acc4 OP acc5);
}

char unroll12x12a_descr[] = "unroll12x12a: Array code, unrolled by 12, Superscalar x12";
void unroll12x12a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-11;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;
    data_t acc2 = IDENT;
    data_t acc3 = IDENT;
    data_t acc4 = IDENT;
    data_t acc5 = IDENT;
    data_t acc6 = IDENT;
    data_t acc7 = IDENT;
    data_t acc8 = IDENT;
    data_t acc9 = IDENT;
    data_t acc10 = IDENT;
    data_t acc11= IDENT;

    /* Combine 12 elements at a time */
    for (i = 0; i < limit; i+=12) {
	acc0 = acc0 OP data[i];
	acc6 = acc6 OP data[i+6]; 
	acc1 = acc1 OP data[i+1];
	acc7 = acc7 OP data[i+7];
	acc2 = acc2 OP data[i+2];
	acc8 = acc8 OP data[i+8]; 
	acc3 = acc3 OP data[i+3];
	acc9 = acc9 OP data[i+9];
	acc4 = acc4 OP data[i+4]; 
	acc10 = acc10 OP data[i+10]; 
	acc5 = acc5 OP data[i+5];
	acc11 = acc11 OP data[i+11];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc0 = acc0 OP data[i];
    }
    *dest = (acc0 OP acc1) OP (acc2 OP acc3) OP (acc4 OP acc5)
	OP (acc6 OP acc7) OP (acc8 OP acc9) OP (acc10 OP acc11);
}

char unroll5x5a_descr[] = "unroll5x5a: Array code, unrolled by 5, Superscalar x5";
void unroll5x5a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-4;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;
    data_t acc2 = IDENT;
    data_t acc3 = IDENT;
    data_t acc4 = IDENT;

    /* Combine 5 elements at a time */
    for (i = 0; i < limit; i+=5) {
	acc0 = acc0 OP data[i];   acc1 = acc1 OP data[i+1];
	acc2 = acc2 OP data[i+2]; acc3 = acc3 OP data[i+3];
	acc4 = acc4 OP data[i+4];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc0 = acc0 OP data[i];
    }
    *dest = (acc0 OP acc1) OP (acc2 OP acc3 OP acc4);
}

char unroll6x6a_descr[] = "unroll6x6a: Array code, unrolled by 6, Superscalar x6";
void unroll6x6a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-5;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;
    data_t acc2 = IDENT;
    data_t acc3 = IDENT;
    data_t acc4 = IDENT;
    data_t acc5 = IDENT;

    /* Combine 6 elements at a time */
    for (i = 0; i < limit; i+=6) {
	acc0 = acc0 OP data[i];   acc1 = acc1 OP data[i+1];
	acc2 = acc2 OP data[i+2]; acc3 = acc3 OP data[i+3];
	acc4 = acc4 OP data[i+4]; acc5 = acc5 OP data[i+5];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc0 = acc0 OP data[i];
    }
    *dest = (acc0 OP acc1) OP (acc2 OP acc3) OP (acc4 OP acc5);
}

char unroll7x7a_descr[] = "unroll7x7a: Array code, unrolled by 7, Superscalar x7";
void unroll7x7a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-6;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;
    data_t acc2 = IDENT;
    data_t acc3 = IDENT;
    data_t acc4 = IDENT;
    data_t acc5 = IDENT;
    data_t acc6 = IDENT;

    /* Combine 7 elements at a time */
    for (i = 0; i < limit; i+=7) {
	acc0 = acc0 OP data[i];   acc1 = acc1 OP data[i+1];
	acc2 = acc2 OP data[i+2]; acc3 = acc3 OP data[i+3];
	acc4 = acc4 OP data[i+4]; acc5 = acc5 OP data[i+5];
	acc6 = acc6 OP data[i+6];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc0 = acc0 OP data[i];
    }
    *dest = ((acc0 OP acc1) OP (acc2 OP acc3)) OP (acc4 OP acc5 OP acc6);
}

char unroll8x8a_descr[] = "unroll8x8a: Array code, unrolled by 8, Superscalar x8";
void unroll8x8a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-7;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;
    data_t acc2 = IDENT;
    data_t acc3 = IDENT;
    data_t acc4 = IDENT;
    data_t acc5 = IDENT;
    data_t acc6 = IDENT;
    data_t acc7 = IDENT;

    /* Combine 8 elements at a time */
    for (i = 0; i < limit; i+=8) {
	acc0 = acc0 OP data[i];   acc1 = acc1 OP data[i+1];
	acc2 = acc2 OP data[i+2]; acc3 = acc3 OP data[i+3];
	acc4 = acc4 OP data[i+4]; acc5 = acc5 OP data[i+5];
	acc6 = acc6 OP data[i+6]; acc7 = acc7 OP data[i+7];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc0 = acc0 OP data[i];
    }
    *dest = ((acc0 OP acc1) OP (acc2 OP acc3)) OP ((acc4 OP acc5) OP (acc6 OP acc7));
}

char unroll9x9a_descr[] = "unroll9x9a: Array code, unrolled by 9, Superscalar x9";
void unroll9x9a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-8;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;
    data_t acc2 = IDENT;
    data_t acc3 = IDENT;
    data_t acc4 = IDENT;
    data_t acc5 = IDENT;
    data_t acc6 = IDENT;
    data_t acc7 = IDENT;
    data_t acc8 = IDENT;

    /* Combine 9 elements at a time */
    for (i = 0; i < limit; i+=9) {
	acc0 = acc0 OP data[i];   acc1 = acc1 OP data[i+1];
	acc2 = acc2 OP data[i+2]; acc3 = acc3 OP data[i+3];
	acc4 = acc4 OP data[i+4]; acc5 = acc5 OP data[i+5];
	acc6 = acc6 OP data[i+6]; acc7 = acc7 OP data[i+7];
	acc8 = acc8 OP data[i+8];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc0 = acc0 OP data[i];
    }
    *dest = ((acc0 OP acc1) OP (acc2 OP acc3)) OP ((acc4 OP acc5) OP (acc6 OP acc7) OP acc8);
}

char unroll10x10a_descr[] = "unroll10x10a: Array code, unrolled by 10, Superscalar x10";
void unroll10x10a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-9;
    data_t *data = get_vec_start(v);
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;
    data_t acc2 = IDENT;
    data_t acc3 = IDENT;
    data_t acc4 = IDENT;
    data_t acc5 = IDENT;
    data_t acc6 = IDENT;
    data_t acc7 = IDENT;
    data_t acc8 = IDENT;
    data_t acc9 = IDENT;

    /* Combine 10 elements at a time */
    for (i = 0; i < limit; i+=10) {
	acc0 = acc0 OP data[i];   acc1 = acc1 OP data[i+1];
	acc2 = acc2 OP data[i+2]; acc3 = acc3 OP data[i+3];
	acc4 = acc4 OP data[i+4]; acc5 = acc5 OP data[i+5];
	acc6 = acc6 OP data[i+6]; acc7 = acc7 OP data[i+7];
	acc8 = acc8 OP data[i+8]; acc9 = acc9 OP data[i+9];
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc0 = acc0 OP data[i];
    }
    *dest = ((acc0 OP acc1) OP (acc2 OP acc3)) OP
	((acc4 OP acc5) OP (acc6 OP acc7)) OP
	(acc8 OP acc9);
}

char unrollx2as_descr[] = "unrollx2as: Array code, Unroll x2, Superscalar x2, noninterleaved";
void unrollx2as_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length/2;
    data_t *data = get_vec_start(v);
    data_t *data2 = data+limit;
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;

    /* Combine 2 elements at a time */
    for (i = 0; i < limit; i++) {
	acc0 = acc0 OP data[i]; acc1 = acc1 OP data2[i];
    }

    /* Finish any remaining elements */
    for (i = limit*2; i < length; i++) {
	acc1 = acc1 OP data[i];
    }
    *dest = acc0 OP acc1;
}

char unroll4x2as_descr[] = "unroll4x2as: Array code, Unroll x4, Superscalar x2, noninterleaved";
void unroll4x2as_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length/2;
    data_t *data = get_vec_start(v);
    data_t *data2 = data+limit;
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;

    /* Combine 2 elements at a time */
    for (i = 0; i < limit; i++) {
	acc0 = acc0 OP data[i]; acc1 = acc1 OP data2[i];
    }

    /* Finish any remaining elements */
    for (i = limit*2; i < length; i++) {
	acc1 = acc1 OP data[i];
    }
    *dest = acc0 OP acc1;
}



char unroll8x2_descr[] = "unroll8x2: Pointer code, unrolled by 8, Superscalar x2";
void unroll8x2_combine(vec_ptr v, data_t *dest)
{
    long int length = vec_length(v);
    data_t *data = get_vec_start(v);
    data_t *dend = data+length-7;
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;

    while (data < dend) {
	acc0 = acc0 OP data[0];
	acc1 = acc1 OP data[1];
	acc0 = acc0 OP data[2];
	acc1 = acc1 OP data[3];
	acc0 = acc0 OP data[4];
	acc1 = acc1 OP data[5];
	acc0 = acc0 OP data[6];
	acc1 = acc1 OP data[7];
	data += 8;
    }
    dend += 7;
    while (data < dend) {
	acc0 = acc0 OP *data;
	data ++;
    }
    *dest = acc0 OP acc1;
}

char unroll9x3_descr[] = "unroll9x3: Pointer code, unrolled by 9, Superscalar x3";
void unroll9x3_combine(vec_ptr v, data_t *dest)
{
    long int length = vec_length(v);
    data_t *data = get_vec_start(v);
    data_t *dend = data+length-8;
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;
    data_t acc2 = IDENT;

    while (data < dend) {
	acc0 = acc0 OP data[0];
	acc1 = acc1 OP data[1];
	acc2 = acc2 OP data[2];
	acc0 = acc0 OP data[3];
	acc1 = acc1 OP data[4];
	acc2 = acc2 OP data[5];
	acc0 = acc0 OP data[6];
	acc1 = acc1 OP data[7];
	acc2 = acc2 OP data[8];
	data += 9;
    }
    dend += 8;
    while (data < dend) {
	acc0 = acc0 OP *data;
	data ++;
    }
    *dest = acc0 OP acc1 OP acc2; 
}


char unroll8x4_descr[] = "unroll8x4: Pointer code, unrolled by 8, Superscalar x4";
void unroll8x4_combine(vec_ptr v, data_t *dest)
{
    long int length = vec_length(v);
    data_t *data = get_vec_start(v);
    data_t *dend = data+length-7;
    data_t acc3 = IDENT;
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;
    data_t acc2 = IDENT;

    while (data < dend) {
	acc3 = acc3 OP data[0];
	acc0 = acc0 OP data[1];
	acc1 = acc1 OP data[2];
	acc2 = acc2 OP data[3];
	acc3 = acc3 OP data[4];
	acc0 = acc0 OP data[5];
	acc1 = acc1 OP data[6];
	acc2 = acc2 OP data[7];
	data += 8;
    }
    dend += 7;
    while (data < dend) {
	acc3 = acc3 OP *data;
	data ++;
    }
    *dest = acc3 OP acc0 OP acc1 OP acc2;
}

char unroll8x8_descr[] = "unroll8x8: Pointer code, unrolled by 8, Superscalar x8";
void unroll8x8_combine(vec_ptr v, data_t *dest)
{
    long int length = vec_length(v);
    data_t *data = get_vec_start(v);
    data_t *dend = data+length-7;
    data_t acc4 = IDENT;
    data_t acc5 = IDENT;
    data_t acc6 = IDENT;
    data_t acc7 = IDENT;
    data_t acc3 = IDENT;
    data_t acc0 = IDENT;
    data_t acc1 = IDENT;
    data_t acc2 = IDENT;

    while (data < dend) {
	acc0 = acc0 OP data[0];
	acc1 = acc1 OP data[1];
	acc2 = acc2 OP data[2];
	acc3 = acc3  OP data[3];
	acc4 = acc4 OP data[4];
	acc6 = acc5 OP data[5];
	acc6 = acc6 OP data[6];
	acc7 = acc7 OP data[7];
	data += 8;
    }
    dend += 7;
    while (data < dend) {
	acc0 = acc0 OP *data;
	data ++;
    }
    *dest = acc0 OP acc1 OP acc2 OP acc3 OP acc4 OP acc5 OP acc6 OP acc7;
}

char combine7_descr[] = "combine7: Array code, unrolled by 2, different associativity";
/* $begin combine7 */
/* Change associativity of combining operation */
void combine7(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-1;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 2 elements at a time */
    for (i = 0; i < limit; i+=2) {
      /* $begin combine7-update */
	acc = acc OP (data[i] OP data[i+1]);
      /* $end combine7-update */
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}
/* $end combine7 */

char unroll3aa_descr[] = "unroll3aa: Array code, unrolled by 3, Different Associativity";
void unroll3aa_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-2;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 3 elements at a time */
    for (i = 0; i < limit; i+=3) {
	acc = acc OP (data[i] OP data[i+1] OP data[i+2]);
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}

char unroll4aa_descr[] = "unroll4aa: Array code, unrolled by 4, Different Associativity";
void unroll4aa_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-3;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 4 elements at a time */
    for (i = 0; i < limit; i+=4) {
	data_t t1 = data[i] OP data[i+1];
	data_t t2 = data[i+2] OP data[i+3];
	acc = acc OP (t1 OP t2); 
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}

char unroll5aa_descr[] = "unroll5aa: Array code, unrolled by 5, Different Associativity";
void unroll5aa_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-4;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 5 elements at a time */
    for (i = 0; i < limit; i+=5) {
	data_t t1 = data[i] OP data[i+1];
	data_t t2 = data[i+2] OP data[i+3];
	data_t t3 = data[i+4];
	acc = acc OP (t1 OP t2 OP t3); 
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}

char unroll6aa_descr[] = "unroll6aa: Array code, unrolled by 6, Different Associativity";
void unroll6aa_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-5;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 6 elements at a time */
    for (i = 0; i < limit; i+=6) {
	data_t t1 = data[i] OP data[i+1];
	data_t t2 = data[i+2] OP data[i+3];
	data_t t3 = data[i+4] OP data[i+5];
	acc = acc OP (t1 OP t2 OP t3); 
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }
    *dest = acc;
}

char unroll7aa_descr[] = "unroll7aa: Array code, unrolled by 7, Different Associativity";
void unroll7aa_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-6;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 7 elements at a time */
    for (i = 0; i < limit; i+=7) {
	data_t t1 = data[i] OP data[i+1];
	data_t t2 = data[i+2] OP data[i+3];
	data_t u1 = t1 OP t2;
	data_t t3 = data[i+4] OP data[i+5];
	data_t t4 = data[i+6];
	data_t u2 = t3 OP t4;
	acc = acc OP (u1 OP u2); 
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }

    *dest = acc;
}

char unroll8aa_descr[] = "unroll8aa: Array code, unrolled by 8, Different Associativity";
void unroll8aa_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-7;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 8 elements at a time */
    for (i = 0; i < limit; i+=8) {
	data_t t1 = data[i] OP data[i+1];
	data_t t2 = data[i+2] OP data[i+3];
	data_t u1 = t1 OP t2;
	data_t t3 = data[i+4] OP data[i+5];
	data_t t4 = data[i+6] OP data[i+7];
	data_t u2 = t3 OP t4;
	acc = acc OP (u1 OP u2); 
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }

    *dest = acc;
}

char unroll9aa_descr[] = "unroll9aa: Array code, unrolled by 9, Different Associativity";
void unroll9aa_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-8;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 9 elements at a time */
    for (i = 0; i < limit; i+=9) {
	data_t t1 = data[i] OP data[i+1];
	data_t t2 = data[i+2] OP data[i+3];
	data_t u1 = t1 OP t2;
	data_t t3 = data[i+4] OP data[i+5];
	data_t t4 = data[i+6] OP data[i+7];
	data_t t5 = data[i+8];
	data_t u2 = t3 OP t4 OP t5;
	acc = acc OP (u1 OP u2); 
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }

    *dest = acc;
}

char unroll10aa_descr[] = "unroll10aa: Array code, unrolled by 10, Different Associativity";
void unroll10aa_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-9;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 10 elements at a time */
    for (i = 0; i < limit; i+=10) {
	data_t t1 = data[i] OP data[i+1];
	data_t t2 = data[i+2] OP data[i+3];
	data_t u1 = t1 OP t2;
	data_t t3 = data[i+4] OP data[i+5];
	data_t t4 = data[i+6] OP data[i+7];
	data_t t5 = data[i+8] OP data[i+9];
	data_t u2 = t3 OP t4 OP t5;
	acc = acc OP (u1 OP u2); 
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }

    *dest = acc;
}


char unroll12aa_descr[] = "unroll12aa: Array code, unrolled by 12, Different Associativity";
void unroll12aa_combine(vec_ptr v, data_t *dest)
{
    long int i;
    long int length = vec_length(v);
    long int limit = length-11;
    data_t *data = get_vec_start(v);
    data_t acc = IDENT;

    /* Combine 12 elements at a time */
    for (i = 0; i < limit; i+=12) {
	data_t t1 = data[i] OP data[i+1];
	data_t t2 = data[i+2] OP data[i+3];
	data_t u1 = t1 OP t2;
	data_t t3 = data[i+4] OP data[i+5];
	data_t t4 = data[i+6] OP data[i+7];
	data_t u2 = t3 OP t4;
	data_t t5 = data[i+8] OP data[i+9];
	data_t t6 = data[i+10] OP data[i+11];
	data_t u3 = t5 OP t6;
	acc = acc OP (u1 OP u2 OP u3); 
    }

    /* Finish any remaining elements */
    for (; i < length; i++) {
	acc = acc OP data[i];
    }

    *dest = acc;
}

/* Experiment using GCC support for SSE instructions */

/* $begin simd_vec_sizes */
/* Number of bytes in a vector */
#define VBYTES 32

/* Number of elements in a vector */
#define VSIZE VBYTES/sizeof(data_t)
/* $end simd_vec_sizes */

/* $begin simd_vec_t */
/* Vector data type */
typedef data_t vec_t __attribute__ ((vector_size(VBYTES)));
/* $end simd_vec_t */

/* $begin simd_pack_t */
typedef union {
    vec_t v;
    data_t d[VSIZE];
} pack_t;
/* $end simd_pack_t */

char simd_v1_descr[] = "simd_v1: SSE code, 1*VSIZE-way parallelism";
/* $begin simd_combine-c */
void simd_v1_combine(vec_ptr v, data_t *dest)
{
    long int i;
    pack_t xfer;
    vec_t accum;
    data_t *data = get_vec_start(v);
    int cnt = vec_length(v);
    data_t result = IDENT;

    /* Initialize accum entries to IDENT */
    for (i = 0; i < VSIZE; i++) //line:opt:simd:initstart
	xfer.d[i] = IDENT;
    accum = xfer.v;             //line:opt:simd:initend
    /* $end simd_init-c */

    /* Single step until have memory alignment */
    while (((long) data) % VBYTES && cnt) {  //line:opt:simd:startstart
	result = result OP *data++; 
	cnt--;                              
    }                              //line:opt:simd:startend

    /* Step through data with VSIZE-way parallelism */
    while (cnt >= VSIZE) {    //line:opt:simd:loopstart
	vec_t chunk = *((vec_t *) data);
	accum = accum OP chunk;
	data += VSIZE;
	cnt -= VSIZE;       
    } //line:opt:simd:loopend

    /* Single-step through remaining elements */
    while (cnt) { //line:opt:simd:loopfinishstart
	result = result OP *data++;
	cnt--;  
    } //line:opt:simd:loopfinishend

    /* Combine elements of accumulator vector */
    xfer.v = accum; //line:opt:simd:finishstart
    for (i = 0; i < VSIZE; i++)
	result = result OP xfer.d[i]; //line:opt:simd:finishend

    /* Store result */
    *dest = result; 
}
/* $end simd_combine-c */


char simd_v2_descr[] = "simd_v2: SSE code, 2*VSIZE-way parallelism";
void simd_v2_combine(vec_ptr v, data_t *dest)
{
    long int i;
    pack_t xfer;
    vec_t accum0, accum1;
    data_t *data = get_vec_start(v);
    int cnt = vec_length(v);
    data_t result = IDENT;

    /* Initialize to accum IDENT */
    for (i = 0; i < VSIZE; i++)
	xfer.d[i] = IDENT;
    accum0 = xfer.v;
    accum1 = xfer.v;

    while (((long) data) % VBYTES && cnt) {
	result = result OP *data++;
	cnt--;
    }

    while (cnt >= 2*VSIZE) {
	vec_t chunk0 = *((vec_t *) data);
	vec_t chunk1 = *((vec_t *) (data+VSIZE));
	accum0 = accum0 OP chunk0;
	accum1 = accum1 OP chunk1;
	data += 2*VSIZE;
	cnt -= 2*VSIZE;
    }
    while (cnt) {
	result = result OP *data++;
	cnt--;
    }
    xfer.v = accum0 OP accum1;
    for (i = 0; i < VSIZE; i++)
	result = result OP xfer.d[i];
    *dest = result;
}

char simd_v4_descr[] = "simd_v4: SSE code, 4*VSIZE-way parallelism";
void simd_v4_combine(vec_ptr v, data_t *dest)
{
    long int i;
    pack_t xfer;
    data_t *data = get_vec_start(v);
    int cnt = vec_length(v);
    data_t result = IDENT;

    /* Create 4 accumulators and initialize elements to IDENT */
    vec_t accum0, accum1, accum2, accum3;
    for (i = 0; i < VSIZE; i++)
	xfer.d[i] = IDENT;
    accum0 = xfer.v; accum1 = xfer.v;
    accum2 = xfer.v; accum3 = xfer.v;
    
    while (((long) data) % VBYTES && cnt) {
	result = result OP *data++;
	cnt--;
    }

    /* $begin simd_v4_loop-c */
    /* Accumulate with 4x VSIZE parallelism */
    while (cnt >= 4*VSIZE) {
	vec_t chunk0 = *((vec_t *) data);
	vec_t chunk1 = *((vec_t *) (data+VSIZE));
	vec_t chunk2 = *((vec_t *) (data+2*VSIZE));
	vec_t chunk3 = *((vec_t *) (data+3*VSIZE));
	accum0 = accum0 OP chunk0;
	accum1 = accum1 OP chunk1;
	accum2 = accum2 OP chunk2;
	accum3 = accum3 OP chunk3;
	data += 4*VSIZE;
	cnt -= 4*VSIZE;
    }
    /* $end simd_v4_loop-c */

    while (cnt) {
	result = result OP *data++;
	cnt--;
    }

    /* $begin simd_v4_accum-c */
    /* Combine into single accumulator */
    xfer.v = (accum0 OP accum1) OP (accum2 OP accum3);

    /* Combine results from accumulators within vector */
    for (i = 0; i < VSIZE; i++)
	result = result OP xfer.d[i];
    /* $end simd_v4_accum-c */
    *dest = result;
}

char simd_v8_descr[] = "simd_v8: SSE code, 8*VSIZE-way parallelism";
void simd_v8_combine(vec_ptr v, data_t *dest)
{
    long int i;
    pack_t xfer;
    vec_t accum0, accum1, accum2, accum3, accum4, accum5, accum6, accum7;
    data_t *data = get_vec_start(v);
    int cnt = vec_length(v);
    data_t result = IDENT;

    /* Initialize to accum IDENT */
    for (i = 0; i < VSIZE; i++)
	xfer.d[i] = IDENT;
    accum0 = xfer.v;
    accum1 = xfer.v;
    accum2 = xfer.v;
    accum3 = xfer.v;
    accum4 = xfer.v;
    accum5 = xfer.v;
    accum6 = xfer.v;
    accum7 = xfer.v;
    
    while (((long) data) % VBYTES && cnt) {
	result = result OP *data++;
	cnt--;
    }

    while (cnt >= 8*VSIZE) {
	vec_t chunk0 = *((vec_t *) data);
	vec_t chunk1 = *((vec_t *) (data+VSIZE));
	vec_t chunk2 = *((vec_t *) (data+2*VSIZE));
	vec_t chunk3 = *((vec_t *) (data+3*VSIZE));
	vec_t chunk4 = *((vec_t *) (data+4*VSIZE));
	vec_t chunk5 = *((vec_t *) (data+5*VSIZE));
	vec_t chunk6 = *((vec_t *) (data+6*VSIZE));
	vec_t chunk7 = *((vec_t *) (data+7*VSIZE));
	accum0 = accum0 OP chunk0;
	accum1 = accum1 OP chunk1;
	accum2 = accum2 OP chunk2;
	accum3 = accum3 OP chunk3;
	accum4 = accum4 OP chunk4;
	accum5 = accum5 OP chunk5;
	accum6 = accum6 OP chunk6;
	accum7 = accum7 OP chunk7;
	data += 8*VSIZE;
	cnt -= 8*VSIZE;
    }
    while (cnt) {
	result = result OP *data++;
	cnt--;
    }
    xfer.v = (accum0 OP accum1) OP (accum2 OP accum3);
    xfer.v = xfer.v OP (accum4 OP accum5) OP (accum6 OP accum7);
    for (i = 0; i < VSIZE; i++)
	result = result OP xfer.d[i];
    *dest = result;
}

char simd_v12_descr[] = "simd_v12: SSE code, 12*VSIZE-way parallelism";
void simd_v12_combine(vec_ptr v, data_t *dest)
{
    long int i;
    pack_t xfer;
    vec_t accum0, accum1, accum2, accum3, accum4, accum5, accum6, accum7;
    vec_t accum8, accum9, accum10, accum11;
    data_t *data = get_vec_start(v);
    int cnt = vec_length(v);
    data_t result = IDENT;

    /* Initialize to accum IDENT */
    for (i = 0; i < VSIZE; i++)
	xfer.d[i] = IDENT;
    accum0 = xfer.v;
    accum1 = xfer.v;
    accum2 = xfer.v;
    accum3 = xfer.v;
    accum4 = xfer.v;
    accum5 = xfer.v;
    accum6 = xfer.v;
    accum7 = xfer.v;
    accum8 = xfer.v;
    accum9 = xfer.v;
    accum10 = xfer.v;
    accum11 = xfer.v;
    while (((long) data) % VBYTES && cnt) {
	result = result OP *data++;
	cnt--;
    }

    while (cnt >= 12*VSIZE) {
	vec_t chunk0 = *((vec_t *) data);
	vec_t chunk1 = *((vec_t *) (data+VSIZE));
	vec_t chunk2 = *((vec_t *) (data+2*VSIZE));
	vec_t chunk3 = *((vec_t *) (data+3*VSIZE));
	vec_t chunk4 = *((vec_t *) (data+4*VSIZE));
	vec_t chunk5 = *((vec_t *) (data+5*VSIZE));
	vec_t chunk6 = *((vec_t *) (data+6*VSIZE));
	vec_t chunk7 = *((vec_t *) (data+7*VSIZE));
	vec_t chunk8 = *((vec_t *) (data+8*VSIZE));
	vec_t chunk9 = *((vec_t *) (data+9*VSIZE));
	vec_t chunk10 = *((vec_t *) (data+10*VSIZE));
	vec_t chunk11 = *((vec_t *) (data+11*VSIZE));
	accum0 = accum0 OP chunk0;
	accum1 = accum1 OP chunk1;
	accum2 = accum2 OP chunk2;
	accum3 = accum3 OP chunk3;
	accum4 = accum4 OP chunk4;
	accum5 = accum5 OP chunk5;
	accum6 = accum6 OP chunk6;
	accum7 = accum7 OP chunk7;
	accum8 = accum8 OP chunk8;
	accum9 = accum9 OP chunk9;
	accum10 = accum10 OP chunk10;
	accum11 = accum11 OP chunk11;
	data += 12*VSIZE;
	cnt -= 12*VSIZE;
    }
    while (cnt) {
	result = result OP *data++;
	cnt--;
    }
    xfer.v = (accum0 OP accum1) OP (accum2 OP accum3);
    xfer.v = xfer.v OP (accum4 OP accum5) OP (accum6 OP accum7);
    xfer.v = xfer.v OP (accum8 OP accum9) OP (accum10 OP accum11);
    for (i = 0; i < VSIZE; i++)
	result = result OP xfer.d[i];
    *dest = result;
}

/* Same idea, but use different associativity to get parallelism */
char simd_v2a_descr[] = "simd_v2a: SSE code, 2*VSIZE-way parallelism, reassociate";
void simd_v2a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    pack_t xfer;
    vec_t accum;
    data_t *data = get_vec_start(v);
    int cnt = vec_length(v);
    data_t result = IDENT;

    /* Initialize accum to IDENT */
    for (i = 0; i < VSIZE; i++)
	xfer.d[i] = IDENT;
    accum = xfer.v;

    while (((long) data) % VBYTES && cnt) {
	result = result OP *data++;
	cnt--;
    }

    while (cnt >= 2*VSIZE) {
	vec_t chunk0 = *((vec_t *) data);
	vec_t chunk1 = *((vec_t *) (data+VSIZE));
	accum = accum OP (chunk0 OP chunk1);
	data += 2*VSIZE;
	cnt -= 2*VSIZE;
    }
    while (cnt) {
	result = result OP *data++;
	cnt--;
    }
    xfer.v = accum;
    for (i = 0; i < VSIZE; i++)
	result = result OP xfer.d[i];
    *dest = result;
}

char simd_v4a_descr[] = "simd_v4a: SSE code, 4*VSIZE-way parallelism, reassociate";
void simd_v4a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    pack_t xfer;
    vec_t accum;
    data_t *data = get_vec_start(v);
    int cnt = vec_length(v);
    data_t result = IDENT;

    /* Initialize accum to IDENT */
    for (i = 0; i < VSIZE; i++)
	xfer.d[i] = IDENT;
    accum = xfer.v;

    while (((long) data) % VBYTES && cnt) {
	result = result OP *data++;
	cnt--;
    }

    /* $begin simd_v4a_loop-c */
    while (cnt >= 4*VSIZE) {
	vec_t chunk0 = *((vec_t *) data);
	vec_t chunk1 = *((vec_t *) (data+VSIZE));
	vec_t chunk2 = *((vec_t *) (data+2*VSIZE));
	vec_t chunk3 = *((vec_t *) (data+3*VSIZE));
	accum = accum OP
	    ((chunk0 OP chunk1) OP (chunk2 OP chunk3));
	data += 4*VSIZE;
	cnt -= 4*VSIZE;
    }
    /* $end simd_v4a_loop-c */

    while (cnt) {
	result = result OP *data++;
	cnt--;
    }
    xfer.v = accum;
    for (i = 0; i < VSIZE; i++)
	result = result OP xfer.d[i];
    *dest = result;
}

char simd_v8a_descr[] = "simd_v8a: SSE code, 8*VSIZE-way parallelism, reassociate";
void simd_v8a_combine(vec_ptr v, data_t *dest)
{
    long int i;
    pack_t xfer;
    vec_t accum;
    data_t *data = get_vec_start(v);
    int cnt = vec_length(v);
    data_t result = IDENT;

    /* Initialize accum to IDENT */
    for (i = 0; i < VSIZE; i++)
	xfer.d[i] = IDENT;
    accum = xfer.v;

    while (((long) data) % VBYTES && cnt) {
	result = result OP *data++;
	cnt--;
    }

    while (cnt >= 8*VSIZE) {
	vec_t chunk0 = *((vec_t *) data);
	vec_t chunk1 = *((vec_t *) (data+VSIZE));
	vec_t chunk2 = *((vec_t *) (data+2*VSIZE));
	vec_t chunk3 = *((vec_t *) (data+3*VSIZE));
	vec_t chunk4 = *((vec_t *) (data+4*VSIZE));
	vec_t chunk5 = *((vec_t *) (data+5*VSIZE));
	vec_t chunk6 = *((vec_t *) (data+6*VSIZE));
	vec_t chunk7 = *((vec_t *) (data+7*VSIZE));
	accum = accum OP
	    (((chunk0 OP chunk1) OP (chunk2 OP chunk3))
	     OP
	     ((chunk4 OP chunk5) OP (chunk6 OP chunk7)));
	data += 8*VSIZE;
	cnt -= 8*VSIZE;
    }
    while (cnt) {
	result = result OP *data++;
	cnt--;
    }
    xfer.v = accum;
    for (i = 0; i < VSIZE; i++)
	result = result OP xfer.d[i];
    *dest = result;
}


void register_combiners(void)
{
#ifndef UNROLL_ONLY
    add_combiner(combine1, combine1, combine1_descr);
    add_combiner(combine2, combine1, combine2_descr);
    add_combiner(combine3, combine1, combine3_descr);
    add_combiner(combine3w, combine1, combine3w_descr);
#endif
    add_combiner(combine4, combine1,combine4_descr);
#ifndef UNROLL_ONLY
    add_combiner(combine4b, combine1, combine4b_descr);
    add_combiner(combine4p, combine1, combine4p_descr);
#endif
    add_combiner(combine5, combine1, combine5_descr);
#ifndef UNROLL_ONLY
    add_combiner(combine5p, combine1, combine5p_descr);
    add_combiner(unroll2aw_combine, combine1, unroll2aw_descr);
#endif
    add_combiner(unroll3a_combine, combine1, unroll3a_descr);
    add_combiner(unroll4a_combine, combine1, unroll4a_descr);
    add_combiner(unroll5a_combine, combine1, unroll5a_descr);
    add_combiner(unroll6a_combine, combine1, unroll6a_descr);
    add_combiner(unroll7a_combine, combine1, unroll7a_descr);
    add_combiner(unroll8a_combine, combine1, unroll8a_descr);
    add_combiner(unroll9a_combine, combine1, unroll9a_descr);
    add_combiner(unroll10a_combine, combine1, unroll10a_descr);
    add_combiner(unroll16a_combine, combine1, unroll16a_descr);
#ifndef UNROLL_ONLY
    add_combiner(unroll2_combine, combine1, unroll2_descr);
    add_combiner(unroll3_combine, combine1, unroll3_descr);
    add_combiner(unroll4_combine, combine1, unroll4_descr);
    add_combiner(unroll8_combine, combine1, unroll8_descr);
    add_combiner(unroll16_combine, combine1, unroll16_descr);
    add_combiner(combine6, combine1, combine6_descr);
    add_combiner(unroll4x2a_combine, combine1, unroll4x2a_descr);
    add_combiner(unroll8x2a_combine, combine1, unroll8x2a_descr);
    add_combiner(unroll3x3a_combine, combine1, unroll3x3a_descr);
    add_combiner(unroll4x4a_combine, combine1, unroll4x4a_descr);
    add_combiner(unroll5x5a_combine, combine1, unroll5x5a_descr);
    add_combiner(unroll6x6a_combine, combine1, unroll6x6a_descr);
    add_combiner(unroll7x7a_combine, combine1, unroll7x7a_descr);
    add_combiner(unroll8x4a_combine, combine1, unroll8x4a_descr);
    add_combiner(unroll8x8a_combine, combine1, unroll8x8a_descr);
    add_combiner(unroll9x9a_combine, combine1, unroll9x9a_descr);
    add_combiner(unroll10x10a_combine, combine1, unroll10x10a_descr);
    add_combiner(unroll12x6a_combine, combine1, unroll12x6a_descr);
    add_combiner(unroll12x12a_combine, combine1, unroll12x12a_descr);
    add_combiner(unroll8x2_combine, combine1, unroll8x2_descr);
    add_combiner(unroll8x4_combine, combine1, unroll8x4_descr);
    add_combiner(unroll8x8_combine, combine1, unroll8x8_descr);
    add_combiner(unroll9x3_combine, combine1, unroll9x3_descr);
    add_combiner(unrollx2as_combine, combine1, unrollx2as_descr);
    add_combiner(combine7, combine1, combine7_descr);
    add_combiner(unroll3aa_combine, combine1, unroll3aa_descr);
    add_combiner(unroll4aa_combine, combine1, unroll4aa_descr);
    add_combiner(unroll5aa_combine, combine1, unroll5aa_descr);
    add_combiner(unroll6aa_combine, combine1, unroll6aa_descr);
    add_combiner(unroll7aa_combine, combine1, unroll7aa_descr);
    add_combiner(unroll8aa_combine, combine1, unroll8aa_descr);
    add_combiner(unroll9aa_combine, combine1, unroll9aa_descr);
    add_combiner(unroll10aa_combine, combine1, unroll10aa_descr);
    add_combiner(unroll12aa_combine, combine1, unroll12aa_descr);
    add_combiner(simd_v1_combine, combine1, simd_v1_descr);
    add_combiner(simd_v2_combine, combine1, simd_v2_descr);
    add_combiner(simd_v4_combine, combine1, simd_v4_descr);
    add_combiner(simd_v8_combine, combine1, simd_v8_descr);
    add_combiner(simd_v12_combine, combine1, simd_v12_descr);
    add_combiner(simd_v2a_combine, combine1, simd_v2a_descr);
    add_combiner(simd_v4a_combine, combine1, simd_v4a_descr);
    add_combiner(simd_v8a_combine, combine1, simd_v8a_descr);
    log_combiner(simd_v8a_combine, 0.16, 0.24);
#endif
}







