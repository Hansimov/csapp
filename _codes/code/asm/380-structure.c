/* $begin 380-struct-c */
struct rec {
    int i;
    int j;
    int a[2];
    int *p;
};
/* $end 380-struct-c */

void copy(struct rec *r)
{
    r->j = r->i;
}


void set_i(struct rec *r, int val)
{
    r->i = val;
}

void set_a_ele(struct rec *r, int i, int val)
{
    r->a[i] = val;
}

void set_p(struct rec *r, int *pval)
{
    r->p = pval;
}

struct rec *p;
struct rec *q;
int j, k;

int *find_a(struct rec *r, int i)
{
    int *val;
    p = r;
    j = i;
    val = &r->a[i];
    q = r;
    k = i;
    return val;
}

void link_p(struct rec *r)
{
    r->p = &r->a[r->i + r->j];
}

/* $begin nodestruct-c */
struct NODE {
    struct NODE *left;
    struct NODE *right;
    double data;
};
/* $begin nodestruct-c */


