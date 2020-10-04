int procprob(int a, short b, long *u, char *v) {
/* $begin 320-procprob-body-c */
    *u += a;
    *v += b;
    return sizeof(a) + sizeof(b);
/* $end 320-procprob-body-c */
}

#if 0
/* $begin 320-procprob-altproto-c */
int procprob(int b, short a, long *v, char *u) {
/* $end 320-procprob-altproto-c */
#endif


/* $begin argprob-proto-c */
void argprob(char a,  short b,  int c,  long d,
	     char *e, short *f, int *g, long *h) {
/* $end argprob-proto-c */
/* $begin argprob-body-c */
    *g = c - a;
    *h = b - d;
    *e = *f;
/* $end argprob-body-c */
}
