/*
 * environ: makes a map of the arguments and environment variables 
 * when a C program begins execution
 */
/* $begin environ */
#include "csapp.h"

int main(int argc, char **argv, char **envp) 
{
    int i;

    /* addrs of argc, argv, argv[], environ, environ[] */ 
    printf("&argc        = %p\n", &argc);
    printf("&argv        = %p\n", &argv);
    printf("&envp        = %p\n", &envp);
    printf("&argv[]      = %p\n", argv);
    printf("&environ   = %p\n", &environ);
    printf("&environ[] = %p\n", environ);
    printf("&i           = %p\n", &i);
    printf("envp         = %p\n", envp);
    printf("environ      = %p\n", environ);

    /* argument list */
    printf("Argument list:\n");
    i=0;
    while (argv[i]) { 
	printf("    %p: (%p) argv[%2d]: %s\n", 
	       &argv[i], argv[i], i, argv[i]);
	i++;
    }

    /* environment list */
    printf("Environment list:\n");
    i=0;
    while (environ[i]) {
	printf("    %p: (%p) environ[%2d]: %s\n", 
	       &environ[i], environ[i], i, environ[i]);
	i++;
    }

    exit(0);
}
/* $end environ */
