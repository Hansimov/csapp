
cmdline:     file format elf64-x86-64


Disassembly of section .init:

0000000000400420 <_init>:
  400420:	48 83 ec 08          	sub    $0x8,%rsp
  400424:	e8 73 00 00 00       	callq  40049c <call_gmon_start>
  400429:	48 83 c4 08          	add    $0x8,%rsp
  40042d:	c3                   	retq   

Disassembly of section .plt:

0000000000400430 <puts@plt-0x10>:
  400430:	ff 35 ba 0b 20 00    	pushq  0x200bba(%rip)        # 600ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400436:	ff 25 bc 0b 20 00    	jmpq   *0x200bbc(%rip)        # 600ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40043c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400440 <puts@plt>:
  400440:	ff 25 ba 0b 20 00    	jmpq   *0x200bba(%rip)        # 601000 <_GLOBAL_OFFSET_TABLE_+0x18>
  400446:	68 00 00 00 00       	pushq  $0x0
  40044b:	e9 e0 ff ff ff       	jmpq   400430 <_init+0x10>

0000000000400450 <__libc_start_main@plt>:
  400450:	ff 25 b2 0b 20 00    	jmpq   *0x200bb2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x20>
  400456:	68 01 00 00 00       	pushq  $0x1
  40045b:	e9 d0 ff ff ff       	jmpq   400430 <_init+0x10>

0000000000400460 <__printf_chk@plt>:
  400460:	ff 25 aa 0b 20 00    	jmpq   *0x200baa(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x28>
  400466:	68 02 00 00 00       	pushq  $0x2
  40046b:	e9 c0 ff ff ff       	jmpq   400430 <_init+0x10>

Disassembly of section .text:

0000000000400470 <_start>:
  400470:	31 ed                	xor    %ebp,%ebp
  400472:	49 89 d1             	mov    %rdx,%r9
  400475:	5e                   	pop    %rsi
  400476:	48 89 e2             	mov    %rsp,%rdx
  400479:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40047d:	50                   	push   %rax
  40047e:	54                   	push   %rsp
  40047f:	49 c7 c0 50 06 40 00 	mov    $0x400650,%r8
  400486:	48 c7 c1 c0 05 40 00 	mov    $0x4005c0,%rcx
  40048d:	48 c7 c7 80 05 40 00 	mov    $0x400580,%rdi
  400494:	e8 b7 ff ff ff       	callq  400450 <__libc_start_main@plt>
  400499:	f4                   	hlt    
  40049a:	90                   	nop
  40049b:	90                   	nop

000000000040049c <call_gmon_start>:
  40049c:	48 83 ec 08          	sub    $0x8,%rsp
  4004a0:	48 8b 05 39 0b 20 00 	mov    0x200b39(%rip),%rax        # 600fe0 <_DYNAMIC+0x1d0>
  4004a7:	48 85 c0             	test   %rax,%rax
  4004aa:	74 02                	je     4004ae <call_gmon_start+0x12>
  4004ac:	ff d0                	callq  *%rax
  4004ae:	48 83 c4 08          	add    $0x8,%rsp
  4004b2:	c3                   	retq   
  4004b3:	90                   	nop
  4004b4:	90                   	nop
  4004b5:	90                   	nop
  4004b6:	90                   	nop
  4004b7:	90                   	nop
  4004b8:	90                   	nop
  4004b9:	90                   	nop
  4004ba:	90                   	nop
  4004bb:	90                   	nop
  4004bc:	90                   	nop
  4004bd:	90                   	nop
  4004be:	90                   	nop
  4004bf:	90                   	nop

00000000004004c0 <deregister_tm_clones>:
  4004c0:	b8 2f 10 60 00       	mov    $0x60102f,%eax
  4004c5:	55                   	push   %rbp
  4004c6:	48 2d 28 10 60 00    	sub    $0x601028,%rax
  4004cc:	48 83 f8 0e          	cmp    $0xe,%rax
  4004d0:	48 89 e5             	mov    %rsp,%rbp
  4004d3:	77 02                	ja     4004d7 <deregister_tm_clones+0x17>
  4004d5:	5d                   	pop    %rbp
  4004d6:	c3                   	retq   
  4004d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4004dc:	48 85 c0             	test   %rax,%rax
  4004df:	74 f4                	je     4004d5 <deregister_tm_clones+0x15>
  4004e1:	5d                   	pop    %rbp
  4004e2:	bf 28 10 60 00       	mov    $0x601028,%edi
  4004e7:	ff e0                	jmpq   *%rax
  4004e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004004f0 <register_tm_clones>:
  4004f0:	b8 28 10 60 00       	mov    $0x601028,%eax
  4004f5:	55                   	push   %rbp
  4004f6:	48 2d 28 10 60 00    	sub    $0x601028,%rax
  4004fc:	48 c1 f8 03          	sar    $0x3,%rax
  400500:	48 89 e5             	mov    %rsp,%rbp
  400503:	48 89 c2             	mov    %rax,%rdx
  400506:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40050a:	48 01 d0             	add    %rdx,%rax
  40050d:	48 d1 f8             	sar    %rax
  400510:	75 02                	jne    400514 <register_tm_clones+0x24>
  400512:	5d                   	pop    %rbp
  400513:	c3                   	retq   
  400514:	ba 00 00 00 00       	mov    $0x0,%edx
  400519:	48 85 d2             	test   %rdx,%rdx
  40051c:	74 f4                	je     400512 <register_tm_clones+0x22>
  40051e:	5d                   	pop    %rbp
  40051f:	48 89 c6             	mov    %rax,%rsi
  400522:	bf 28 10 60 00       	mov    $0x601028,%edi
  400527:	ff e2                	jmpq   *%rdx
  400529:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400530 <__do_global_dtors_aux>:
  400530:	80 3d f1 0a 20 00 00 	cmpb   $0x0,0x200af1(%rip)        # 601028 <__bss_start>
  400537:	75 11                	jne    40054a <__do_global_dtors_aux+0x1a>
  400539:	55                   	push   %rbp
  40053a:	48 89 e5             	mov    %rsp,%rbp
  40053d:	e8 7e ff ff ff       	callq  4004c0 <deregister_tm_clones>
  400542:	5d                   	pop    %rbp
  400543:	c6 05 de 0a 20 00 01 	movb   $0x1,0x200ade(%rip)        # 601028 <__bss_start>
  40054a:	f3 c3                	repz retq 
  40054c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400550 <frame_dummy>:
  400550:	48 83 3d b0 08 20 00 	cmpq   $0x0,0x2008b0(%rip)        # 600e08 <__JCR_END__>
  400557:	00 
  400558:	74 1e                	je     400578 <frame_dummy+0x28>
  40055a:	b8 00 00 00 00       	mov    $0x0,%eax
  40055f:	48 85 c0             	test   %rax,%rax
  400562:	74 14                	je     400578 <frame_dummy+0x28>
  400564:	55                   	push   %rbp
  400565:	bf 08 0e 60 00       	mov    $0x600e08,%edi
  40056a:	48 89 e5             	mov    %rsp,%rbp
  40056d:	ff d0                	callq  *%rax
  40056f:	5d                   	pop    %rbp
  400570:	e9 7b ff ff ff       	jmpq   4004f0 <register_tm_clones>
  400575:	0f 1f 00             	nopl   (%rax)
  400578:	e9 73 ff ff ff       	jmpq   4004f0 <register_tm_clones>
  40057d:	90                   	nop
  40057e:	90                   	nop
  40057f:	90                   	nop

0000000000400580 <main>:
  400580:	48 83 ec 08          	sub    $0x8,%rsp
  400584:	83 ff 01             	cmp    $0x1,%edi
  400587:	7f 1e                	jg     4005a7 <main+0x27>
  400589:	48 8b 16             	mov    (%rsi),%rdx
  40058c:	be 64 06 40 00       	mov    $0x400664,%esi
  400591:	bf 01 00 00 00       	mov    $0x1,%edi
  400596:	b8 00 00 00 00       	mov    $0x0,%eax
  40059b:	e8 c0 fe ff ff       	callq  400460 <__printf_chk@plt>
  4005a0:	b8 01 00 00 00       	mov    $0x1,%eax
  4005a5:	eb 0e                	jmp    4005b5 <main+0x35>
  4005a7:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  4005ab:	e8 90 fe ff ff       	callq  400440 <puts@plt>
  4005b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005b5:	48 83 c4 08          	add    $0x8,%rsp
  4005b9:	c3                   	retq   
  4005ba:	90                   	nop
  4005bb:	90                   	nop
  4005bc:	90                   	nop
  4005bd:	90                   	nop
  4005be:	90                   	nop
  4005bf:	90                   	nop

00000000004005c0 <__libc_csu_init>:
  4005c0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4005c5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4005ca:	48 8d 2d 2f 08 20 00 	lea    0x20082f(%rip),%rbp        # 600e00 <__init_array_end>
  4005d1:	4c 8d 25 20 08 20 00 	lea    0x200820(%rip),%r12        # 600df8 <__frame_dummy_init_array_entry>
  4005d8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4005dd:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4005e2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4005e7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4005ec:	48 83 ec 38          	sub    $0x38,%rsp
  4005f0:	4c 29 e5             	sub    %r12,%rbp
  4005f3:	41 89 fd             	mov    %edi,%r13d
  4005f6:	49 89 f6             	mov    %rsi,%r14
  4005f9:	48 c1 fd 03          	sar    $0x3,%rbp
  4005fd:	49 89 d7             	mov    %rdx,%r15
  400600:	e8 1b fe ff ff       	callq  400420 <_init>
  400605:	48 85 ed             	test   %rbp,%rbp
  400608:	74 1c                	je     400626 <__libc_csu_init+0x66>
  40060a:	31 db                	xor    %ebx,%ebx
  40060c:	0f 1f 40 00          	nopl   0x0(%rax)
  400610:	4c 89 fa             	mov    %r15,%rdx
  400613:	4c 89 f6             	mov    %r14,%rsi
  400616:	44 89 ef             	mov    %r13d,%edi
  400619:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40061d:	48 83 c3 01          	add    $0x1,%rbx
  400621:	48 39 eb             	cmp    %rbp,%rbx
  400624:	75 ea                	jne    400610 <__libc_csu_init+0x50>
  400626:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40062b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400630:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400635:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40063a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40063f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400644:	48 83 c4 38          	add    $0x38,%rsp
  400648:	c3                   	retq   
  400649:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400650 <__libc_csu_fini>:
  400650:	f3 c3                	repz retq 
  400652:	90                   	nop
  400653:	90                   	nop

Disassembly of section .fini:

0000000000400654 <_fini>:
  400654:	48 83 ec 08          	sub    $0x8,%rsp
  400658:	48 83 c4 08          	add    $0x8,%rsp
  40065c:	c3                   	retq   
