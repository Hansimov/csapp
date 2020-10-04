/* Demonstration of buffer overflow */

#include <stdio.h>
#include <stdlib.h>

/* $begin bufdemo-c */
/* Implementation of library function gets() */
char *gets(char *s)
{
    int c;
    char *dest = s;
    while ((c = getchar()) != '\n' && c != EOF) 
        *dest++ = c;
    *dest++ = '\0'; /* Terminate String */
    if (c == EOF)
        return NULL;
    return s;  
}

/* Read input line and write it back */
void echo()
{
    char buf[4];  /* Way too small! */
    gets(buf);
    puts(buf);
}
/* $end bufdemo-c */

/* $begin bufdemo-ans-c */
/* Read input line and write it back */
/* Code will work for any buffer size.  Bigger is more time-efficient */
#define BUFSIZE 64
void good_echo() 
{
    char buf[BUFSIZE];
    int i;
    while (1) {
        if (!fgets(buf, BUFSIZE, stdin))
            return;  /* End of file or error */
        /* Print characters in buffer */
        for (i = 0; buf[i] && buf[i] != '\n'; i++)
            if (putchar(buf[i]) == EOF)
                return; /* Error */
        if (buf[i] == '\n') {
            /* Reached terminating newline */
            putchar('\n');
            return;
        }
    }
}
/* $end bufdemo-ans-c */

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
