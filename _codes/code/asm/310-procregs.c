/* $begin 310-proc-c */
void proc(long  a1, long  *a1p,
	  int   a2, int   *a2p,
	  short a3, short *a3p,
	  char  a4, char  *a4p)
{
    *a1p += a1;
    *a2p += a2;
    *a3p += a3;
    *a4p += a4;
}
/* $end 310-proc-c */

/* $begin 310-call_proc-c */
long call_proc()
{
    long  x1 = 1; int  x2 = 2;
    short x3 = 3; char x4 = 4;
    proc(x1, &x1, x2, &x2, x3, &x3, x4, &x4);
    return (x1+x2)*(x3-x4);
}
/* $end 310-call_proc-c */

