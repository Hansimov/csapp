

/* $begin 390-struct2-c */
struct prob {
    int *p;
    struct {
        int x;
        int y;
    } s;
    struct prob *next;
};
/* $end 390-struct2-c */

/* $begin 390-struct2-ans-c */
void sp_init(struct prob *sp)
{
    sp->s.x   = sp->s.y;
    sp->p     = &(sp->s.x);
    sp->next  = sp;
}
/* $end 390-struct2-ans-c */

#if 0
/* $begin 390-struct2-prob-c */
void sp_init(struct prob *sp) {
    sp->s.x   = __________;
    sp->p     = __________;
    sp->next  = __________;
}
/* $end 390-struct2-prob-c */
#endif
