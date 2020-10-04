
sum.o:     file format elf64-x86-64
sum.o
architecture: i386:x86-64, flags 0x00000011:
HAS_RELOC, HAS_SYMS
start address 0x0000000000000000

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         0000001b  0000000000000000  0000000000000000  00000040  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .data         00000000  0000000000000000  0000000000000000  0000005c  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00000000  0000000000000000  0000000000000000  0000005c  2**2
                  ALLOC
  3 .comment      0000002a  0000000000000000  0000000000000000  0000005c  2**0
                  CONTENTS, READONLY
  4 .note.GNU-stack 00000000  0000000000000000  0000000000000000  00000086  2**0
                  CONTENTS, READONLY
  5 .eh_frame     00000030  0000000000000000  0000000000000000  00000088  2**3
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, DATA
SYMBOL TABLE:
0000000000000000 l    df *ABS*	0000000000000000 sum.c
0000000000000000 l    d  .text	0000000000000000 .text
0000000000000000 l    d  .data	0000000000000000 .data
0000000000000000 l    d  .bss	0000000000000000 .bss
0000000000000000 l    d  .note.GNU-stack	0000000000000000 .note.GNU-stack
0000000000000000 l    d  .eh_frame	0000000000000000 .eh_frame
0000000000000000 l    d  .comment	0000000000000000 .comment
0000000000000000 g     F .text	000000000000001b sum



Disassembly of section .text:

0000000000000000 <sum>:
   0:	b8 00 00 00 00       	mov    $0x0,%eax
   5:	ba 00 00 00 00       	mov    $0x0,%edx
   a:	eb 09                	jmp    15 <sum+0x15>
   c:	48 63 ca             	movslq %edx,%rcx
   f:	03 04 8f             	add    (%rdi,%rcx,4),%eax
  12:	83 c2 01             	add    $0x1,%edx
  15:	39 f2                	cmp    %esi,%edx
  17:	7c f3                	jl     c <sum+0xc>
  19:	f3 c3                	repz retq 
