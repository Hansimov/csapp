/* $begin xbyte-proto */
/* Declaration of data type where 4 bytes are packed
   into an unsigned */
typedef unsigned packed_t;

/* Extract byte from word.  Return as signed integer */
int xbyte(packed_t word, int bytenum);
/* $end xbyte-proto */


/* Correct version of xbyte */
int xbyte(packed_t word, int bytenum) {
    /* Solution omitted in this file */
}

/* Failed attempt at xbyte */
int xbyte_bad(packed_t word, int bytenum)
#if 0
/* $begin xbyte-bad */
/* Failed attempt at xbyte */
int xbyte(packed_t word, int bytenum)
/* $end xbyte-bad */
#endif
     /* $begin xbyte-bad */
{
    return
	(word >> (bytenum << 3)) & 0xFF;
}
/* $end xbyte-bad */


int main(int argc, char *argv[]) {
    int x;
    int i;
    if (*argv[1] == '0')
	sscanf(argv[1], "%x", &x);
    else
	sscanf(argv[1], "%d", &x);
    for (i = 0; i < 4; i++) {
	int xbb = xbyte_bad(x, i);
	int xb = xbyte(x, i);
	printf("x = %d (0x%x), bad = %d, good = %d\n",
	       x, x, xbb, xb);
    }
}
