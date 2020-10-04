/* $begin 230-switch-c */
void switch_eg(long x, long n,
	       long *dest)
{ 
    long val = x; 

    switch (n) { 

    case 100: 
	val *= 13; 
	break; 

    case 102: 
	val += 10; 
	/* Fall through */ 

    case 103: 
	val += 11; 
	break; 

    case 104: 
    case 106: 
	val *= val; 
	break; 

    default: 
	val = 0;       
    } 
    *dest = val; 
} 
/* $end 230-switch-c */


/* $begin 230-switch-impl-c */
void switch_eg_impl(long x, long n,
		    long *dest)
{
    /* Table of code pointers */
    static void *jt[7] = {//line:asm:switch_jumptable
	&&loc_A, &&loc_def, &&loc_B,
	&&loc_C, &&loc_D, &&loc_def,
	&&loc_D
    }; 
    unsigned long index = n - 100; 
    long val; 

    if (index > 6)
	goto loc_def; 
    /* Multiway branch */
    goto *jt[index]; //line:asm:switch:c_jump

 loc_A:    /* Case 100 */ 
    val = x * 13; 
    goto done;
 loc_B:    /* Case 102 */
    x = x + 10;
    /* Fall through */
 loc_C:     /* Case 103 */
    val = x + 11;
    goto done;
 loc_D:    /* Cases 104, 106 */ 
    val = x * x;
    goto done;
 loc_def:  /* Default case */
    val = 0;
 done:
    *dest = val;
} 
/* $end 230-switch-impl-c */
