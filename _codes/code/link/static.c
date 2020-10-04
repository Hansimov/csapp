/* $begin static */
int f() 
{
    static int x = 0;
    return x;
}   

int g() 
{
    static int x = 1;      
    return x;
}
/* $end static */

