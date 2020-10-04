/* Demonstration of buffer overflow */

#include <stdio.h>
#include <stdlib.h>

/* $begin 450-bufdemo-c */
/* Implementation of library function gets() */
char *gets(char *s)
{
    int c;
    char *dest = s;
    while ((c = getchar()) != '\n' && c != EOF) 
        *dest++ = c;
    if (c == EOF && dest == s)
	/* No characters read */
        return NULL;
    *dest++ = '\0'; /* Terminate string */
    return s;  
}

/* Read input line and write it back */
void echo()
{
    char buf[8];  /* Way too small! */
    gets(buf);
    puts(buf);
}
/* $end 450-bufdemo-c */

/* $begin 450-bufdemo-ans-c */
/* Read input line and write it back */
/* Code will work for any buffer size.  Bigger is more time-efficient */
#define BUFSIZE 8
void good_echo() 
{
    char buf[BUFSIZE];
    char *bp = fgets(buf, BUFSIZE, stdin);
    if (bp)
	puts(bp);
}
/* $end 450-bufdemo-ans-c */

int main(int argc, char *argv[])
{
  int use_good = (argc > 1);
  printf("Type a string:");
  if (use_good)
    good_echo();
  else
    echo();
  return 0;
}
