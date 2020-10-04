/* Example problem illustrating buffer overflow */

#include <stdio.h>
#include <stdlib.h>

#define strlen(s) my_strlen(s)

/* Own version of gets */
char *gets(char *s)
{
    int c;
    char *dest = s;
    while ((c = getchar()) != '\n' && c != EOF) 
        *dest++ = c;
    if (c == EOF && dest == s)
	/* No characters read */
        return NULL;
    *dest++ = '\0'; /* Terminate String */
    return s;  
}

/* Use own versions of strlen and strcpy */
size_t my_strlen(const char *s)
{
    size_t len = 0;
    while (*(s++))
	len++;
    return len;
}

char *strcpy(char *dest, const char *src)
{
    char *result = dest;
    char c;
    do {
	c = *(src++);
	*(dest++) = c;
    } while (c);
    return result;
}

/* $begin 460-bufovf-raw-c */
/* This is very low-quality code.
   It is intended to illustrate bad programming practices.
   See Practice Problem SLASHrefLBRACKprob:asm:bufovfRBRACK. */
char *get_line()
{
    char buf[4];
    char *result;
    gets(buf);
    result = malloc(strlen(buf));
    strcpy(result, buf);
    return result;
}
/* $end 460-bufovf-raw-c */

int main(int argc, char *argv[])
{
    printf("Input>");
    puts(get_line());
    return 0;
}
