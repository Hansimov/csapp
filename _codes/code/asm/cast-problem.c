/* Try out different conversions */
typedef int src_t;
typedef long dest_t;

typedef long int lint;
typedef unsigned char uchar;
typedef long unsigned lunsigned;

#define BUILD(fname, st, dt) void fname(st *sp, dt *dp) { *dp = (dt) *sp; }

/* $begin cvt-c */
void cvt(src_t *sp, dest_t *dp)
{
    *dp = (dest_t) *sp;
}
/* $end cvt-c */

BUILD(lili, lint, lint)

BUILD(ci, char, int)

BUILD(cu, char, unsigned)

BUILD(ucli, uchar, lint)

BUILD(ic, int, char)

BUILD(uuc, unsigned, uchar)

BUILD(cs, char, short)
