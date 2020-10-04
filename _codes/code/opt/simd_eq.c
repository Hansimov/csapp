typedef float data_t;

/* Number of bytes in a vector */
#define VBYTES 16

/* Number of elements in a vector */
#define VSIZE VBYTES/sizeof(data_t)

/* Vector data type */
typedef data_t vec_t __attribute__ ((vector_size(VBYTES)));

typedef union {
    vec_t v;
    data_t d[VSIZE];
} pack_t;

/* Compute inner product of SSE vector */

data_t innerv(vec_t av, vec_t bv) {
    vec_t prod = av * bv;
    pack_t xfer;
    int i;
    data_t result = 0;
    xfer.v = prod;
    for (i = 0; i < VSIZE; i++)
	result += xfer.d[i];
    return result;
}
