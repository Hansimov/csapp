/* Implementation of functions to generate and manipulate linked lists */

/* $begin 400-struct-eg-decl-c */
struct ELE {
    long    v;
    struct ELE *p;
};

long fun(struct ELE *ptr);
/* $end 400-struct-eg-decl-c */


/* $begin 400-struct-eg-fun-c */
long fun(struct ELE *ptr) {
    long val = 0;
    while (ptr) {
	val += ptr->v;
	ptr  = ptr->p;
    }
    return val;
}
/* $end 400-struct-eg-fun-c */
