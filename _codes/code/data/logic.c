#include <stdlib.h>
#include <stdio.h>

void logic_eg(int x, int y)
{
  printf("x = 0x%.2x\n", 0xFF&(x));
  printf("y = 0x%.2x\n", 0xFF&(y));
  printf("x&y = 0x%.2x\n", 0xFF&(x&y));
  printf("x&&y = 0x%.2x\n", 0xFF&(x&&y));
  printf("x|y = 0x%.2x\n", 0xFF&(x|y));
  printf("x||y = 0x%.2x\n", 0xFF&(x||y));
  printf("~x|~y = 0x%.2x\n", 0xFF&(~x|~y));
  printf("!x||!y = 0x%.2x\n", 0xFF&(!x||!y));
  printf("x&!y = 0x%.2x\n", 0xFF&(x&!y));
  printf("x&&~y = 0x%.2x\n", 0xFF&(x&&~y));
}

int main(int argc, char* argv[])
{
  int x, y;
  if (argc != 3) {
    printf("Usage: %s x y\n", argv[0]);
    exit(0);
  }
  sscanf(argv[1], "%x", &x);
  sscanf(argv[2], "%x", &y);
  logic_eg(x, y);
  return 0;
}
