/* $begin 130-absdiff-c */
long absdiff(long x, long y)
{
    long result;
    if (x < y)
	result = y - x;
    else
	result = x - y;
    return result;
}
/* $end 130-absdiff-c */

/* $begin 130-cmovdiff-c */ 
long cmovdiff(long x, long y)
{
    long rval = y-x;
    long eval = x-y;
    long ntest = x >= y;
    /* Line below requires
       single instruction: */
    if (ntest) rval = eval; //line:asm:absdiff:cmovdiff:xfer
    return rval;
}
/* $end 130-cmovdiff-c */
