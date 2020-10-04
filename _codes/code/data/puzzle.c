int foo(void);
int bar(void);

int puzzle()
{
    /* $begin puzzle */
    int x = foo();   /* Arbitrary value */ 
    int y = bar();   /* Arbitrary value */ 

    unsigned ux = x; 
    unsigned uy = y; 
    /* $end puzzle */

    return uy+ux;
}
