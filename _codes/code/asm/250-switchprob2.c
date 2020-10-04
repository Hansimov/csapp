#include <stdio.h>
#include <stdlib.h>

#if 0
/* $begin switchprob2-prob-c */
long int switcher(long int a, long int b, long int c)
{
    long int answer;
    switch(a) {
    case ___:       /* Case A */
	c = _____;
	/* Fall through */
    case ___:       /* Case B */
	answer = _____;
	break;
    case ___:       /* Case C */
    case ___:       /* Case D */
	answer = _____;
	break;
    case ___:       /* Case E */
	answer = _____;
	break;
    default:
	answer = _____;
    }
    return answer;
}
/* $end switchprob2-prob-c */
#endif

/* $begin switchprob2-ans-c */
long int switcher(long int a, long int b, long int c)
{
    long int answer;
    switch(a) {
    case 5:
	c = b ^ 15;
	/* Fall through */
    case 0:
	answer = c + 112;
	break;
    case 2:
    case 7:
	answer = (c + b) << 2; 
	break;
    case 4:
	answer = a;  
	break;
    default:
	answer = b;
    }
    return answer;
}
/* $end switchprob2-ans-c */

int main(int  argc, char *argv[]) {
    int args[3] = {1, 2, 3};
    int i;
    for (i = 0; i < 3 && i < argc-1; i++)
	args[i] = atoi(argv[i+1]);
    printf("Switcher(%d, %d, %d) --> %d\n",
	   args[0], args[1], args[2],
	   switcher(args[0], args[1], args[2]));
    return 0;
}
