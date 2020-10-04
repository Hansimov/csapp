/* Demonstration of two's complement numbers in disassembly */

long int proca(long int *a, long int x, long int y)
{
    long int b[99];
    long int t[6];
    long int *c   = b+90;
    

    b[3] = a[5] + t[4];
    a[17] = b[24];
    b[33] = c[-80] + c[-18];
    return a[x] = b[y];
}




int main()
{
    long int a[10];
    return proca(a, 5, 7);
}
