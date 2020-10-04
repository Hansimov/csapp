/* $begin adt */
/* Create abstract data type for vector */
typedef struct {
    long len;
    data_t *data;
/* $end adt */
    long allocated_len; /* NOTE: we don't use this field in the book */
/* $begin adt */ 
} vec_rec, *vec_ptr;
/* $end adt */

/* Create vector */
vec_ptr new_vec(long len);

/* Free storage used by vector */
void free_vec(vec_ptr v);

/*
 * Retrieve vector element and store in dest.
 * Return 0 (out of bounds) or 1 (successful)
 */
int get_vec_element(vec_ptr v, long index, data_t *dest);

/* Macro version */
#define GET_VEC_ELEMENT(v,index,dest) \
    !((index) < 0 || (index) >= (v)->len) && \
    *(dest) = (v)->data[(index)], 1;


data_t *get_vec_start(vec_ptr v);

/*
 * Set vector element.
 * Return 0 (out of bounds) or 1 (successful)
 */

int set_vec_element(vec_ptr v, long index, data_t val);

/* Get vector length */
long vec_length(vec_ptr v);

/* Set length of vector.  If > allocated length, will reallocate */
void set_vec_length(vec_ptr v, long newlen);
