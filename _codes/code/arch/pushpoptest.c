/* Experiments to test pushl %esp */

#include <stdio.h>
#include <stdlib.h>

long pushtest();
long poptest();

int main()
{
  printf("pushtest -> 0x%lx\n", pushtest());
  printf("poptest -> 0x%lx\n", poptest());
}
