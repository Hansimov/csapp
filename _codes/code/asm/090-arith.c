/* $begin 090-arith-c */	
long arith(long x, long y, long z)
{ 
    long t1 = x ^ y; 
    long t2 = z * 48; 
    long t3 = t1 & 0x0F0F0F0F; 
    long t4 = t2 - t3; 
    return t4; 
} 
/* $end 090-arith-c */	

#if 0
/* $begin 090-arith-prob-c */	
long arith2(long x, long y, long z)
{ 
    long t1 = ________;
    long t2 = ________;
    long t3 = ________;
    long t4 = ________;
    return t4; 
} 
/* $end 090-arith-prob-c */	
#endif


long arith2(long x, 
	        long y, 
	        long z)
{ 
/* $begin 090-arith-prob-solve-c */	
    long t1 = x | y; 
    long t2 = t1 >> 3;
    long t3 = ~t2;
    long t4 = z-t3;
/* $end 090-arith-prob-solve-c */	
    return t4; 
} 

