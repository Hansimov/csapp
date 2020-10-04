
swap.o:     file format elf64-x86-64
swap.o
architecture: i386:x86-64, flags 0x00000011:
HAS_RELOC, HAS_SYMS
start address 0x0000000000000000

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         00000026  0000000000000000  0000000000000000  00000040  2**2
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
  1 .data         00000008  0000000000000000  0000000000000000  00000068  2**3
                  CONTENTS, ALLOC, LOAD, RELOC, DATA
  2 .bss          00000000  0000000000000000  0000000000000000  00000070  2**2
                  ALLOC
  3 .comment      0000002a  0000000000000000  0000000000000000  00000070  2**0
                  CONTENTS, READONLY
  4 .note.GNU-stack 00000000  0000000000000000  0000000000000000  0000009a  2**0
                  CONTENTS, READONLY
  5 .eh_frame     00000030  0000000000000000  0000000000000000  000000a0  2**3
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, DATA
SYMBOL TABLE:
0000000000000000 l    df *ABS*	0000000000000000 swap.c
0000000000000000 l    d  .text	0000000000000000 .text
0000000000000000 l    d  .data	0000000000000000 .data
0000000000000000 l    d  .bss	0000000000000000 .bss
0000000000000000 l    d  .note.GNU-stack	0000000000000000 .note.GNU-stack
0000000000000000 l    d  .eh_frame	0000000000000000 .eh_frame
0000000000000000 l    d  .comment	0000000000000000 .comment
0000000000000000 g     F .text	0000000000000026 swap
0000000000000000         *UND*	0000000000000000 buf
0000000000000008       O *COM*	0000000000000008 bufp1
0000000000000000 g     O .data	0000000000000008 bufp0



Disassembly of section .text:

0000000000000000 <swap>:
   0:	48 c7 05 00 00 00 00 	movq   $0x0,0x0(%rip)        # b <swap+0xb>
   7:	00 00 00 00 
			3: R_X86_64_PC32	bufp1-0x8
			7: R_X86_64_32S	buf+0x4
   b:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 12 <swap+0x12>
			e: R_X86_64_PC32	bufp0-0x4
  12:	8b 10                	mov    (%rax),%edx
  14:	8b 0d 00 00 00 00    	mov    0x0(%rip),%ecx        # 1a <swap+0x1a>
			16: R_X86_64_PC32	buf
  1a:	89 08                	mov    %ecx,(%rax)
  1c:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 23 <swap+0x23>
			1f: R_X86_64_PC32	bufp1-0x4
  23:	89 10                	mov    %edx,(%rax)
  25:	c3                   	retq   
