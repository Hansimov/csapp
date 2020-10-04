/* $begin srl-template */
unsigned srl(unsigned x, int k) { 
    /* Perform shift arithmetically */ 
    unsigned xsra = (int) x >> k; 



/* $end srl-template */
    return xsra; /* keeps gcc from complaining */
/* $begin srl-template */
} 
/* $end srl-template */

/* $begin sra-template */   
int sra(int x, int k) { 
    /* Perform shift logically */ 
    int xsrl = (unsigned) x >> k; 



/* $end sra-template */
    return xsrl; /* keeps gcc from complaining */
/* $begin sra-template */
}
/* $end sra-template */   

