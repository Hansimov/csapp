/* $begin shp-proto */
    int signed_high_prod(int x, int y);
/* $end shp-proto */

/* $begin uhp-proto */
    unsigned unsigned_high_prod(unsigned x, unsigned y); 
/* $end uhp-proto */



unsigned unsigned_high_prod(unsigned x, unsigned y) { 
    unsigned p = (unsigned) signed_high_prod((int) x, (int) y); 
    /* Solution omitted */

    return p; 
} 

