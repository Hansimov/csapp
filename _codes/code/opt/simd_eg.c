typedef float data_t;

/* Number of bytes in a vector */
#define VBYTES 16

/* Number of elements in a vector */
#define VSIZE VBYTES/sizeof(data_t)

/* Vector data type */
typedef data_t vec_t __attribute__ ((vector_size(VBYTES)));

/* $begin simd_eg */
/* Compute inner product of SSE vector */
data_t innerv(vec_t av, vec_t bv) {
    long int i;
    vec_t pv = av * bv; //line:opt:simd_eg:mult
    data_t result = 0;
    for (i = 0; i < VSIZE; i++)
	result += pv[i]; //line:opt:simd_eg:access
    return result; 
}
/* $end simd_eg */
