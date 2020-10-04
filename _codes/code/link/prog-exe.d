
prog:     file format elf64-x86-64
prog
architecture: i386:x86-64, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x00000000004003c0

Program Header:
    PHDR off    0x0000000000000040 vaddr 0x0000000000400040 paddr 0x0000000000400040 align 2**3
         filesz 0x00000000000001f8 memsz 0x00000000000001f8 flags r-x
  INTERP off    0x0000000000000238 vaddr 0x0000000000400238 paddr 0x0000000000400238 align 2**0
         filesz 0x000000000000001c memsz 0x000000000000001c flags r--
    LOAD off    0x0000000000000000 vaddr 0x0000000000400000 paddr 0x0000000000400000 align 2**21
         filesz 0x000000000000069c memsz 0x000000000000069c flags r-x
    LOAD off    0x0000000000000df8 vaddr 0x0000000000600df8 paddr 0x0000000000600df8 align 2**21
         filesz 0x0000000000000228 memsz 0x0000000000000230 flags rw-
 DYNAMIC off    0x0000000000000e10 vaddr 0x0000000000600e10 paddr 0x0000000000600e10 align 2**3
         filesz 0x00000000000001d0 memsz 0x00000000000001d0 flags rw-
    NOTE off    0x0000000000000254 vaddr 0x0000000000400254 paddr 0x0000000000400254 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
EH_FRAME off    0x00000000000005b4 vaddr 0x00000000004005b4 paddr 0x00000000004005b4 align 2**2
         filesz 0x0000000000000034 memsz 0x0000000000000034 flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**3
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x0000000000000df8 vaddr 0x0000000000600df8 paddr 0x0000000000600df8 align 2**0
         filesz 0x0000000000000208 memsz 0x0000000000000208 flags r--

Dynamic Section:
  NEEDED               libc.so.6
  INIT                 0x0000000000400390
  FINI                 0x00000000004005a4
  INIT_ARRAY           0x0000000000600df8
  INIT_ARRAYSZ         0x0000000000000008
  FINI_ARRAY           0x0000000000600e00
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x0000000000400298
  STRTAB               0x0000000000400300
  SYMTAB               0x00000000004002b8
  STRSZ                0x0000000000000038
  SYMENT               0x0000000000000018
  DEBUG                0x0000000000000000
  PLTGOT               0x0000000000600fe8
  PLTRELSZ             0x0000000000000018
  PLTREL               0x0000000000000007
  JMPREL               0x0000000000400378
  RELA                 0x0000000000400360
  RELASZ               0x0000000000000018
  RELAENT              0x0000000000000018
  VERNEED              0x0000000000400340
  VERNEEDNUM           0x0000000000000001
  VERSYM               0x0000000000400338

Version References:
  required from libc.so.6:
    0x09691a75 0x00 02 GLIBC_2.2.5

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .interp       0000001c  0000000000400238  0000000000400238  00000238  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .note.ABI-tag 00000020  0000000000400254  0000000000400254  00000254  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .note.gnu.build-id 00000024  0000000000400274  0000000000400274  00000274  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .gnu.hash     0000001c  0000000000400298  0000000000400298  00000298  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .dynsym       00000048  00000000004002b8  00000000004002b8  000002b8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .dynstr       00000038  0000000000400300  0000000000400300  00000300  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .gnu.version  00000006  0000000000400338  0000000000400338  00000338  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .gnu.version_r 00000020  0000000000400340  0000000000400340  00000340  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .rela.dyn     00000018  0000000000400360  0000000000400360  00000360  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .rela.plt     00000018  0000000000400378  0000000000400378  00000378  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 10 .init         0000000e  0000000000400390  0000000000400390  00000390  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .plt          00000020  00000000004003a0  00000000004003a0  000003a0  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .text         000001e4  00000000004003c0  00000000004003c0  000003c0  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .fini         00000009  00000000004005a4  00000000004005a4  000005a4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 14 .rodata       00000004  00000000004005b0  00000000004005b0  000005b0  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 15 .eh_frame_hdr 00000034  00000000004005b4  00000000004005b4  000005b4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 16 .eh_frame     000000b4  00000000004005e8  00000000004005e8  000005e8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 17 .init_array   00000008  0000000000600df8  0000000000600df8  00000df8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 18 .fini_array   00000008  0000000000600e00  0000000000600e00  00000e00  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 19 .jcr          00000008  0000000000600e08  0000000000600e08  00000e08  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 20 .dynamic      000001d0  0000000000600e10  0000000000600e10  00000e10  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 21 .got          00000008  0000000000600fe0  0000000000600fe0  00000fe0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 22 .got.plt      00000020  0000000000600fe8  0000000000600fe8  00000fe8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 23 .data         00000018  0000000000601008  0000000000601008  00001008  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 24 .bss          00000008  0000000000601020  0000000000601020  00001020  2**2
                  ALLOC
 25 .comment      00000053  0000000000000000  0000000000000000  00001020  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
0000000000400238 l    d  .interp	0000000000000000              .interp
0000000000400254 l    d  .note.ABI-tag	0000000000000000              .note.ABI-tag
0000000000400274 l    d  .note.gnu.build-id	0000000000000000              .note.gnu.build-id
0000000000400298 l    d  .gnu.hash	0000000000000000              .gnu.hash
00000000004002b8 l    d  .dynsym	0000000000000000              .dynsym
0000000000400300 l    d  .dynstr	0000000000000000              .dynstr
0000000000400338 l    d  .gnu.version	0000000000000000              .gnu.version
0000000000400340 l    d  .gnu.version_r	0000000000000000              .gnu.version_r
0000000000400360 l    d  .rela.dyn	0000000000000000              .rela.dyn
0000000000400378 l    d  .rela.plt	0000000000000000              .rela.plt
0000000000400390 l    d  .init	0000000000000000              .init
00000000004003a0 l    d  .plt	0000000000000000              .plt
00000000004003c0 l    d  .text	0000000000000000              .text
00000000004005a4 l    d  .fini	0000000000000000              .fini
00000000004005b0 l    d  .rodata	0000000000000000              .rodata
00000000004005b4 l    d  .eh_frame_hdr	0000000000000000              .eh_frame_hdr
00000000004005e8 l    d  .eh_frame	0000000000000000              .eh_frame
0000000000600df8 l    d  .init_array	0000000000000000              .init_array
0000000000600e00 l    d  .fini_array	0000000000000000              .fini_array
0000000000600e08 l    d  .jcr	0000000000000000              .jcr
0000000000600e10 l    d  .dynamic	0000000000000000              .dynamic
0000000000600fe0 l    d  .got	0000000000000000              .got
0000000000600fe8 l    d  .got.plt	0000000000000000              .got.plt
0000000000601008 l    d  .data	0000000000000000              .data
0000000000601020 l    d  .bss	0000000000000000              .bss
0000000000000000 l    d  .comment	0000000000000000              .comment
00000000004003ec l     F .text	0000000000000000              call_gmon_start
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000600e08 l     O .jcr	0000000000000000              __JCR_LIST__
0000000000400410 l     F .text	0000000000000000              deregister_tm_clones
0000000000400440 l     F .text	0000000000000000              register_tm_clones
0000000000400480 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000601020 l     O .bss	0000000000000001              completed.6976
0000000000600e00 l     O .fini_array	0000000000000000              __do_global_dtors_aux_fini_array_entry
00000000004004a0 l     F .text	0000000000000000              frame_dummy
0000000000600df8 l     O .init_array	0000000000000000              __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000              main.c
0000000000000000 l    df *ABS*	0000000000000000              sum.c
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000400698 l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000600e08 l     O .jcr	0000000000000000              __JCR_END__
0000000000600e00 l       .init_array	0000000000000000              __init_array_end
0000000000600e10 l     O .dynamic	0000000000000000              _DYNAMIC
0000000000600df8 l       .init_array	0000000000000000              __init_array_start
0000000000600fe8 l     O .got.plt	0000000000000000              _GLOBAL_OFFSET_TABLE_
00000000004005a0 g     F .text	0000000000000002              __libc_csu_fini
0000000000000000  w      *UND*	0000000000000000              _ITM_deregisterTMCloneTable
0000000000601008  w      .data	0000000000000000              data_start
0000000000601018 g     O .data	0000000000000008              array
0000000000601020 g       *ABS*	0000000000000000              _edata
00000000004005a4 g     F .fini	0000000000000000              _fini
0000000000000000       F *UND*	0000000000000000              __libc_start_main@@GLIBC_2.2.5
0000000000601008 g       .data	0000000000000000              __data_start
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000601010 g     O .data	0000000000000000              .hidden __dso_handle
00000000004004e8 g     F .text	000000000000001b              sum
00000000004005b0 g     O .rodata	0000000000000004              _IO_stdin_used
0000000000400510 g     F .text	0000000000000089              __libc_csu_init
0000000000601028 g       *ABS*	0000000000000000              _end
00000000004003c0 g     F .text	0000000000000000              _start
0000000000601020 g       *ABS*	0000000000000000              __bss_start
00000000004004d0 g     F .text	0000000000000018              main
0000000000000000  w      *UND*	0000000000000000              _Jv_RegisterClasses
0000000000601020 g     O .data	0000000000000000              .hidden __TMC_END__
0000000000000000  w      *UND*	0000000000000000              _ITM_registerTMCloneTable
0000000000400390 g     F .init	0000000000000000              _init



Disassembly of section .init:

0000000000400390 <_init>:
  400390:	48 83 ec 08          	sub    $0x8,%rsp
  400394:	e8 53 00 00 00       	callq  4003ec <call_gmon_start>
  400399:	48 83 c4 08          	add    $0x8,%rsp
  40039d:	c3                   	retq   

Disassembly of section .plt:

00000000004003a0 <__libc_start_main@plt-0x10>:
  4003a0:	ff 35 4a 0c 20 00    	pushq  0x200c4a(%rip)        # 600ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  4003a6:	ff 25 4c 0c 20 00    	jmpq   *0x200c4c(%rip)        # 600ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  4003ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004003b0 <__libc_start_main@plt>:
  4003b0:	ff 25 4a 0c 20 00    	jmpq   *0x200c4a(%rip)        # 601000 <_GLOBAL_OFFSET_TABLE_+0x18>
  4003b6:	68 00 00 00 00       	pushq  $0x0
  4003bb:	e9 e0 ff ff ff       	jmpq   4003a0 <_init+0x10>

Disassembly of section .text:

00000000004003c0 <_start>:
  4003c0:	31 ed                	xor    %ebp,%ebp
  4003c2:	49 89 d1             	mov    %rdx,%r9
  4003c5:	5e                   	pop    %rsi
  4003c6:	48 89 e2             	mov    %rsp,%rdx
  4003c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4003cd:	50                   	push   %rax
  4003ce:	54                   	push   %rsp
  4003cf:	49 c7 c0 a0 05 40 00 	mov    $0x4005a0,%r8
  4003d6:	48 c7 c1 10 05 40 00 	mov    $0x400510,%rcx
  4003dd:	48 c7 c7 d0 04 40 00 	mov    $0x4004d0,%rdi
  4003e4:	e8 c7 ff ff ff       	callq  4003b0 <__libc_start_main@plt>
  4003e9:	f4                   	hlt    
  4003ea:	90                   	nop
  4003eb:	90                   	nop

00000000004003ec <call_gmon_start>:
  4003ec:	48 83 ec 08          	sub    $0x8,%rsp
  4003f0:	48 8b 05 e9 0b 20 00 	mov    0x200be9(%rip),%rax        # 600fe0 <_DYNAMIC+0x1d0>
  4003f7:	48 85 c0             	test   %rax,%rax
  4003fa:	74 02                	je     4003fe <call_gmon_start+0x12>
  4003fc:	ff d0                	callq  *%rax
  4003fe:	48 83 c4 08          	add    $0x8,%rsp
  400402:	c3                   	retq   
  400403:	90                   	nop
  400404:	90                   	nop
  400405:	90                   	nop
  400406:	90                   	nop
  400407:	90                   	nop
  400408:	90                   	nop
  400409:	90                   	nop
  40040a:	90                   	nop
  40040b:	90                   	nop
  40040c:	90                   	nop
  40040d:	90                   	nop
  40040e:	90                   	nop
  40040f:	90                   	nop

0000000000400410 <deregister_tm_clones>:
  400410:	b8 27 10 60 00       	mov    $0x601027,%eax
  400415:	55                   	push   %rbp
  400416:	48 2d 20 10 60 00    	sub    $0x601020,%rax
  40041c:	48 83 f8 0e          	cmp    $0xe,%rax
  400420:	48 89 e5             	mov    %rsp,%rbp
  400423:	77 02                	ja     400427 <deregister_tm_clones+0x17>
  400425:	5d                   	pop    %rbp
  400426:	c3                   	retq   
  400427:	b8 00 00 00 00       	mov    $0x0,%eax
  40042c:	48 85 c0             	test   %rax,%rax
  40042f:	74 f4                	je     400425 <deregister_tm_clones+0x15>
  400431:	5d                   	pop    %rbp
  400432:	bf 20 10 60 00       	mov    $0x601020,%edi
  400437:	ff e0                	jmpq   *%rax
  400439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400440 <register_tm_clones>:
  400440:	b8 20 10 60 00       	mov    $0x601020,%eax
  400445:	55                   	push   %rbp
  400446:	48 2d 20 10 60 00    	sub    $0x601020,%rax
  40044c:	48 c1 f8 03          	sar    $0x3,%rax
  400450:	48 89 e5             	mov    %rsp,%rbp
  400453:	48 89 c2             	mov    %rax,%rdx
  400456:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40045a:	48 01 d0             	add    %rdx,%rax
  40045d:	48 d1 f8             	sar    %rax
  400460:	75 02                	jne    400464 <register_tm_clones+0x24>
  400462:	5d                   	pop    %rbp
  400463:	c3                   	retq   
  400464:	ba 00 00 00 00       	mov    $0x0,%edx
  400469:	48 85 d2             	test   %rdx,%rdx
  40046c:	74 f4                	je     400462 <register_tm_clones+0x22>
  40046e:	5d                   	pop    %rbp
  40046f:	48 89 c6             	mov    %rax,%rsi
  400472:	bf 20 10 60 00       	mov    $0x601020,%edi
  400477:	ff e2                	jmpq   *%rdx
  400479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400480 <__do_global_dtors_aux>:
  400480:	80 3d 99 0b 20 00 00 	cmpb   $0x0,0x200b99(%rip)        # 601020 <__bss_start>
  400487:	75 11                	jne    40049a <__do_global_dtors_aux+0x1a>
  400489:	55                   	push   %rbp
  40048a:	48 89 e5             	mov    %rsp,%rbp
  40048d:	e8 7e ff ff ff       	callq  400410 <deregister_tm_clones>
  400492:	5d                   	pop    %rbp
  400493:	c6 05 86 0b 20 00 01 	movb   $0x1,0x200b86(%rip)        # 601020 <__bss_start>
  40049a:	f3 c3                	repz retq 
  40049c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004a0 <frame_dummy>:
  4004a0:	48 83 3d 60 09 20 00 	cmpq   $0x0,0x200960(%rip)        # 600e08 <__JCR_END__>
  4004a7:	00 
  4004a8:	74 1e                	je     4004c8 <frame_dummy+0x28>
  4004aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4004af:	48 85 c0             	test   %rax,%rax
  4004b2:	74 14                	je     4004c8 <frame_dummy+0x28>
  4004b4:	55                   	push   %rbp
  4004b5:	bf 08 0e 60 00       	mov    $0x600e08,%edi
  4004ba:	48 89 e5             	mov    %rsp,%rbp
  4004bd:	ff d0                	callq  *%rax
  4004bf:	5d                   	pop    %rbp
  4004c0:	e9 7b ff ff ff       	jmpq   400440 <register_tm_clones>
  4004c5:	0f 1f 00             	nopl   (%rax)
  4004c8:	e9 73 ff ff ff       	jmpq   400440 <register_tm_clones>
  4004cd:	90                   	nop
  4004ce:	90                   	nop
  4004cf:	90                   	nop

00000000004004d0 <main>:
  4004d0:	48 83 ec 08          	sub    $0x8,%rsp
  4004d4:	be 02 00 00 00       	mov    $0x2,%esi
  4004d9:	bf 18 10 60 00       	mov    $0x601018,%edi
  4004de:	e8 05 00 00 00       	callq  4004e8 <sum>
  4004e3:	48 83 c4 08          	add    $0x8,%rsp
  4004e7:	c3                   	retq   

00000000004004e8 <sum>:
  4004e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4004ed:	ba 00 00 00 00       	mov    $0x0,%edx
  4004f2:	eb 09                	jmp    4004fd <sum+0x15>
  4004f4:	48 63 ca             	movslq %edx,%rcx
  4004f7:	03 04 8f             	add    (%rdi,%rcx,4),%eax
  4004fa:	83 c2 01             	add    $0x1,%edx
  4004fd:	39 f2                	cmp    %esi,%edx
  4004ff:	7c f3                	jl     4004f4 <sum+0xc>
  400501:	f3 c3                	repz retq 
  400503:	90                   	nop
  400504:	90                   	nop
  400505:	90                   	nop
  400506:	90                   	nop
  400507:	90                   	nop
  400508:	90                   	nop
  400509:	90                   	nop
  40050a:	90                   	nop
  40050b:	90                   	nop
  40050c:	90                   	nop
  40050d:	90                   	nop
  40050e:	90                   	nop
  40050f:	90                   	nop

0000000000400510 <__libc_csu_init>:
  400510:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400515:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  40051a:	48 8d 2d df 08 20 00 	lea    0x2008df(%rip),%rbp        # 600e00 <__init_array_end>
  400521:	4c 8d 25 d0 08 20 00 	lea    0x2008d0(%rip),%r12        # 600df8 <__frame_dummy_init_array_entry>
  400528:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  40052d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400532:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400537:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  40053c:	48 83 ec 38          	sub    $0x38,%rsp
  400540:	4c 29 e5             	sub    %r12,%rbp
  400543:	41 89 fd             	mov    %edi,%r13d
  400546:	49 89 f6             	mov    %rsi,%r14
  400549:	48 c1 fd 03          	sar    $0x3,%rbp
  40054d:	49 89 d7             	mov    %rdx,%r15
  400550:	e8 3b fe ff ff       	callq  400390 <_init>
  400555:	48 85 ed             	test   %rbp,%rbp
  400558:	74 1c                	je     400576 <__libc_csu_init+0x66>
  40055a:	31 db                	xor    %ebx,%ebx
  40055c:	0f 1f 40 00          	nopl   0x0(%rax)
  400560:	4c 89 fa             	mov    %r15,%rdx
  400563:	4c 89 f6             	mov    %r14,%rsi
  400566:	44 89 ef             	mov    %r13d,%edi
  400569:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40056d:	48 83 c3 01          	add    $0x1,%rbx
  400571:	48 39 eb             	cmp    %rbp,%rbx
  400574:	75 ea                	jne    400560 <__libc_csu_init+0x50>
  400576:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40057b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400580:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400585:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40058a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40058f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400594:	48 83 c4 38          	add    $0x38,%rsp
  400598:	c3                   	retq   
  400599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004005a0 <__libc_csu_fini>:
  4005a0:	f3 c3                	repz retq 
  4005a2:	90                   	nop
  4005a3:	90                   	nop

Disassembly of section .fini:

00000000004005a4 <_fini>:
  4005a4:	48 83 ec 08          	sub    $0x8,%rsp
  4005a8:	48 83 c4 08          	add    $0x8,%rsp
  4005ac:	c3                   	retq   
