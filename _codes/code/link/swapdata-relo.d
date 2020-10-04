
swap.o:     file format elf64-x86-64
swap.o
architecture: i386:x86-64, flags 0x00000011:
HAS_RELOC, HAS_SYMS
start address 0x0000000000000000

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  1 .data         00000008  0000000000000000  0000000000000000  00000068  2**3
                  CONTENTS, ALLOC, LOAD, RELOC, DATA
SYMBOL TABLE:
0000000000000000 l    d  .data	0000000000000000 .data
0000000000000000 g     O .data	0000000000000008 bufp0



Disassembly of section .data:

0000000000000000 <bufp0>:
	...
			0: R_X86_64_64	buf
