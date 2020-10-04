/* Functions to demonstrate IA32 procedure handling */


/* $begin w100-fun-c */
int fun(int a, int *bp) {
    return a + *bp;
}
/* $end w100-fun-c */


/* $begin w100-call_fun-c */
int call_fun(int x, int y) {
    return fun(x, &y);
}
/* $end w100-call_fun-c */


/* $begin w100-afun-c */
int afun(int t) {
    int a[2] = {33, 515};
    return a[t];
}
/* $end w100-afun-c */

