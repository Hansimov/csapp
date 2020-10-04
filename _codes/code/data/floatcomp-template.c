unsigned f2u(float x);

/* $begin floatge-template */
int float_ge(float x, float y) { 
    unsigned ux = f2u(x); 
    unsigned uy = f2u(y); 

    /* Get the sign bits */ 
    unsigned sx = ux >> 31; 
    unsigned sy = uy >> 31; 

/* $end floatge-template */
#if 0
/* $begin floatge-template */
    /* Give an expression using only ux, uy, sx, and sy */
    return         ;
/* $end floatge-template */
#endif

    return sx+sy; /* just to keep gcc happy */

/* $begin floatge-template */
} 
/* $end floatge-template */

/* $begin floatle-template */
int float_le(float x, float y) { 
    unsigned ux = f2u(x); 
    unsigned uy = f2u(y); 

    /* Get the sign bits */ 
    unsigned sx = ux >> 31; 
    unsigned sy = uy >> 31; 

/* $end floatle-template */
#if 0
/* $begin floatle-template */
    /* Give an expression using only ux, uy, sx, and sy */
    return           ;
/* $end floatle-template */
#endif

    return sx+sy; /* just to keep gcc happy */

/* $begin floatle-template */
} 
/* $end floatle-template */

