
/* $begin 285-calleesave2-c */
void Q();

long P(long x) {
    long a0 = x;
    long a1 = x+1;
    long a2 = x+2;
    long a3 = x+3;
    long a4 = x+4;
    long a5 = x+5;
    long a6 = x+6;
    long a7 = x+7;
    Q();
    return a0 + a1 + a2 + a3 + a4 + a5 + a6 + a7;
}
/* $end 285-calleesave2-c */
