#include <stdio.h>
#include <stdlib.h>

#if 0
/* $begin 250-switcher-prob-c */
void switcher(long a, long b, long c, long *dest)
{
    long val;
    switch(a) {
    case ___:       /* Case A */
	c = _____;
	/* Fall through */
    case ___:       /* Case B */
	val = _____;
	break;
    case ___:       /* Case C */
    case ___:       /* Case D */
	val = _____;
	break;
    case ___:       /* Case E */
	val = _____;
	break;
    default:
	val = _____;
    }
    *dest = val;
}
/* $end 250-switcher-prob-c */
#endif

/* $begin 250-switcher-ans-c */
void switcher(long a, long b, long c, long *dest)
{
    long val;
    switch(a) {
    case 5:
	c = b ^ 15;
	/* Fall through */
    case 0:
	val = c + 112;
	break;
    case 2:
    case 7:
	val = (c + b) << 2; 
	break;
    case 4:
	val = a;  
	break;
    default:
	val = b;
    }
    *dest = val;
}
/* $end 250-switcher-ans-c */

int main(int  argc, char *argv[]) {
    long args[3] = {1, 2, 3};
    int i;
    long val;
    for (i = 0; i < 3 && i < argc-1; i++)
	args[i] = atoi(argv[i+1]);
    switcher(args[0], args[1], args[2], &val);
    printf("Switcher(%ld, %ld, %ld) --> %ld\n",
	   args[0], args[1], args[2], val);
    return 0;
}
