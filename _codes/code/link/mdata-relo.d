
m.o:     file format elf64-x86-64
m.o
architecture: i386:x86-64, flags 0x00000011:
HAS_RELOC, HAS_SYMS
start address 0x0000000000000000

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  1 .data         00000008  0000000000000000  0000000000000000  00000058  2**2
                  CONTENTS, ALLOC, LOAD, DATA
SYMBOL TABLE:
0000000000000000 l    d  .data	0000000000000000 .data
0000000000000000 g     O .data	0000000000000008 buf



Disassembly of section .data:

0000000000000000 <buf>:
   0:	01 00 00 00 02 00 00 00                             ........
