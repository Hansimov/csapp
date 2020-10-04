/* Different variations on pop count and related functions */
long test_fun_a(unsigned long x)
{
    long i;
    long val = 0;
    for (i = 0; i < 64; i++)
	val ^= (x & (1L<<i)) != 0;
    return val;
}

/* $begin 190-fun_a-ans-c */
long fun_a(unsigned long x) {
    long val = 0;
    while (x) {
	val ^= x;
	x >>= 1;
    }
    return val & 0x1;
}
/* $end 190-fun_a-ans-c */

#if 0
/* $begin 190-fun_a-proto-c */
long fun_a(unsigned long x) {
    long val = 0;
    while ( ... ) {
	...
    }
    return ...;
}
/* $end 190-fun_a-proto-c */
#endif

/* $begin 190-fun_b-ans-c */
long fun_b(unsigned long x) {
    long val = 0;
    long i;
    for (i = 64; i != 0; i--) {
	val = (val << 1) | (x & 0x1);
	x >>= 1;
    }
    return val;
}
/* $end 190-fun_b-ans-c */

#if 0
/* $begin 190-fun_b-proto-c */
long fun_b(unsigned long x) {
    long val = 0;
    long i;
    for ( ... ; ... ; ... ) {
	...
    }
    return val;
}
/* $end 190-fun_b-proto-c */
#endif

long test_fun_b(unsigned long x)
{
    long l, r;
    long val = 0;
    for (l = 0, r = 63; l < 64; l++, r--) {
	long bit = (x & (1L<<l)) != 0;
	if (bit)
		val |= (1<<r);
	}
    return val;
}

/* $begin fun_c-ans-c */
long fun_c(unsigned long x) {
    long val = 0;
    long i;
    for (i = 0; i < 8; i++) {
	val += x & 0x01010101;
	x >>= 1;
    }
    val += (val >> 16);
    val += (val >> 8);
    return val & 0xFF;
}
/* $end fun_c-ans-c */

#if 0
/* $begin fun_c-proto-c */
long fun_c(unsigned long x) {
    long val = 0;
    long i;
    for ( ... ; ... ; ... ) {
	...
    }
    ...
    return ...;
}
/* $end fun_c-proto-c */
#endif

long test_fun_c(unsigned long x)
{
    long i;
    long val = 0;
    for (i = 0; i < 64; i++)
	val += (x & (1<<i)) != 0;
    return val;
}

long test_count_p(unsigned long x)
{
    long i;
    long val = 0;
    for (i = 0; i < 64; i++)
	val += (x & (1L<<i)) != 0;
    return val;
}

long count_p(unsigned long x) {
    long val = 0;
    while (x) {
	val += (x >> (64-1));
	x <<= 1;
    }
    return val;
}

long count_q(unsigned long x) {
    long val = 0;
    unsigned long mask = 1L<<63;
    while (mask) {
	val += (x & mask) != 0;
	mask >>= 1;
    }
    return val;
}

long test_count_q(unsigned long x)
{
    long i;
    long val = 0;
    for (i = 0; i < 64; i++)
	val += (x & (1L<<i)) != 0;
    return val;
}

long count_r(unsigned long x) {
    long val = 0;
    unsigned long mask;
    for (mask = 1; mask; mask <<= 1)
	if (x & mask)
	    val ++;
    return val;
}

long test_count_r(unsigned long x)
{
    long i;
    long val = 0;
    for (i = 0; i < 64; i++)
	val += (x & (1L<<i)) != 0;
    return val;
}


