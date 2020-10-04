
libvector.so:     file format elf64-x86-64
libvector.so
architecture: i386:x86-64, flags 0x00000150:
HAS_SYMS, DYNAMIC, D_PAGED
start address 0x0000000000000600

Program Header:
    LOAD off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**21
         filesz 0x0000000000000804 memsz 0x0000000000000804 flags r-x
    LOAD off    0x0000000000000dd8 vaddr 0x0000000000200dd8 paddr 0x0000000000200dd8 align 2**21
         filesz 0x0000000000000238 memsz 0x0000000000000248 flags rw-
 DYNAMIC off    0x0000000000000df0 vaddr 0x0000000000200df0 paddr 0x0000000000200df0 align 2**3
         filesz 0x00000000000001c0 memsz 0x00000000000001c0 flags rw-
    NOTE off    0x00000000000001c8 vaddr 0x00000000000001c8 paddr 0x00000000000001c8 align 2**2
         filesz 0x0000000000000024 memsz 0x0000000000000024 flags r--
EH_FRAME off    0x000000000000076c vaddr 0x000000000000076c paddr 0x000000000000076c align 2**2
         filesz 0x0000000000000024 memsz 0x0000000000000024 flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**3
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x0000000000000dd8 vaddr 0x0000000000200dd8 paddr 0x0000000000200dd8 align 2**0
         filesz 0x0000000000000228 memsz 0x0000000000000228 flags r--

Dynamic Section:
  NEEDED               libc.so.6
  INIT                 0x00000000000005c8
  FINI                 0x0000000000000760
  INIT_ARRAY           0x0000000000200dd8
  INIT_ARRAYSZ         0x0000000000000008
  FINI_ARRAY           0x0000000000200de0
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x00000000000001f0
  STRTAB               0x00000000000003b8
  SYMTAB               0x0000000000000238
  STRSZ                0x00000000000000c1
  SYMENT               0x0000000000000018
  PLTGOT               0x0000000000200fe8
  PLTRELSZ             0x0000000000000018
  PLTREL               0x0000000000000007
  JMPREL               0x00000000000005b0
  RELA                 0x00000000000004c0
  RELASZ               0x00000000000000f0
  RELAENT              0x0000000000000018
  VERNEED              0x00000000000004a0
  VERNEEDNUM           0x0000000000000001
  VERSYM               0x000000000000047a
  RELACOUNT            0x0000000000000003

Version References:
  required from libc.so.6:
    0x09691a75 0x00 02 GLIBC_2.2.5

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .note.gnu.build-id 00000024  00000000000001c8  00000000000001c8  000001c8  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .gnu.hash     00000048  00000000000001f0  00000000000001f0  000001f0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .dynsym       00000180  0000000000000238  0000000000000238  00000238  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .dynstr       000000c1  00000000000003b8  00000000000003b8  000003b8  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .gnu.version  00000020  000000000000047a  000000000000047a  0000047a  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .gnu.version_r 00000020  00000000000004a0  00000000000004a0  000004a0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .rela.dyn     000000f0  00000000000004c0  00000000000004c0  000004c0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .rela.plt     00000018  00000000000005b0  00000000000005b0  000005b0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .init         0000000e  00000000000005c8  00000000000005c8  000005c8  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  9 .plt          00000020  00000000000005e0  00000000000005e0  000005e0  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 10 .text         00000160  0000000000000600  0000000000000600  00000600  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .fini         00000009  0000000000000760  0000000000000760  00000760  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .eh_frame_hdr 00000024  000000000000076c  000000000000076c  0000076c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 13 .eh_frame     00000074  0000000000000790  0000000000000790  00000790  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 14 .init_array   00000008  0000000000200dd8  0000000000200dd8  00000dd8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 15 .fini_array   00000008  0000000000200de0  0000000000200de0  00000de0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 16 .jcr          00000008  0000000000200de8  0000000000200de8  00000de8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 17 .dynamic      000001c0  0000000000200df0  0000000000200df0  00000df0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 18 .got          00000038  0000000000200fb0  0000000000200fb0  00000fb0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 19 .got.plt      00000020  0000000000200fe8  0000000000200fe8  00000fe8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 20 .data         00000008  0000000000201008  0000000000201008  00001008  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 21 .bss          00000010  0000000000201010  0000000000201010  00001010  2**2
                  ALLOC
 22 .comment      00000029  0000000000000000  0000000000000000  00001010  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
00000000000001c8 l    d  .note.gnu.build-id	0000000000000000              .note.gnu.build-id
00000000000001f0 l    d  .gnu.hash	0000000000000000              .gnu.hash
0000000000000238 l    d  .dynsym	0000000000000000              .dynsym
00000000000003b8 l    d  .dynstr	0000000000000000              .dynstr
000000000000047a l    d  .gnu.version	0000000000000000              .gnu.version
00000000000004a0 l    d  .gnu.version_r	0000000000000000              .gnu.version_r
00000000000004c0 l    d  .rela.dyn	0000000000000000              .rela.dyn
00000000000005b0 l    d  .rela.plt	0000000000000000              .rela.plt
00000000000005c8 l    d  .init	0000000000000000              .init
00000000000005e0 l    d  .plt	0000000000000000              .plt
0000000000000600 l    d  .text	0000000000000000              .text
0000000000000760 l    d  .fini	0000000000000000              .fini
000000000000076c l    d  .eh_frame_hdr	0000000000000000              .eh_frame_hdr
0000000000000790 l    d  .eh_frame	0000000000000000              .eh_frame
0000000000200dd8 l    d  .init_array	0000000000000000              .init_array
0000000000200de0 l    d  .fini_array	0000000000000000              .fini_array
0000000000200de8 l    d  .jcr	0000000000000000              .jcr
0000000000200df0 l    d  .dynamic	0000000000000000              .dynamic
0000000000200fb0 l    d  .got	0000000000000000              .got
0000000000200fe8 l    d  .got.plt	0000000000000000              .got.plt
0000000000201008 l    d  .data	0000000000000000              .data
0000000000201010 l    d  .bss	0000000000000000              .bss
0000000000000000 l    d  .comment	0000000000000000              .comment
0000000000000600 l     F .text	0000000000000000              call_gmon_start
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000200de8 l     O .jcr	0000000000000000              __JCR_LIST__
0000000000000620 l     F .text	0000000000000000              deregister_tm_clones
0000000000000650 l     F .text	0000000000000000              register_tm_clones
0000000000000690 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000201010 l     O .bss	0000000000000001              completed.6976
0000000000200de0 l     O .fini_array	0000000000000000              __do_global_dtors_aux_fini_array_entry
00000000000006d0 l     F .text	0000000000000000              frame_dummy
0000000000200dd8 l     O .init_array	0000000000000000              __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000              addvec.c
0000000000000000 l    df *ABS*	0000000000000000              multvec.c
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000000800 l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000200de8 l     O .jcr	0000000000000000              __JCR_END__
0000000000201008 l     O .data	0000000000000000              __dso_handle
0000000000200df0 l     O *ABS*	0000000000000000              _DYNAMIC
0000000000201010 l     O .data	0000000000000000              __TMC_END__
0000000000200fe8 l     O *ABS*	0000000000000000              _GLOBAL_OFFSET_TABLE_
0000000000000000  w      *UND*	0000000000000000              _ITM_deregisterTMCloneTable
0000000000201018 g     O .bss	0000000000000004              multcnt
0000000000201010 g       *ABS*	0000000000000000              _edata
0000000000000760 g     F .fini	0000000000000000              _fini
0000000000000734 g     F .text	000000000000002a              multvec
0000000000000708 g     F .text	0000000000000029              addvec
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000201020 g       *ABS*	0000000000000000              _end
0000000000201010 g       *ABS*	0000000000000000              __bss_start
0000000000201014 g     O .bss	0000000000000004              addcnt
0000000000000000  w      *UND*	0000000000000000              _Jv_RegisterClasses
0000000000000000  w      *UND*	0000000000000000              _ITM_registerTMCloneTable
0000000000000000  w    F *UND*	0000000000000000              __cxa_finalize@@GLIBC_2.2.5
00000000000005c8 g     F .init	0000000000000000              _init



Disassembly of section .init:

00000000000005c8 <_init>:
 5c8:	48 83 ec 08          	sub    $0x8,%rsp
 5cc:	e8 2f 00 00 00       	callq  600 <call_gmon_start>
 5d1:	48 83 c4 08          	add    $0x8,%rsp
 5d5:	c3                   	retq   

Disassembly of section .plt:

00000000000005e0 <__cxa_finalize@plt-0x10>:
 5e0:	ff 35 0a 0a 20 00    	pushq  0x200a0a(%rip)        # 200ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
 5e6:	ff 25 0c 0a 20 00    	jmpq   *0x200a0c(%rip)        # 200ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
 5ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000005f0 <__cxa_finalize@plt>:
 5f0:	ff 25 0a 0a 20 00    	jmpq   *0x200a0a(%rip)        # 201000 <_GLOBAL_OFFSET_TABLE_+0x18>
 5f6:	68 00 00 00 00       	pushq  $0x0
 5fb:	e9 e0 ff ff ff       	jmpq   5e0 <_init+0x18>

Disassembly of section .text:

0000000000000600 <call_gmon_start>:
 600:	48 83 ec 08          	sub    $0x8,%rsp
 604:	48 8b 05 b5 09 20 00 	mov    0x2009b5(%rip),%rax        # 200fc0 <_DYNAMIC+0x1d0>
 60b:	48 85 c0             	test   %rax,%rax
 60e:	74 02                	je     612 <call_gmon_start+0x12>
 610:	ff d0                	callq  *%rax
 612:	48 83 c4 08          	add    $0x8,%rsp
 616:	c3                   	retq   
 617:	90                   	nop
 618:	90                   	nop
 619:	90                   	nop
 61a:	90                   	nop
 61b:	90                   	nop
 61c:	90                   	nop
 61d:	90                   	nop
 61e:	90                   	nop
 61f:	90                   	nop

0000000000000620 <deregister_tm_clones>:
 620:	48 8d 05 f0 09 20 00 	lea    0x2009f0(%rip),%rax        # 201017 <addcnt+0x3>
 627:	48 8d 3d e2 09 20 00 	lea    0x2009e2(%rip),%rdi        # 201010 <__bss_start>
 62e:	55                   	push   %rbp
 62f:	48 29 f8             	sub    %rdi,%rax
 632:	48 89 e5             	mov    %rsp,%rbp
 635:	48 83 f8 0e          	cmp    $0xe,%rax
 639:	77 02                	ja     63d <deregister_tm_clones+0x1d>
 63b:	5d                   	pop    %rbp
 63c:	c3                   	retq   
 63d:	48 8b 05 6c 09 20 00 	mov    0x20096c(%rip),%rax        # 200fb0 <_DYNAMIC+0x1c0>
 644:	48 85 c0             	test   %rax,%rax
 647:	74 f2                	je     63b <deregister_tm_clones+0x1b>
 649:	5d                   	pop    %rbp
 64a:	ff e0                	jmpq   *%rax
 64c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000650 <register_tm_clones>:
 650:	48 8d 05 b9 09 20 00 	lea    0x2009b9(%rip),%rax        # 201010 <__bss_start>
 657:	48 8d 3d b2 09 20 00 	lea    0x2009b2(%rip),%rdi        # 201010 <__bss_start>
 65e:	55                   	push   %rbp
 65f:	48 29 f8             	sub    %rdi,%rax
 662:	48 89 e5             	mov    %rsp,%rbp
 665:	48 c1 f8 03          	sar    $0x3,%rax
 669:	48 89 c2             	mov    %rax,%rdx
 66c:	48 c1 ea 3f          	shr    $0x3f,%rdx
 670:	48 01 d0             	add    %rdx,%rax
 673:	48 d1 f8             	sar    %rax
 676:	75 02                	jne    67a <register_tm_clones+0x2a>
 678:	5d                   	pop    %rbp
 679:	c3                   	retq   
 67a:	48 8b 15 57 09 20 00 	mov    0x200957(%rip),%rdx        # 200fd8 <_DYNAMIC+0x1e8>
 681:	48 85 d2             	test   %rdx,%rdx
 684:	74 f2                	je     678 <register_tm_clones+0x28>
 686:	5d                   	pop    %rbp
 687:	48 89 c6             	mov    %rax,%rsi
 68a:	ff e2                	jmpq   *%rdx
 68c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000690 <__do_global_dtors_aux>:
 690:	80 3d 79 09 20 00 00 	cmpb   $0x0,0x200979(%rip)        # 201010 <__bss_start>
 697:	75 27                	jne    6c0 <__do_global_dtors_aux+0x30>
 699:	48 83 3d 3f 09 20 00 	cmpq   $0x0,0x20093f(%rip)        # 200fe0 <_DYNAMIC+0x1f0>
 6a0:	00 
 6a1:	55                   	push   %rbp
 6a2:	48 89 e5             	mov    %rsp,%rbp
 6a5:	74 0c                	je     6b3 <__do_global_dtors_aux+0x23>
 6a7:	48 8b 3d 5a 09 20 00 	mov    0x20095a(%rip),%rdi        # 201008 <__dso_handle>
 6ae:	e8 3d ff ff ff       	callq  5f0 <__cxa_finalize@plt>
 6b3:	e8 68 ff ff ff       	callq  620 <deregister_tm_clones>
 6b8:	5d                   	pop    %rbp
 6b9:	c6 05 50 09 20 00 01 	movb   $0x1,0x200950(%rip)        # 201010 <__bss_start>
 6c0:	f3 c3                	repz retq 
 6c2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
 6c9:	1f 84 00 00 00 00 00 

00000000000006d0 <frame_dummy>:
 6d0:	48 83 3d 10 07 20 00 	cmpq   $0x0,0x200710(%rip)        # 200de8 <__JCR_END__>
 6d7:	00 
 6d8:	74 26                	je     700 <frame_dummy+0x30>
 6da:	48 8b 05 ef 08 20 00 	mov    0x2008ef(%rip),%rax        # 200fd0 <_DYNAMIC+0x1e0>
 6e1:	48 85 c0             	test   %rax,%rax
 6e4:	74 1a                	je     700 <frame_dummy+0x30>
 6e6:	55                   	push   %rbp
 6e7:	48 8d 3d fa 06 20 00 	lea    0x2006fa(%rip),%rdi        # 200de8 <__JCR_END__>
 6ee:	48 89 e5             	mov    %rsp,%rbp
 6f1:	ff d0                	callq  *%rax
 6f3:	5d                   	pop    %rbp
 6f4:	e9 57 ff ff ff       	jmpq   650 <register_tm_clones>
 6f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 700:	e9 4b ff ff ff       	jmpq   650 <register_tm_clones>
 705:	90                   	nop
 706:	90                   	nop
 707:	90                   	nop

0000000000000708 <addvec>:
 708:	48 8b 05 b9 08 20 00 	mov    0x2008b9(%rip),%rax        # 200fc8 <_DYNAMIC+0x1d8>
 70f:	83 00 01             	addl   $0x1,(%rax)
 712:	b8 00 00 00 00       	mov    $0x0,%eax
 717:	eb 12                	jmp    72b <addvec+0x23>
 719:	4c 63 c0             	movslq %eax,%r8
 71c:	46 8b 0c 86          	mov    (%rsi,%r8,4),%r9d
 720:	46 03 0c 87          	add    (%rdi,%r8,4),%r9d
 724:	46 89 0c 82          	mov    %r9d,(%rdx,%r8,4)
 728:	83 c0 01             	add    $0x1,%eax
 72b:	39 c8                	cmp    %ecx,%eax
 72d:	7c ea                	jl     719 <addvec+0x11>
 72f:	f3 c3                	repz retq 
 731:	90                   	nop
 732:	90                   	nop
 733:	90                   	nop

0000000000000734 <multvec>:
 734:	48 8b 05 7d 08 20 00 	mov    0x20087d(%rip),%rax        # 200fb8 <_DYNAMIC+0x1c8>
 73b:	83 00 01             	addl   $0x1,(%rax)
 73e:	b8 00 00 00 00       	mov    $0x0,%eax
 743:	eb 13                	jmp    758 <multvec+0x24>
 745:	4c 63 c0             	movslq %eax,%r8
 748:	46 8b 0c 86          	mov    (%rsi,%r8,4),%r9d
 74c:	46 0f af 0c 87       	imul   (%rdi,%r8,4),%r9d
 751:	46 89 0c 82          	mov    %r9d,(%rdx,%r8,4)
 755:	83 c0 01             	add    $0x1,%eax
 758:	39 c8                	cmp    %ecx,%eax
 75a:	7c e9                	jl     745 <multvec+0x11>
 75c:	f3 c3                	repz retq 
 75e:	90                   	nop
 75f:	90                   	nop

Disassembly of section .fini:

0000000000000760 <_fini>:
 760:	48 83 ec 08          	sub    $0x8,%rsp
 764:	48 83 c4 08          	add    $0x8,%rsp
 768:	c3                   	retq   
