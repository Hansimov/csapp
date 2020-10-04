/* Example with heavy register usage */

long proc(x, y, z)
{
    return x+y+z;
}

void t3(long *ap, long *bp, long *cp,
	long *dp, long *ep, long *fp) {
    long a = *ap;
    long b = *bp;
    long c = *cp;
    long d = *dp;
    long e = *ep;
    long f = *fp;

    long vala = a+b;
    long valb = b+c;
    long valc = c+d;
    long vald = d+e;
    long vale = e+f;
    long valf = f+a;
    *ap = vala;
    *bp = valb;
    *cp = valc;
    *dp = vald;
    *ep = vale;
    *fp = valf;
}

