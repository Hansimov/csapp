/* $begin 410-structvsunion-c */
struct S3 {
    char c;
    int i[2];
    double v;
};

union U3 {
    char c;
    int i[2];
    double v;
};
/* $end 410-structvsunion-c */


/* $begin 410-double2bits-c */
unsigned long double2bits(double d) {
    union {
	double d;
	unsigned long u;
    } temp;
    temp.d = d;
    return temp.u;
};
/* $end 410-double2bits-c */

/* $begin 410-double2ulong */
unsigned long double2ulong(double d) {
    return (unsigned long) d;
};
/* $end 410-double2ulong */

/* $begin 410-ulong2double-c */
double ulong2double(unsigned long u)
{
    union {
	unsigned long u;
	double d;
    } temp;
    temp.u = u;
    return temp.d;
};
/* $end 410-ulong2double-c */


/* $begin 410-uu2double-c */
double uu2double(unsigned word0, unsigned word1) 
{ 
    union { 
	double d; 
	unsigned u[2]; 
    } temp; 

    temp.u[0] = word0; 
    temp.u[1] = word1; 
    return temp.d; 
} 
/* $end 410-uu2double-c */

/* $begin 410-uconvert-c */
double uconvert(unsigned long u) {
    return (double) u;
}
/* $end 410-uconvert-c */

/* $begin 410-iconvert-c */
double iconvert(long x) {
    return (double) x;
}
/* $end 410-iconvert-c */
