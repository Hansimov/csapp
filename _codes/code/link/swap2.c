/* $begin swap2 */
extern int buf[];

int *bufp0 = &buf[0];
static int *bufp1;

static void incr() 
{
    static int count=0;       

    count++;  
}

void swap() 
{
    int temp;   

    incr();
    bufp1 = &buf[1];
    temp = *bufp0;
    *bufp0 = *bufp1;
    *bufp1 = temp;
}
/* $end swap2 */

