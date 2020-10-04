/* $begin 240-switch2-c */
void switch2(long x, long *dest) {
    long val = 0;
    switch (x) {
	/* Body of switch statement omitted */
	/* $end 240-switch2-c */
    case -1: val = -1; break;
    case 7:
    case 0: val = 8; break;
    case 1: val = 1; break;
    case 2:
    case 4: val = 4; break;
    case 5: val = 5; break;
    default: val = 7; break;
/* $begin 240-switch2-c */
    }
    *dest = val;
}
/* $end 240-switch2-c */
