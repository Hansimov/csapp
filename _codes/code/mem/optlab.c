/* $begin optlab-trans */
void transpose(int *dst, int *src, int dim)
{
    int i, j;

    for (i = 0; i < dim; i++)
	for (j = 0; j < dim; j++)
	    dst[j*dim + i] = src[i*dim + j];
}
/* $end optlab-trans */

/* $begin optlab-graph */
void col_convert(int *G, int dim) {
     int i, j;

     for (i = 0; i < dim; i++)
	 for (j = 0; j < dim; j++)
	     G[j*dim + i] = G[j*dim + i] || G[i*dim + j];
}
/* $end optlab-graph */
