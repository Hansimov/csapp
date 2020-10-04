
prog2l:     file format elf64-x86-64
prog2l
architecture: i386:x86-64, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x00000000004005e0

Program Header:
    PHDR off    0x0000000000000040 vaddr 0x0000000000400040 paddr 0x0000000000400040 align 2**3
         filesz 0x00000000000001f8 memsz 0x00000000000001f8 flags r-x
  INTERP off    0x0000000000000238 vaddr 0x0000000000400238 paddr 0x0000000000400238 align 2**0
         filesz 0x000000000000001c memsz 0x000000000000001c flags r--
    LOAD off    0x0000000000000000 vaddr 0x0000000000400000 paddr 0x0000000000400000 align 2**21
         filesz 0x00000000000008bc memsz 0x00000000000008bc flags r-x
    LOAD off    0x0000000000000de8 vaddr 0x0000000000600de8 paddr 0x0000000000600de8 align 2**21
         filesz 0x0000000000000250 memsz 0x0000000000000260 flags rw-
 DYNAMIC off    0x0000000000000e00 vaddr 0x0000000000600e00 paddr 0x0000000000600e00 align 2**3
         filesz 0x00000000000001e0 memsz 0x00000000000001e0 flags rw-
    NOTE off    0x0000000000000254 vaddr 0x0000000000400254 paddr 0x0000000000400254 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
EH_FRAME off    0x00000000000007f4 vaddr 0x00000000004007f4 paddr 0x00000000004007f4 align 2**2
         filesz 0x000000000000002c memsz 0x000000000000002c flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**3
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x0000000000000de8 vaddr 0x0000000000600de8 paddr 0x0000000000600de8 align 2**0
         filesz 0x0000000000000218 memsz 0x0000000000000218 flags r--

Dynamic Section:
  NEEDED               ./libvector.so
  NEEDED               libc.so.6
  INIT                 0x0000000000400588
  FINI                 0x00000000004007d4
  INIT_ARRAY           0x0000000000600de8
  INIT_ARRAYSZ         0x0000000000000008
  FINI_ARRAY           0x0000000000600df0
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x0000000000400298
  STRTAB               0x0000000000400408
  SYMTAB               0x00000000004002d0
  STRSZ                0x00000000000000d5
  SYMENT               0x0000000000000018
  DEBUG                0x0000000000000000
  PLTGOT               0x0000000000600fe8
  PLTRELSZ             0x0000000000000048
  PLTREL               0x0000000000000007
  JMPREL               0x0000000000400540
  RELA                 0x0000000000400528
  RELASZ               0x0000000000000018
  RELAENT              0x0000000000000018
  VERNEED              0x00000000004004f8
  VERNEEDNUM           0x0000000000000001
  VERSYM               0x00000000004004de

Version References:
  required from libc.so.6:
    0x09691974 0x00 03 GLIBC_2.3.4
    0x09691a75 0x00 02 GLIBC_2.2.5

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .interp       0000001c  0000000000400238  0000000000400238  00000238  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .note.ABI-tag 00000020  0000000000400254  0000000000400254  00000254  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .note.gnu.build-id 00000024  0000000000400274  0000000000400274  00000274  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .gnu.hash     00000038  0000000000400298  0000000000400298  00000298  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .dynsym       00000138  00000000004002d0  00000000004002d0  000002d0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .dynstr       000000d5  0000000000400408  0000000000400408  00000408  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .gnu.version  0000001a  00000000004004de  00000000004004de  000004de  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .gnu.version_r 00000030  00000000004004f8  00000000004004f8  000004f8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .rela.dyn     00000018  0000000000400528  0000000000400528  00000528  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .rela.plt     00000048  0000000000400540  0000000000400540  00000540  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 10 .init         0000000e  0000000000400588  0000000000400588  00000588  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .plt          00000040  00000000004005a0  00000000004005a0  000005a0  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .text         000001f4  00000000004005e0  00000000004005e0  000005e0  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .fini         00000009  00000000004007d4  00000000004007d4  000007d4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 14 .rodata       00000011  00000000004007e0  00000000004007e0  000007e0  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 15 .eh_frame_hdr 0000002c  00000000004007f4  00000000004007f4  000007f4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 16 .eh_frame     0000009c  0000000000400820  0000000000400820  00000820  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 17 .init_array   00000008  0000000000600de8  0000000000600de8  00000de8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 18 .fini_array   00000008  0000000000600df0  0000000000600df0  00000df0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 19 .jcr          00000008  0000000000600df8  0000000000600df8  00000df8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 20 .dynamic      000001e0  0000000000600e00  0000000000600e00  00000e00  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 21 .got          00000008  0000000000600fe0  0000000000600fe0  00000fe0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 22 .got.plt      00000030  0000000000600fe8  0000000000600fe8  00000fe8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 23 .data         00000020  0000000000601018  0000000000601018  00001018  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 24 .bss          00000010  0000000000601038  0000000000601038  00001038  2**2
                  ALLOC
 25 .comment      00000053  0000000000000000  0000000000000000  00001038  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
0000000000400238 l    d  .interp	0000000000000000              .interp
0000000000400254 l    d  .note.ABI-tag	0000000000000000              .note.ABI-tag
0000000000400274 l    d  .note.gnu.build-id	0000000000000000              .note.gnu.build-id
0000000000400298 l    d  .gnu.hash	0000000000000000              .gnu.hash
00000000004002d0 l    d  .dynsym	0000000000000000              .dynsym
0000000000400408 l    d  .dynstr	0000000000000000              .dynstr
00000000004004de l    d  .gnu.version	0000000000000000              .gnu.version
00000000004004f8 l    d  .gnu.version_r	0000000000000000              .gnu.version_r
0000000000400528 l    d  .rela.dyn	0000000000000000              .rela.dyn
0000000000400540 l    d  .rela.plt	0000000000000000              .rela.plt
0000000000400588 l    d  .init	0000000000000000              .init
00000000004005a0 l    d  .plt	0000000000000000              .plt
00000000004005e0 l    d  .text	0000000000000000              .text
00000000004007d4 l    d  .fini	0000000000000000              .fini
00000000004007e0 l    d  .rodata	0000000000000000              .rodata
00000000004007f4 l    d  .eh_frame_hdr	0000000000000000              .eh_frame_hdr
0000000000400820 l    d  .eh_frame	0000000000000000              .eh_frame
0000000000600de8 l    d  .init_array	0000000000000000              .init_array
0000000000600df0 l    d  .fini_array	0000000000000000              .fini_array
0000000000600df8 l    d  .jcr	0000000000000000              .jcr
0000000000600e00 l    d  .dynamic	0000000000000000              .dynamic
0000000000600fe0 l    d  .got	0000000000000000              .got
0000000000600fe8 l    d  .got.plt	0000000000000000              .got.plt
0000000000601018 l    d  .data	0000000000000000              .data
0000000000601038 l    d  .bss	0000000000000000              .bss
0000000000000000 l    d  .comment	0000000000000000              .comment
000000000040060c l     F .text	0000000000000000              call_gmon_start
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000600df8 l     O .jcr	0000000000000000              __JCR_LIST__
0000000000400630 l     F .text	0000000000000000              deregister_tm_clones
0000000000400660 l     F .text	0000000000000000              register_tm_clones
00000000004006a0 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000601038 l     O .bss	0000000000000001              completed.6976
0000000000600df0 l     O .fini_array	0000000000000000              __do_global_dtors_aux_fini_array_entry
00000000004006c0 l     F .text	0000000000000000              frame_dummy
0000000000600de8 l     O .init_array	0000000000000000              __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000              main2.c
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
00000000004008b8 l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000600df8 l     O .jcr	0000000000000000              __JCR_END__
0000000000600df0 l       .init_array	0000000000000000              __init_array_end
0000000000600e00 l     O .dynamic	0000000000000000              _DYNAMIC
0000000000600de8 l       .init_array	0000000000000000              __init_array_start
0000000000600fe8 l     O .got.plt	0000000000000000              _GLOBAL_OFFSET_TABLE_
00000000004007d0 g     F .text	0000000000000002              __libc_csu_fini
0000000000000000  w      *UND*	0000000000000000              _ITM_deregisterTMCloneTable
0000000000601018  w      .data	0000000000000000              data_start
0000000000601038 g       *ABS*	0000000000000000              _edata
000000000060103c g     O .bss	0000000000000008              z
0000000000601030 g     O .data	0000000000000008              x
00000000004007d4 g     F .fini	0000000000000000              _fini
0000000000000000       F *UND*	0000000000000000              __libc_start_main@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              addvec
0000000000601018 g       .data	0000000000000000              __data_start
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000601020 g     O .data	0000000000000000              .hidden __dso_handle
00000000004007e0 g     O .rodata	0000000000000004              _IO_stdin_used
0000000000400740 g     F .text	0000000000000089              __libc_csu_init
0000000000601048 g       *ABS*	0000000000000000              _end
00000000004005e0 g     F .text	0000000000000000              _start
0000000000601028 g     O .data	0000000000000008              y
0000000000601038 g       *ABS*	0000000000000000              __bss_start
00000000004006f0 g     F .text	0000000000000047              main
0000000000000000       F *UND*	0000000000000000              __printf_chk@@GLIBC_2.3.4
0000000000000000  w      *UND*	0000000000000000              _Jv_RegisterClasses
0000000000601038 g     O .data	0000000000000000              .hidden __TMC_END__
0000000000000000  w      *UND*	0000000000000000              _ITM_registerTMCloneTable
0000000000400588 g     F .init	0000000000000000              _init



Disassembly of section .init:

0000000000400588 <_init>:
  400588:	48 83 ec 08          	sub    $0x8,%rsp
  40058c:	e8 7b 00 00 00       	callq  40060c <call_gmon_start>
  400591:	48 83 c4 08          	add    $0x8,%rsp
  400595:	c3                   	retq   

Disassembly of section .plt:

00000000004005a0 <__libc_start_main@plt-0x10>:
  4005a0:	ff 35 4a 0a 20 00    	pushq  0x200a4a(%rip)        # 600ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005a6:	ff 25 4c 0a 20 00    	jmpq   *0x200a4c(%rip)        # 600ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005b0 <__libc_start_main@plt>:
  4005b0:	ff 25 4a 0a 20 00    	jmpq   *0x200a4a(%rip)        # 601000 <_GLOBAL_OFFSET_TABLE_+0x18>
  4005b6:	68 00 00 00 00       	pushq  $0x0
  4005bb:	e9 e0 ff ff ff       	jmpq   4005a0 <_init+0x18>

00000000004005c0 <addvec@plt>:
  4005c0:	ff 25 42 0a 20 00    	jmpq   *0x200a42(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x20>
  4005c6:	68 01 00 00 00       	pushq  $0x1
  4005cb:	e9 d0 ff ff ff       	jmpq   4005a0 <_init+0x18>

00000000004005d0 <__printf_chk@plt>:
  4005d0:	ff 25 3a 0a 20 00    	jmpq   *0x200a3a(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x28>
  4005d6:	68 02 00 00 00       	pushq  $0x2
  4005db:	e9 c0 ff ff ff       	jmpq   4005a0 <_init+0x18>

Disassembly of section .text:

00000000004005e0 <_start>:
  4005e0:	31 ed                	xor    %ebp,%ebp
  4005e2:	49 89 d1             	mov    %rdx,%r9
  4005e5:	5e                   	pop    %rsi
  4005e6:	48 89 e2             	mov    %rsp,%rdx
  4005e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4005ed:	50                   	push   %rax
  4005ee:	54                   	push   %rsp
  4005ef:	49 c7 c0 d0 07 40 00 	mov    $0x4007d0,%r8
  4005f6:	48 c7 c1 40 07 40 00 	mov    $0x400740,%rcx
  4005fd:	48 c7 c7 f0 06 40 00 	mov    $0x4006f0,%rdi
  400604:	e8 a7 ff ff ff       	callq  4005b0 <__libc_start_main@plt>
  400609:	f4                   	hlt    
  40060a:	90                   	nop
  40060b:	90                   	nop

000000000040060c <call_gmon_start>:
  40060c:	48 83 ec 08          	sub    $0x8,%rsp
  400610:	48 8b 05 c9 09 20 00 	mov    0x2009c9(%rip),%rax        # 600fe0 <_DYNAMIC+0x1e0>
  400617:	48 85 c0             	test   %rax,%rax
  40061a:	74 02                	je     40061e <call_gmon_start+0x12>
  40061c:	ff d0                	callq  *%rax
  40061e:	48 83 c4 08          	add    $0x8,%rsp
  400622:	c3                   	retq   
  400623:	90                   	nop
  400624:	90                   	nop
  400625:	90                   	nop
  400626:	90                   	nop
  400627:	90                   	nop
  400628:	90                   	nop
  400629:	90                   	nop
  40062a:	90                   	nop
  40062b:	90                   	nop
  40062c:	90                   	nop
  40062d:	90                   	nop
  40062e:	90                   	nop
  40062f:	90                   	nop

0000000000400630 <deregister_tm_clones>:
  400630:	b8 3f 10 60 00       	mov    $0x60103f,%eax
  400635:	55                   	push   %rbp
  400636:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  40063c:	48 83 f8 0e          	cmp    $0xe,%rax
  400640:	48 89 e5             	mov    %rsp,%rbp
  400643:	77 02                	ja     400647 <deregister_tm_clones+0x17>
  400645:	5d                   	pop    %rbp
  400646:	c3                   	retq   
  400647:	b8 00 00 00 00       	mov    $0x0,%eax
  40064c:	48 85 c0             	test   %rax,%rax
  40064f:	74 f4                	je     400645 <deregister_tm_clones+0x15>
  400651:	5d                   	pop    %rbp
  400652:	bf 38 10 60 00       	mov    $0x601038,%edi
  400657:	ff e0                	jmpq   *%rax
  400659:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400660 <register_tm_clones>:
  400660:	b8 38 10 60 00       	mov    $0x601038,%eax
  400665:	55                   	push   %rbp
  400666:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  40066c:	48 c1 f8 03          	sar    $0x3,%rax
  400670:	48 89 e5             	mov    %rsp,%rbp
  400673:	48 89 c2             	mov    %rax,%rdx
  400676:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40067a:	48 01 d0             	add    %rdx,%rax
  40067d:	48 d1 f8             	sar    %rax
  400680:	75 02                	jne    400684 <register_tm_clones+0x24>
  400682:	5d                   	pop    %rbp
  400683:	c3                   	retq   
  400684:	ba 00 00 00 00       	mov    $0x0,%edx
  400689:	48 85 d2             	test   %rdx,%rdx
  40068c:	74 f4                	je     400682 <register_tm_clones+0x22>
  40068e:	5d                   	pop    %rbp
  40068f:	48 89 c6             	mov    %rax,%rsi
  400692:	bf 38 10 60 00       	mov    $0x601038,%edi
  400697:	ff e2                	jmpq   *%rdx
  400699:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006a0 <__do_global_dtors_aux>:
  4006a0:	80 3d 91 09 20 00 00 	cmpb   $0x0,0x200991(%rip)        # 601038 <__bss_start>
  4006a7:	75 11                	jne    4006ba <__do_global_dtors_aux+0x1a>
  4006a9:	55                   	push   %rbp
  4006aa:	48 89 e5             	mov    %rsp,%rbp
  4006ad:	e8 7e ff ff ff       	callq  400630 <deregister_tm_clones>
  4006b2:	5d                   	pop    %rbp
  4006b3:	c6 05 7e 09 20 00 01 	movb   $0x1,0x20097e(%rip)        # 601038 <__bss_start>
  4006ba:	f3 c3                	repz retq 
  4006bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006c0 <frame_dummy>:
  4006c0:	48 83 3d 30 07 20 00 	cmpq   $0x0,0x200730(%rip)        # 600df8 <__JCR_END__>
  4006c7:	00 
  4006c8:	74 1e                	je     4006e8 <frame_dummy+0x28>
  4006ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4006cf:	48 85 c0             	test   %rax,%rax
  4006d2:	74 14                	je     4006e8 <frame_dummy+0x28>
  4006d4:	55                   	push   %rbp
  4006d5:	bf f8 0d 60 00       	mov    $0x600df8,%edi
  4006da:	48 89 e5             	mov    %rsp,%rbp
  4006dd:	ff d0                	callq  *%rax
  4006df:	5d                   	pop    %rbp
  4006e0:	e9 7b ff ff ff       	jmpq   400660 <register_tm_clones>
  4006e5:	0f 1f 00             	nopl   (%rax)
  4006e8:	e9 73 ff ff ff       	jmpq   400660 <register_tm_clones>
  4006ed:	90                   	nop
  4006ee:	90                   	nop
  4006ef:	90                   	nop

00000000004006f0 <main>:
  4006f0:	48 83 ec 08          	sub    $0x8,%rsp
  4006f4:	b9 02 00 00 00       	mov    $0x2,%ecx
  4006f9:	ba 3c 10 60 00       	mov    $0x60103c,%edx
  4006fe:	be 28 10 60 00       	mov    $0x601028,%esi
  400703:	bf 30 10 60 00       	mov    $0x601030,%edi
  400708:	e8 b3 fe ff ff       	callq  4005c0 <addvec@plt>
  40070d:	8b 0d 2d 09 20 00    	mov    0x20092d(%rip),%ecx        # 601040 <z+0x4>
  400713:	8b 15 23 09 20 00    	mov    0x200923(%rip),%edx        # 60103c <z>
  400719:	be e4 07 40 00       	mov    $0x4007e4,%esi
  40071e:	bf 01 00 00 00       	mov    $0x1,%edi
  400723:	b8 00 00 00 00       	mov    $0x0,%eax
  400728:	e8 a3 fe ff ff       	callq  4005d0 <__printf_chk@plt>
  40072d:	b8 00 00 00 00       	mov    $0x0,%eax
  400732:	48 83 c4 08          	add    $0x8,%rsp
  400736:	c3                   	retq   
  400737:	90                   	nop
  400738:	90                   	nop
  400739:	90                   	nop
  40073a:	90                   	nop
  40073b:	90                   	nop
  40073c:	90                   	nop
  40073d:	90                   	nop
  40073e:	90                   	nop
  40073f:	90                   	nop

0000000000400740 <__libc_csu_init>:
  400740:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400745:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  40074a:	48 8d 2d 9f 06 20 00 	lea    0x20069f(%rip),%rbp        # 600df0 <__init_array_end>
  400751:	4c 8d 25 90 06 20 00 	lea    0x200690(%rip),%r12        # 600de8 <__frame_dummy_init_array_entry>
  400758:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  40075d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400762:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400767:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  40076c:	48 83 ec 38          	sub    $0x38,%rsp
  400770:	4c 29 e5             	sub    %r12,%rbp
  400773:	41 89 fd             	mov    %edi,%r13d
  400776:	49 89 f6             	mov    %rsi,%r14
  400779:	48 c1 fd 03          	sar    $0x3,%rbp
  40077d:	49 89 d7             	mov    %rdx,%r15
  400780:	e8 03 fe ff ff       	callq  400588 <_init>
  400785:	48 85 ed             	test   %rbp,%rbp
  400788:	74 1c                	je     4007a6 <__libc_csu_init+0x66>
  40078a:	31 db                	xor    %ebx,%ebx
  40078c:	0f 1f 40 00          	nopl   0x0(%rax)
  400790:	4c 89 fa             	mov    %r15,%rdx
  400793:	4c 89 f6             	mov    %r14,%rsi
  400796:	44 89 ef             	mov    %r13d,%edi
  400799:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40079d:	48 83 c3 01          	add    $0x1,%rbx
  4007a1:	48 39 eb             	cmp    %rbp,%rbx
  4007a4:	75 ea                	jne    400790 <__libc_csu_init+0x50>
  4007a6:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  4007ab:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  4007b0:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  4007b5:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  4007ba:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  4007bf:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  4007c4:	48 83 c4 38          	add    $0x38,%rsp
  4007c8:	c3                   	retq   
  4007c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004007d0 <__libc_csu_fini>:
  4007d0:	f3 c3                	repz retq 
  4007d2:	90                   	nop
  4007d3:	90                   	nop

Disassembly of section .fini:

00000000004007d4 <_fini>:
  4007d4:	48 83 ec 08          	sub    $0x8,%rsp
  4007d8:	48 83 c4 08          	add    $0x8,%rsp
  4007dc:	c3                   	retq   
