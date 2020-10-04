
badcnt:     file format elf64-x86-64


Disassembly of section .init:

0000000000401608 <_init>:
  401608:	48 83 ec 08          	sub    $0x8,%rsp
  40160c:	e8 2b 05 00 00       	callq  401b3c <call_gmon_start>
  401611:	48 83 c4 08          	add    $0x8,%rsp
  401615:	c3                   	retq   

Disassembly of section .plt:

0000000000401620 <inet_ntop@plt-0x10>:
  401620:	ff 35 ca 39 20 00    	pushq  0x2039ca(%rip)        # 604ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401626:	ff 25 cc 39 20 00    	jmpq   *0x2039cc(%rip)        # 604ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40162c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401630 <inet_ntop@plt>:
  401630:	ff 25 ca 39 20 00    	jmpq   *0x2039ca(%rip)        # 605000 <_GLOBAL_OFFSET_TABLE_+0x18>
  401636:	68 00 00 00 00       	pushq  $0x0
  40163b:	e9 e0 ff ff ff       	jmpq   401620 <_init+0x18>

0000000000401640 <sigprocmask@plt>:
  401640:	ff 25 c2 39 20 00    	jmpq   *0x2039c2(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x20>
  401646:	68 01 00 00 00       	pushq  $0x1
  40164b:	e9 d0 ff ff ff       	jmpq   401620 <_init+0x18>

0000000000401650 <free@plt>:
  401650:	ff 25 ba 39 20 00    	jmpq   *0x2039ba(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x28>
  401656:	68 02 00 00 00       	pushq  $0x2
  40165b:	e9 c0 ff ff ff       	jmpq   401620 <_init+0x18>

0000000000401660 <pthread_create@plt>:
  401660:	ff 25 b2 39 20 00    	jmpq   *0x2039b2(%rip)        # 605018 <_GLOBAL_OFFSET_TABLE_+0x30>
  401666:	68 03 00 00 00       	pushq  $0x3
  40166b:	e9 b0 ff ff ff       	jmpq   401620 <_init+0x18>

0000000000401670 <pthread_detach@plt>:
  401670:	ff 25 aa 39 20 00    	jmpq   *0x2039aa(%rip)        # 605020 <_GLOBAL_OFFSET_TABLE_+0x38>
  401676:	68 04 00 00 00       	pushq  $0x4
  40167b:	e9 a0 ff ff ff       	jmpq   401620 <_init+0x18>

0000000000401680 <__errno_location@plt>:
  401680:	ff 25 a2 39 20 00    	jmpq   *0x2039a2(%rip)        # 605028 <_GLOBAL_OFFSET_TABLE_+0x40>
  401686:	68 05 00 00 00       	pushq  $0x5
  40168b:	e9 90 ff ff ff       	jmpq   401620 <_init+0x18>

0000000000401690 <_exit@plt>:
  401690:	ff 25 9a 39 20 00    	jmpq   *0x20399a(%rip)        # 605030 <_GLOBAL_OFFSET_TABLE_+0x48>
  401696:	68 06 00 00 00       	pushq  $0x6
  40169b:	e9 80 ff ff ff       	jmpq   401620 <_init+0x18>

00000000004016a0 <ferror@plt>:
  4016a0:	ff 25 92 39 20 00    	jmpq   *0x203992(%rip)        # 605038 <_GLOBAL_OFFSET_TABLE_+0x50>
  4016a6:	68 07 00 00 00       	pushq  $0x7
  4016ab:	e9 70 ff ff ff       	jmpq   401620 <_init+0x18>

00000000004016b0 <pthread_cancel@plt>:
  4016b0:	ff 25 8a 39 20 00    	jmpq   *0x20398a(%rip)        # 605040 <_GLOBAL_OFFSET_TABLE_+0x58>
  4016b6:	68 08 00 00 00       	pushq  $0x8
  4016bb:	e9 60 ff ff ff       	jmpq   401620 <_init+0x18>

00000000004016c0 <sigaction@plt>:
  4016c0:	ff 25 82 39 20 00    	jmpq   *0x203982(%rip)        # 605048 <_GLOBAL_OFFSET_TABLE_+0x60>
  4016c6:	68 09 00 00 00       	pushq  $0x9
  4016cb:	e9 50 ff ff ff       	jmpq   401620 <_init+0x18>

00000000004016d0 <fread@plt>:
  4016d0:	ff 25 7a 39 20 00    	jmpq   *0x20397a(%rip)        # 605050 <_GLOBAL_OFFSET_TABLE_+0x68>
  4016d6:	68 0a 00 00 00       	pushq  $0xa
  4016db:	e9 40 ff ff ff       	jmpq   401620 <_init+0x18>

00000000004016e0 <setsockopt@plt>:
  4016e0:	ff 25 72 39 20 00    	jmpq   *0x203972(%rip)        # 605058 <_GLOBAL_OFFSET_TABLE_+0x70>
  4016e6:	68 0b 00 00 00       	pushq  $0xb
  4016eb:	e9 30 ff ff ff       	jmpq   401620 <_init+0x18>

00000000004016f0 <write@plt>:
  4016f0:	ff 25 6a 39 20 00    	jmpq   *0x20396a(%rip)        # 605060 <_GLOBAL_OFFSET_TABLE_+0x78>
  4016f6:	68 0c 00 00 00       	pushq  $0xc
  4016fb:	e9 20 ff ff ff       	jmpq   401620 <_init+0x18>

0000000000401700 <pthread_once@plt>:
  401700:	ff 25 62 39 20 00    	jmpq   *0x203962(%rip)        # 605068 <_GLOBAL_OFFSET_TABLE_+0x80>
  401706:	68 0d 00 00 00       	pushq  $0xd
  40170b:	e9 10 ff ff ff       	jmpq   401620 <_init+0x18>

0000000000401710 <fclose@plt>:
  401710:	ff 25 5a 39 20 00    	jmpq   *0x20395a(%rip)        # 605070 <_GLOBAL_OFFSET_TABLE_+0x88>
  401716:	68 0e 00 00 00       	pushq  $0xe
  40171b:	e9 00 ff ff ff       	jmpq   401620 <_init+0x18>

0000000000401720 <opendir@plt>:
  401720:	ff 25 52 39 20 00    	jmpq   *0x203952(%rip)        # 605078 <_GLOBAL_OFFSET_TABLE_+0x90>
  401726:	68 0f 00 00 00       	pushq  $0xf
  40172b:	e9 f0 fe ff ff       	jmpq   401620 <_init+0x18>

0000000000401730 <__stack_chk_fail@plt>:
  401730:	ff 25 4a 39 20 00    	jmpq   *0x20394a(%rip)        # 605080 <_GLOBAL_OFFSET_TABLE_+0x98>
  401736:	68 10 00 00 00       	pushq  $0x10
  40173b:	e9 e0 fe ff ff       	jmpq   401620 <_init+0x18>

0000000000401740 <mmap@plt>:
  401740:	ff 25 42 39 20 00    	jmpq   *0x203942(%rip)        # 605088 <_GLOBAL_OFFSET_TABLE_+0xa0>
  401746:	68 11 00 00 00       	pushq  $0x11
  40174b:	e9 d0 fe ff ff       	jmpq   401620 <_init+0x18>

0000000000401750 <dup2@plt>:
  401750:	ff 25 3a 39 20 00    	jmpq   *0x20393a(%rip)        # 605090 <_GLOBAL_OFFSET_TABLE_+0xa8>
  401756:	68 12 00 00 00       	pushq  $0x12
  40175b:	e9 c0 fe ff ff       	jmpq   401620 <_init+0x18>

0000000000401760 <gai_strerror@plt>:
  401760:	ff 25 32 39 20 00    	jmpq   *0x203932(%rip)        # 605098 <_GLOBAL_OFFSET_TABLE_+0xb0>
  401766:	68 13 00 00 00       	pushq  $0x13
  40176b:	e9 b0 fe ff ff       	jmpq   401620 <_init+0x18>

0000000000401770 <lseek@plt>:
  401770:	ff 25 2a 39 20 00    	jmpq   *0x20392a(%rip)        # 6050a0 <_GLOBAL_OFFSET_TABLE_+0xb8>
  401776:	68 14 00 00 00       	pushq  $0x14
  40177b:	e9 a0 fe ff ff       	jmpq   401620 <_init+0x18>

0000000000401780 <fputs@plt>:
  401780:	ff 25 22 39 20 00    	jmpq   *0x203922(%rip)        # 6050a8 <_GLOBAL_OFFSET_TABLE_+0xc0>
  401786:	68 15 00 00 00       	pushq  $0x15
  40178b:	e9 90 fe ff ff       	jmpq   401620 <_init+0x18>

0000000000401790 <alarm@plt>:
  401790:	ff 25 1a 39 20 00    	jmpq   *0x20391a(%rip)        # 6050b0 <_GLOBAL_OFFSET_TABLE_+0xc8>
  401796:	68 16 00 00 00       	pushq  $0x16
  40179b:	e9 80 fe ff ff       	jmpq   401620 <_init+0x18>

00000000004017a0 <close@plt>:
  4017a0:	ff 25 12 39 20 00    	jmpq   *0x203912(%rip)        # 6050b8 <_GLOBAL_OFFSET_TABLE_+0xd0>
  4017a6:	68 17 00 00 00       	pushq  $0x17
  4017ab:	e9 70 fe ff ff       	jmpq   401620 <_init+0x18>

00000000004017b0 <getnameinfo@plt>:
  4017b0:	ff 25 0a 39 20 00    	jmpq   *0x20390a(%rip)        # 6050c0 <_GLOBAL_OFFSET_TABLE_+0xd8>
  4017b6:	68 18 00 00 00       	pushq  $0x18
  4017bb:	e9 60 fe ff ff       	jmpq   401620 <_init+0x18>

00000000004017c0 <closedir@plt>:
  4017c0:	ff 25 02 39 20 00    	jmpq   *0x203902(%rip)        # 6050c8 <_GLOBAL_OFFSET_TABLE_+0xe0>
  4017c6:	68 19 00 00 00       	pushq  $0x19
  4017cb:	e9 50 fe ff ff       	jmpq   401620 <_init+0x18>

00000000004017d0 <read@plt>:
  4017d0:	ff 25 fa 38 20 00    	jmpq   *0x2038fa(%rip)        # 6050d0 <_GLOBAL_OFFSET_TABLE_+0xe8>
  4017d6:	68 1a 00 00 00       	pushq  $0x1a
  4017db:	e9 40 fe ff ff       	jmpq   401620 <_init+0x18>

00000000004017e0 <__libc_start_main@plt>:
  4017e0:	ff 25 f2 38 20 00    	jmpq   *0x2038f2(%rip)        # 6050d8 <_GLOBAL_OFFSET_TABLE_+0xf0>
  4017e6:	68 1b 00 00 00       	pushq  $0x1b
  4017eb:	e9 30 fe ff ff       	jmpq   401620 <_init+0x18>

00000000004017f0 <fgets@plt>:
  4017f0:	ff 25 ea 38 20 00    	jmpq   *0x2038ea(%rip)        # 6050e0 <_GLOBAL_OFFSET_TABLE_+0xf8>
  4017f6:	68 1c 00 00 00       	pushq  $0x1c
  4017fb:	e9 20 fe ff ff       	jmpq   401620 <_init+0x18>

0000000000401800 <execve@plt>:
  401800:	ff 25 e2 38 20 00    	jmpq   *0x2038e2(%rip)        # 6050e8 <_GLOBAL_OFFSET_TABLE_+0x100>
  401806:	68 1d 00 00 00       	pushq  $0x1d
  40180b:	e9 10 fe ff ff       	jmpq   401620 <_init+0x18>

0000000000401810 <calloc@plt>:
  401810:	ff 25 da 38 20 00    	jmpq   *0x2038da(%rip)        # 6050f0 <_GLOBAL_OFFSET_TABLE_+0x108>
  401816:	68 1e 00 00 00       	pushq  $0x1e
  40181b:	e9 00 fe ff ff       	jmpq   401620 <_init+0x18>

0000000000401820 <gethostbyname@plt>:
  401820:	ff 25 d2 38 20 00    	jmpq   *0x2038d2(%rip)        # 6050f8 <_GLOBAL_OFFSET_TABLE_+0x110>
  401826:	68 1f 00 00 00       	pushq  $0x1f
  40182b:	e9 f0 fd ff ff       	jmpq   401620 <_init+0x18>

0000000000401830 <sem_wait@plt>:
  401830:	ff 25 ca 38 20 00    	jmpq   *0x2038ca(%rip)        # 605100 <_GLOBAL_OFFSET_TABLE_+0x118>
  401836:	68 20 00 00 00       	pushq  $0x20
  40183b:	e9 e0 fd ff ff       	jmpq   401620 <_init+0x18>

0000000000401840 <sigemptyset@plt>:
  401840:	ff 25 c2 38 20 00    	jmpq   *0x2038c2(%rip)        # 605108 <_GLOBAL_OFFSET_TABLE_+0x120>
  401846:	68 21 00 00 00       	pushq  $0x21
  40184b:	e9 d0 fd ff ff       	jmpq   401620 <_init+0x18>

0000000000401850 <strtol@plt>:
  401850:	ff 25 ba 38 20 00    	jmpq   *0x2038ba(%rip)        # 605110 <_GLOBAL_OFFSET_TABLE_+0x128>
  401856:	68 22 00 00 00       	pushq  $0x22
  40185b:	e9 c0 fd ff ff       	jmpq   401620 <_init+0x18>

0000000000401860 <sigfillset@plt>:
  401860:	ff 25 b2 38 20 00    	jmpq   *0x2038b2(%rip)        # 605118 <_GLOBAL_OFFSET_TABLE_+0x130>
  401866:	68 23 00 00 00       	pushq  $0x23
  40186b:	e9 b0 fd ff ff       	jmpq   401620 <_init+0x18>

0000000000401870 <memcpy@plt>:
  401870:	ff 25 aa 38 20 00    	jmpq   *0x2038aa(%rip)        # 605120 <_GLOBAL_OFFSET_TABLE_+0x138>
  401876:	68 24 00 00 00       	pushq  $0x24
  40187b:	e9 a0 fd ff ff       	jmpq   401620 <_init+0x18>

0000000000401880 <inet_pton@plt>:
  401880:	ff 25 a2 38 20 00    	jmpq   *0x2038a2(%rip)        # 605128 <_GLOBAL_OFFSET_TABLE_+0x140>
  401886:	68 25 00 00 00       	pushq  $0x25
  40188b:	e9 90 fd ff ff       	jmpq   401620 <_init+0x18>

0000000000401890 <kill@plt>:
  401890:	ff 25 9a 38 20 00    	jmpq   *0x20389a(%rip)        # 605130 <_GLOBAL_OFFSET_TABLE_+0x148>
  401896:	68 26 00 00 00       	pushq  $0x26
  40189b:	e9 80 fd ff ff       	jmpq   401620 <_init+0x18>

00000000004018a0 <select@plt>:
  4018a0:	ff 25 92 38 20 00    	jmpq   *0x203892(%rip)        # 605138 <_GLOBAL_OFFSET_TABLE_+0x150>
  4018a6:	68 27 00 00 00       	pushq  $0x27
  4018ab:	e9 70 fd ff ff       	jmpq   401620 <_init+0x18>

00000000004018b0 <__xstat@plt>:
  4018b0:	ff 25 8a 38 20 00    	jmpq   *0x20388a(%rip)        # 605140 <_GLOBAL_OFFSET_TABLE_+0x158>
  4018b6:	68 28 00 00 00       	pushq  $0x28
  4018bb:	e9 60 fd ff ff       	jmpq   401620 <_init+0x18>

00000000004018c0 <readdir@plt>:
  4018c0:	ff 25 82 38 20 00    	jmpq   *0x203882(%rip)        # 605148 <_GLOBAL_OFFSET_TABLE_+0x160>
  4018c6:	68 29 00 00 00       	pushq  $0x29
  4018cb:	e9 50 fd ff ff       	jmpq   401620 <_init+0x18>

00000000004018d0 <pause@plt>:
  4018d0:	ff 25 7a 38 20 00    	jmpq   *0x20387a(%rip)        # 605150 <_GLOBAL_OFFSET_TABLE_+0x168>
  4018d6:	68 2a 00 00 00       	pushq  $0x2a
  4018db:	e9 40 fd ff ff       	jmpq   401620 <_init+0x18>

00000000004018e0 <pthread_exit@plt>:
  4018e0:	ff 25 72 38 20 00    	jmpq   *0x203872(%rip)        # 605158 <_GLOBAL_OFFSET_TABLE_+0x170>
  4018e6:	68 2b 00 00 00       	pushq  $0x2b
  4018eb:	e9 30 fd ff ff       	jmpq   401620 <_init+0x18>

00000000004018f0 <malloc@plt>:
  4018f0:	ff 25 6a 38 20 00    	jmpq   *0x20386a(%rip)        # 605160 <_GLOBAL_OFFSET_TABLE_+0x178>
  4018f6:	68 2c 00 00 00       	pushq  $0x2c
  4018fb:	e9 20 fd ff ff       	jmpq   401620 <_init+0x18>

0000000000401900 <__fxstat@plt>:
  401900:	ff 25 62 38 20 00    	jmpq   *0x203862(%rip)        # 605168 <_GLOBAL_OFFSET_TABLE_+0x180>
  401906:	68 2d 00 00 00       	pushq  $0x2d
  40190b:	e9 10 fd ff ff       	jmpq   401620 <_init+0x18>

0000000000401910 <listen@plt>:
  401910:	ff 25 5a 38 20 00    	jmpq   *0x20385a(%rip)        # 605170 <_GLOBAL_OFFSET_TABLE_+0x188>
  401916:	68 2e 00 00 00       	pushq  $0x2e
  40191b:	e9 00 fd ff ff       	jmpq   401620 <_init+0x18>

0000000000401920 <sigsuspend@plt>:
  401920:	ff 25 52 38 20 00    	jmpq   *0x203852(%rip)        # 605178 <_GLOBAL_OFFSET_TABLE_+0x190>
  401926:	68 2f 00 00 00       	pushq  $0x2f
  40192b:	e9 f0 fc ff ff       	jmpq   401620 <_init+0x18>

0000000000401930 <sem_post@plt>:
  401930:	ff 25 4a 38 20 00    	jmpq   *0x20384a(%rip)        # 605180 <_GLOBAL_OFFSET_TABLE_+0x198>
  401936:	68 30 00 00 00       	pushq  $0x30
  40193b:	e9 e0 fc ff ff       	jmpq   401620 <_init+0x18>

0000000000401940 <realloc@plt>:
  401940:	ff 25 42 38 20 00    	jmpq   *0x203842(%rip)        # 605188 <_GLOBAL_OFFSET_TABLE_+0x1a0>
  401946:	68 31 00 00 00       	pushq  $0x31
  40194b:	e9 d0 fc ff ff       	jmpq   401620 <_init+0x18>

0000000000401950 <fdopen@plt>:
  401950:	ff 25 3a 38 20 00    	jmpq   *0x20383a(%rip)        # 605190 <_GLOBAL_OFFSET_TABLE_+0x1a8>
  401956:	68 32 00 00 00       	pushq  $0x32
  40195b:	e9 c0 fc ff ff       	jmpq   401620 <_init+0x18>

0000000000401960 <munmap@plt>:
  401960:	ff 25 32 38 20 00    	jmpq   *0x203832(%rip)        # 605198 <_GLOBAL_OFFSET_TABLE_+0x1b0>
  401966:	68 33 00 00 00       	pushq  $0x33
  40196b:	e9 b0 fc ff ff       	jmpq   401620 <_init+0x18>

0000000000401970 <__printf_chk@plt>:
  401970:	ff 25 2a 38 20 00    	jmpq   *0x20382a(%rip)        # 6051a0 <_GLOBAL_OFFSET_TABLE_+0x1b8>
  401976:	68 34 00 00 00       	pushq  $0x34
  40197b:	e9 a0 fc ff ff       	jmpq   401620 <_init+0x18>

0000000000401980 <bind@plt>:
  401980:	ff 25 22 38 20 00    	jmpq   *0x203822(%rip)        # 6051a8 <_GLOBAL_OFFSET_TABLE_+0x1c0>
  401986:	68 35 00 00 00       	pushq  $0x35
  40198b:	e9 90 fc ff ff       	jmpq   401620 <_init+0x18>

0000000000401990 <pthread_self@plt>:
  401990:	ff 25 1a 38 20 00    	jmpq   *0x20381a(%rip)        # 6051b0 <_GLOBAL_OFFSET_TABLE_+0x1c8>
  401996:	68 36 00 00 00       	pushq  $0x36
  40199b:	e9 80 fc ff ff       	jmpq   401620 <_init+0x18>

00000000004019a0 <waitpid@plt>:
  4019a0:	ff 25 12 38 20 00    	jmpq   *0x203812(%rip)        # 6051b8 <_GLOBAL_OFFSET_TABLE_+0x1d0>
  4019a6:	68 37 00 00 00       	pushq  $0x37
  4019ab:	e9 70 fc ff ff       	jmpq   401620 <_init+0x18>

00000000004019b0 <sem_init@plt>:
  4019b0:	ff 25 0a 38 20 00    	jmpq   *0x20380a(%rip)        # 6051c0 <_GLOBAL_OFFSET_TABLE_+0x1d8>
  4019b6:	68 38 00 00 00       	pushq  $0x38
  4019bb:	e9 60 fc ff ff       	jmpq   401620 <_init+0x18>

00000000004019c0 <getpgrp@plt>:
  4019c0:	ff 25 02 38 20 00    	jmpq   *0x203802(%rip)        # 6051c8 <_GLOBAL_OFFSET_TABLE_+0x1e0>
  4019c6:	68 39 00 00 00       	pushq  $0x39
  4019cb:	e9 50 fc ff ff       	jmpq   401620 <_init+0x18>

00000000004019d0 <open@plt>:
  4019d0:	ff 25 fa 37 20 00    	jmpq   *0x2037fa(%rip)        # 6051d0 <_GLOBAL_OFFSET_TABLE_+0x1e8>
  4019d6:	68 3a 00 00 00       	pushq  $0x3a
  4019db:	e9 40 fc ff ff       	jmpq   401620 <_init+0x18>

00000000004019e0 <fopen@plt>:
  4019e0:	ff 25 f2 37 20 00    	jmpq   *0x2037f2(%rip)        # 6051d8 <_GLOBAL_OFFSET_TABLE_+0x1f0>
  4019e6:	68 3b 00 00 00       	pushq  $0x3b
  4019eb:	e9 30 fc ff ff       	jmpq   401620 <_init+0x18>

00000000004019f0 <sigdelset@plt>:
  4019f0:	ff 25 ea 37 20 00    	jmpq   *0x2037ea(%rip)        # 6051e0 <_GLOBAL_OFFSET_TABLE_+0x1f8>
  4019f6:	68 3c 00 00 00       	pushq  $0x3c
  4019fb:	e9 20 fc ff ff       	jmpq   401620 <_init+0x18>

0000000000401a00 <pthread_join@plt>:
  401a00:	ff 25 e2 37 20 00    	jmpq   *0x2037e2(%rip)        # 6051e8 <_GLOBAL_OFFSET_TABLE_+0x200>
  401a06:	68 3d 00 00 00       	pushq  $0x3d
  401a0b:	e9 10 fc ff ff       	jmpq   401620 <_init+0x18>

0000000000401a10 <accept@plt>:
  401a10:	ff 25 da 37 20 00    	jmpq   *0x2037da(%rip)        # 6051f0 <_GLOBAL_OFFSET_TABLE_+0x208>
  401a16:	68 3e 00 00 00       	pushq  $0x3e
  401a1b:	e9 00 fc ff ff       	jmpq   401620 <_init+0x18>

0000000000401a20 <setpgid@plt>:
  401a20:	ff 25 d2 37 20 00    	jmpq   *0x2037d2(%rip)        # 6051f8 <_GLOBAL_OFFSET_TABLE_+0x210>
  401a26:	68 3f 00 00 00       	pushq  $0x3f
  401a2b:	e9 f0 fb ff ff       	jmpq   401620 <_init+0x18>

0000000000401a30 <gethostbyaddr@plt>:
  401a30:	ff 25 ca 37 20 00    	jmpq   *0x2037ca(%rip)        # 605200 <_GLOBAL_OFFSET_TABLE_+0x218>
  401a36:	68 40 00 00 00       	pushq  $0x40
  401a3b:	e9 e0 fb ff ff       	jmpq   401620 <_init+0x18>

0000000000401a40 <sigismember@plt>:
  401a40:	ff 25 c2 37 20 00    	jmpq   *0x2037c2(%rip)        # 605208 <_GLOBAL_OFFSET_TABLE_+0x220>
  401a46:	68 41 00 00 00       	pushq  $0x41
  401a4b:	e9 d0 fb ff ff       	jmpq   401620 <_init+0x18>

0000000000401a50 <exit@plt>:
  401a50:	ff 25 ba 37 20 00    	jmpq   *0x2037ba(%rip)        # 605210 <_GLOBAL_OFFSET_TABLE_+0x228>
  401a56:	68 42 00 00 00       	pushq  $0x42
  401a5b:	e9 c0 fb ff ff       	jmpq   401620 <_init+0x18>

0000000000401a60 <connect@plt>:
  401a60:	ff 25 b2 37 20 00    	jmpq   *0x2037b2(%rip)        # 605218 <_GLOBAL_OFFSET_TABLE_+0x230>
  401a66:	68 43 00 00 00       	pushq  $0x43
  401a6b:	e9 b0 fb ff ff       	jmpq   401620 <_init+0x18>

0000000000401a70 <fwrite@plt>:
  401a70:	ff 25 aa 37 20 00    	jmpq   *0x2037aa(%rip)        # 605220 <_GLOBAL_OFFSET_TABLE_+0x238>
  401a76:	68 44 00 00 00       	pushq  $0x44
  401a7b:	e9 a0 fb ff ff       	jmpq   401620 <_init+0x18>

0000000000401a80 <__fprintf_chk@plt>:
  401a80:	ff 25 a2 37 20 00    	jmpq   *0x2037a2(%rip)        # 605228 <_GLOBAL_OFFSET_TABLE_+0x240>
  401a86:	68 45 00 00 00       	pushq  $0x45
  401a8b:	e9 90 fb ff ff       	jmpq   401620 <_init+0x18>

0000000000401a90 <getaddrinfo@plt>:
  401a90:	ff 25 9a 37 20 00    	jmpq   *0x20379a(%rip)        # 605230 <_GLOBAL_OFFSET_TABLE_+0x248>
  401a96:	68 46 00 00 00       	pushq  $0x46
  401a9b:	e9 80 fb ff ff       	jmpq   401620 <_init+0x18>

0000000000401aa0 <strerror@plt>:
  401aa0:	ff 25 92 37 20 00    	jmpq   *0x203792(%rip)        # 605238 <_GLOBAL_OFFSET_TABLE_+0x250>
  401aa6:	68 47 00 00 00       	pushq  $0x47
  401aab:	e9 70 fb ff ff       	jmpq   401620 <_init+0x18>

0000000000401ab0 <sleep@plt>:
  401ab0:	ff 25 8a 37 20 00    	jmpq   *0x20378a(%rip)        # 605240 <_GLOBAL_OFFSET_TABLE_+0x258>
  401ab6:	68 48 00 00 00       	pushq  $0x48
  401abb:	e9 60 fb ff ff       	jmpq   401620 <_init+0x18>

0000000000401ac0 <wait@plt>:
  401ac0:	ff 25 82 37 20 00    	jmpq   *0x203782(%rip)        # 605248 <_GLOBAL_OFFSET_TABLE_+0x260>
  401ac6:	68 49 00 00 00       	pushq  $0x49
  401acb:	e9 50 fb ff ff       	jmpq   401620 <_init+0x18>

0000000000401ad0 <sigaddset@plt>:
  401ad0:	ff 25 7a 37 20 00    	jmpq   *0x20377a(%rip)        # 605250 <_GLOBAL_OFFSET_TABLE_+0x268>
  401ad6:	68 4a 00 00 00       	pushq  $0x4a
  401adb:	e9 40 fb ff ff       	jmpq   401620 <_init+0x18>

0000000000401ae0 <fork@plt>:
  401ae0:	ff 25 72 37 20 00    	jmpq   *0x203772(%rip)        # 605258 <_GLOBAL_OFFSET_TABLE_+0x270>
  401ae6:	68 4b 00 00 00       	pushq  $0x4b
  401aeb:	e9 30 fb ff ff       	jmpq   401620 <_init+0x18>

0000000000401af0 <freeaddrinfo@plt>:
  401af0:	ff 25 6a 37 20 00    	jmpq   *0x20376a(%rip)        # 605260 <_GLOBAL_OFFSET_TABLE_+0x278>
  401af6:	68 4c 00 00 00       	pushq  $0x4c
  401afb:	e9 20 fb ff ff       	jmpq   401620 <_init+0x18>

0000000000401b00 <socket@plt>:
  401b00:	ff 25 62 37 20 00    	jmpq   *0x203762(%rip)        # 605268 <_GLOBAL_OFFSET_TABLE_+0x280>
  401b06:	68 4d 00 00 00       	pushq  $0x4d
  401b0b:	e9 10 fb ff ff       	jmpq   401620 <_init+0x18>

Disassembly of section .text:

0000000000401b10 <_start>:
  401b10:	31 ed                	xor    %ebp,%ebp
  401b12:	49 89 d1             	mov    %rdx,%r9
  401b15:	5e                   	pop    %rsi
  401b16:	48 89 e2             	mov    %rsp,%rdx
  401b19:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401b1d:	50                   	push   %rax
  401b1e:	54                   	push   %rsp
  401b1f:	49 c7 c0 40 2d 40 00 	mov    $0x402d40,%r8
  401b26:	48 c7 c1 b0 2c 40 00 	mov    $0x402cb0,%rcx
  401b2d:	48 c7 c7 4e 1c 40 00 	mov    $0x401c4e,%rdi
  401b34:	e8 a7 fc ff ff       	callq  4017e0 <__libc_start_main@plt>
  401b39:	f4                   	hlt    
  401b3a:	90                   	nop
  401b3b:	90                   	nop

0000000000401b3c <call_gmon_start>:
  401b3c:	48 83 ec 08          	sub    $0x8,%rsp
  401b40:	48 8b 05 99 34 20 00 	mov    0x203499(%rip),%rax        # 604fe0 <_DYNAMIC+0x1e0>
  401b47:	48 85 c0             	test   %rax,%rax
  401b4a:	74 02                	je     401b4e <call_gmon_start+0x12>
  401b4c:	ff d0                	callq  *%rax
  401b4e:	48 83 c4 08          	add    $0x8,%rsp
  401b52:	c3                   	retq   
  401b53:	90                   	nop
  401b54:	90                   	nop
  401b55:	90                   	nop
  401b56:	90                   	nop
  401b57:	90                   	nop
  401b58:	90                   	nop
  401b59:	90                   	nop
  401b5a:	90                   	nop
  401b5b:	90                   	nop
  401b5c:	90                   	nop
  401b5d:	90                   	nop
  401b5e:	90                   	nop
  401b5f:	90                   	nop

0000000000401b60 <deregister_tm_clones>:
  401b60:	b8 87 52 60 00       	mov    $0x605287,%eax
  401b65:	55                   	push   %rbp
  401b66:	48 2d 80 52 60 00    	sub    $0x605280,%rax
  401b6c:	48 83 f8 0e          	cmp    $0xe,%rax
  401b70:	48 89 e5             	mov    %rsp,%rbp
  401b73:	77 02                	ja     401b77 <deregister_tm_clones+0x17>
  401b75:	5d                   	pop    %rbp
  401b76:	c3                   	retq   
  401b77:	b8 00 00 00 00       	mov    $0x0,%eax
  401b7c:	48 85 c0             	test   %rax,%rax
  401b7f:	74 f4                	je     401b75 <deregister_tm_clones+0x15>
  401b81:	5d                   	pop    %rbp
  401b82:	bf 80 52 60 00       	mov    $0x605280,%edi
  401b87:	ff e0                	jmpq   *%rax
  401b89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401b90 <register_tm_clones>:
  401b90:	b8 80 52 60 00       	mov    $0x605280,%eax
  401b95:	55                   	push   %rbp
  401b96:	48 2d 80 52 60 00    	sub    $0x605280,%rax
  401b9c:	48 c1 f8 03          	sar    $0x3,%rax
  401ba0:	48 89 e5             	mov    %rsp,%rbp
  401ba3:	48 89 c2             	mov    %rax,%rdx
  401ba6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  401baa:	48 01 d0             	add    %rdx,%rax
  401bad:	48 d1 f8             	sar    %rax
  401bb0:	75 02                	jne    401bb4 <register_tm_clones+0x24>
  401bb2:	5d                   	pop    %rbp
  401bb3:	c3                   	retq   
  401bb4:	ba 00 00 00 00       	mov    $0x0,%edx
  401bb9:	48 85 d2             	test   %rdx,%rdx
  401bbc:	74 f4                	je     401bb2 <register_tm_clones+0x22>
  401bbe:	5d                   	pop    %rbp
  401bbf:	48 89 c6             	mov    %rax,%rsi
  401bc2:	bf 80 52 60 00       	mov    $0x605280,%edi
  401bc7:	ff e2                	jmpq   *%rdx
  401bc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401bd0 <__do_global_dtors_aux>:
  401bd0:	80 3d b1 36 20 00 00 	cmpb   $0x0,0x2036b1(%rip)        # 605288 <completed.6976>
  401bd7:	75 11                	jne    401bea <__do_global_dtors_aux+0x1a>
  401bd9:	55                   	push   %rbp
  401bda:	48 89 e5             	mov    %rsp,%rbp
  401bdd:	e8 7e ff ff ff       	callq  401b60 <deregister_tm_clones>
  401be2:	5d                   	pop    %rbp
  401be3:	c6 05 9e 36 20 00 01 	movb   $0x1,0x20369e(%rip)        # 605288 <completed.6976>
  401bea:	f3 c3                	repz retq 
  401bec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401bf0 <frame_dummy>:
  401bf0:	48 83 3d 00 32 20 00 	cmpq   $0x0,0x203200(%rip)        # 604df8 <__JCR_END__>
  401bf7:	00 
  401bf8:	74 1e                	je     401c18 <frame_dummy+0x28>
  401bfa:	b8 00 00 00 00       	mov    $0x0,%eax
  401bff:	48 85 c0             	test   %rax,%rax
  401c02:	74 14                	je     401c18 <frame_dummy+0x28>
  401c04:	55                   	push   %rbp
  401c05:	bf f8 4d 60 00       	mov    $0x604df8,%edi
  401c0a:	48 89 e5             	mov    %rsp,%rbp
  401c0d:	ff d0                	callq  *%rax
  401c0f:	5d                   	pop    %rbp
  401c10:	e9 7b ff ff ff       	jmpq   401b90 <register_tm_clones>
  401c15:	0f 1f 00             	nopl   (%rax)
  401c18:	e9 73 ff ff ff       	jmpq   401b90 <register_tm_clones>
  401c1d:	90                   	nop
  401c1e:	90                   	nop
  401c1f:	90                   	nop

0000000000401c20 <thread>:
  401c20:	48 8b 0f             	mov    (%rdi),%rcx
  401c23:	48 85 c9             	test   %rcx,%rcx
  401c26:	7e 20                	jle    401c48 <thread+0x28>
  401c28:	b8 00 00 00 00       	mov    $0x0,%eax
  401c2d:	48 8b 15 5c 36 20 00 	mov    0x20365c(%rip),%rdx        # 605290 <cnt>
  401c34:	48 83 c2 01          	add    $0x1,%rdx
  401c38:	48 89 15 51 36 20 00 	mov    %rdx,0x203651(%rip)        # 605290 <cnt>
  401c3f:	48 83 c0 01          	add    $0x1,%rax
  401c43:	48 39 c8             	cmp    %rcx,%rax
  401c46:	75 e5                	jne    401c2d <thread+0xd>
  401c48:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4d:	c3                   	retq   

0000000000401c4e <main>:
  401c4e:	48 83 ec 28          	sub    $0x28,%rsp
  401c52:	83 ff 02             	cmp    $0x2,%edi
  401c55:	74 21                	je     401c78 <main+0x2a>
  401c57:	48 8b 16             	mov    (%rsi),%rdx
  401c5a:	be 54 2d 40 00       	mov    $0x402d54,%esi
  401c5f:	bf 01 00 00 00       	mov    $0x1,%edi
  401c64:	b8 00 00 00 00       	mov    $0x0,%eax
  401c69:	e8 02 fd ff ff       	callq  401970 <__printf_chk@plt>
  401c6e:	bf 00 00 00 00       	mov    $0x0,%edi
  401c73:	e8 d8 fd ff ff       	callq  401a50 <exit@plt>
  401c78:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  401c7c:	ba 0a 00 00 00       	mov    $0xa,%edx
  401c81:	be 00 00 00 00       	mov    $0x0,%esi
  401c86:	e8 c5 fb ff ff       	callq  401850 <strtol@plt>
  401c8b:	48 98                	cltq   
  401c8d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401c92:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  401c97:	ba 20 1c 40 00       	mov    $0x401c20,%edx
  401c9c:	be 00 00 00 00       	mov    $0x0,%esi
  401ca1:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401ca6:	e8 48 0a 00 00       	callq  4026f3 <Pthread_create>
  401cab:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  401cb0:	ba 20 1c 40 00       	mov    $0x401c20,%edx
  401cb5:	be 00 00 00 00       	mov    $0x0,%esi
  401cba:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
  401cbf:	e8 2f 0a 00 00       	callq  4026f3 <Pthread_create>
  401cc4:	be 00 00 00 00       	mov    $0x0,%esi
  401cc9:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  401cce:	e8 5c 0a 00 00       	callq  40272f <Pthread_join>
  401cd3:	be 00 00 00 00       	mov    $0x0,%esi
  401cd8:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  401cdd:	e8 4d 0a 00 00       	callq  40272f <Pthread_join>
  401ce2:	48 8b 15 a7 35 20 00 	mov    0x2035a7(%rip),%rdx        # 605290 <cnt>
  401ce9:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  401cee:	48 01 c0             	add    %rax,%rax
  401cf1:	48 39 d0             	cmp    %rdx,%rax
  401cf4:	74 1d                	je     401d13 <main+0xc5>
  401cf6:	48 8b 15 93 35 20 00 	mov    0x203593(%rip),%rdx        # 605290 <cnt>
  401cfd:	be 68 2d 40 00       	mov    $0x402d68,%esi
  401d02:	bf 01 00 00 00       	mov    $0x1,%edi
  401d07:	b8 00 00 00 00       	mov    $0x0,%eax
  401d0c:	e8 5f fc ff ff       	callq  401970 <__printf_chk@plt>
  401d11:	eb 1b                	jmp    401d2e <main+0xe0>
  401d13:	48 8b 15 76 35 20 00 	mov    0x203576(%rip),%rdx        # 605290 <cnt>
  401d1a:	be 77 2d 40 00       	mov    $0x402d77,%esi
  401d1f:	bf 01 00 00 00       	mov    $0x1,%edi
  401d24:	b8 00 00 00 00       	mov    $0x0,%eax
  401d29:	e8 42 fc ff ff       	callq  401970 <__printf_chk@plt>
  401d2e:	bf 00 00 00 00       	mov    $0x0,%edi
  401d33:	e8 18 fd ff ff       	callq  401a50 <exit@plt>
  401d38:	90                   	nop
  401d39:	90                   	nop
  401d3a:	90                   	nop
  401d3b:	90                   	nop
  401d3c:	90                   	nop
  401d3d:	90                   	nop
  401d3e:	90                   	nop
  401d3f:	90                   	nop

0000000000401d40 <sio_strlen>:
  401d40:	ba 00 00 00 00       	mov    $0x0,%edx
  401d45:	eb 03                	jmp    401d4a <sio_strlen+0xa>
  401d47:	83 c2 01             	add    $0x1,%edx
  401d4a:	48 63 c2             	movslq %edx,%rax
  401d4d:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  401d51:	75 f4                	jne    401d47 <sio_strlen+0x7>
  401d53:	f3 c3                	repz retq 

0000000000401d55 <sio_reverse>:
  401d55:	49 89 f8             	mov    %rdi,%r8
  401d58:	b8 00 00 00 00       	mov    $0x0,%eax
  401d5d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401d64:	f2 ae                	repnz scas %es:(%rdi),%al
  401d66:	48 f7 d1             	not    %rcx
  401d69:	83 e9 02             	sub    $0x2,%ecx
  401d6c:	b8 00 00 00 00       	mov    $0x0,%eax
  401d71:	eb 1f                	jmp    401d92 <sio_reverse+0x3d>
  401d73:	48 63 f0             	movslq %eax,%rsi
  401d76:	4c 01 c6             	add    %r8,%rsi
  401d79:	0f b6 3e             	movzbl (%rsi),%edi
  401d7c:	48 63 d1             	movslq %ecx,%rdx
  401d7f:	4c 01 c2             	add    %r8,%rdx
  401d82:	44 0f b6 0a          	movzbl (%rdx),%r9d
  401d86:	44 88 0e             	mov    %r9b,(%rsi)
  401d89:	40 88 3a             	mov    %dil,(%rdx)
  401d8c:	83 c0 01             	add    $0x1,%eax
  401d8f:	83 e9 01             	sub    $0x1,%ecx
  401d92:	39 c8                	cmp    %ecx,%eax
  401d94:	7c dd                	jl     401d73 <sio_reverse+0x1e>
  401d96:	f3 c3                	repz retq 

0000000000401d98 <sio_ltoa>:
  401d98:	48 89 f8             	mov    %rdi,%rax
  401d9b:	48 c1 e8 3f          	shr    $0x3f,%rax
  401d9f:	49 89 c3             	mov    %rax,%r11
  401da2:	48 89 f8             	mov    %rdi,%rax
  401da5:	48 f7 d8             	neg    %rax
  401da8:	45 85 db             	test   %r11d,%r11d
  401dab:	48 0f 45 f8          	cmovne %rax,%rdi
  401daf:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401db5:	48 63 ca             	movslq %edx,%rcx
  401db8:	45 8d 48 01          	lea    0x1(%r8),%r9d
  401dbc:	4d 63 c0             	movslq %r8d,%r8
  401dbf:	48 89 f8             	mov    %rdi,%rax
  401dc2:	48 99                	cqto   
  401dc4:	48 f7 f9             	idiv   %rcx
  401dc7:	8d 42 30             	lea    0x30(%rdx),%eax
  401dca:	44 8d 52 57          	lea    0x57(%rdx),%r10d
  401dce:	83 fa 09             	cmp    $0x9,%edx
  401dd1:	41 0f 4f c2          	cmovg  %r10d,%eax
  401dd5:	42 88 04 06          	mov    %al,(%rsi,%r8,1)
  401dd9:	48 89 f8             	mov    %rdi,%rax
  401ddc:	48 99                	cqto   
  401dde:	48 f7 f9             	idiv   %rcx
  401de1:	48 89 c7             	mov    %rax,%rdi
  401de4:	45 89 c8             	mov    %r9d,%r8d
  401de7:	48 85 c0             	test   %rax,%rax
  401dea:	7f cc                	jg     401db8 <sio_ltoa+0x20>
  401dec:	45 85 db             	test   %r11d,%r11d
  401def:	74 0b                	je     401dfc <sio_ltoa+0x64>
  401df1:	49 63 c1             	movslq %r9d,%rax
  401df4:	c6 04 06 2d          	movb   $0x2d,(%rsi,%rax,1)
  401df8:	45 8d 49 01          	lea    0x1(%r9),%r9d
  401dfc:	4d 63 c9             	movslq %r9d,%r9
  401dff:	42 c6 04 0e 00       	movb   $0x0,(%rsi,%r9,1)
  401e04:	48 89 f7             	mov    %rsi,%rdi
  401e07:	e8 49 ff ff ff       	callq  401d55 <sio_reverse>
  401e0c:	f3 c3                	repz retq 

0000000000401e0e <rio_read>:
  401e0e:	41 55                	push   %r13
  401e10:	41 54                	push   %r12
  401e12:	55                   	push   %rbp
  401e13:	53                   	push   %rbx
  401e14:	48 83 ec 08          	sub    $0x8,%rsp
  401e18:	48 89 fb             	mov    %rdi,%rbx
  401e1b:	49 89 f5             	mov    %rsi,%r13
  401e1e:	49 89 d4             	mov    %rdx,%r12
  401e21:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
  401e25:	eb 2f                	jmp    401e56 <rio_read+0x48>
  401e27:	8b 3b                	mov    (%rbx),%edi
  401e29:	ba 00 20 00 00       	mov    $0x2000,%edx
  401e2e:	48 89 ee             	mov    %rbp,%rsi
  401e31:	e8 9a f9 ff ff       	callq  4017d0 <read@plt>
  401e36:	89 43 04             	mov    %eax,0x4(%rbx)
  401e39:	85 c0                	test   %eax,%eax
  401e3b:	79 0c                	jns    401e49 <rio_read+0x3b>
  401e3d:	e8 3e f8 ff ff       	callq  401680 <__errno_location@plt>
  401e42:	83 38 04             	cmpl   $0x4,(%rax)
  401e45:	74 0f                	je     401e56 <rio_read+0x48>
  401e47:	eb 3d                	jmp    401e86 <rio_read+0x78>
  401e49:	85 c0                	test   %eax,%eax
  401e4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401e50:	74 3d                	je     401e8f <rio_read+0x81>
  401e52:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  401e56:	8b 43 04             	mov    0x4(%rbx),%eax
  401e59:	85 c0                	test   %eax,%eax
  401e5b:	7e ca                	jle    401e27 <rio_read+0x19>
  401e5d:	48 63 d0             	movslq %eax,%rdx
  401e60:	4c 39 e2             	cmp    %r12,%rdx
  401e63:	44 0f 42 e0          	cmovb  %eax,%r12d
  401e67:	49 63 ec             	movslq %r12d,%rbp
  401e6a:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  401e6e:	48 89 ea             	mov    %rbp,%rdx
  401e71:	4c 89 ef             	mov    %r13,%rdi
  401e74:	e8 f7 f9 ff ff       	callq  401870 <memcpy@plt>
  401e79:	48 01 6b 08          	add    %rbp,0x8(%rbx)
  401e7d:	44 29 63 04          	sub    %r12d,0x4(%rbx)
  401e81:	48 89 e8             	mov    %rbp,%rax
  401e84:	eb 0e                	jmp    401e94 <rio_read+0x86>
  401e86:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401e8d:	eb 05                	jmp    401e94 <rio_read+0x86>
  401e8f:	b8 00 00 00 00       	mov    $0x0,%eax
  401e94:	48 83 c4 08          	add    $0x8,%rsp
  401e98:	5b                   	pop    %rbx
  401e99:	5d                   	pop    %rbp
  401e9a:	41 5c                	pop    %r12
  401e9c:	41 5d                	pop    %r13
  401e9e:	c3                   	retq   

0000000000401e9f <unix_error>:
  401e9f:	53                   	push   %rbx
  401ea0:	48 89 fb             	mov    %rdi,%rbx
  401ea3:	e8 d8 f7 ff ff       	callq  401680 <__errno_location@plt>
  401ea8:	8b 38                	mov    (%rax),%edi
  401eaa:	e8 f1 fb ff ff       	callq  401aa0 <strerror@plt>
  401eaf:	49 89 c0             	mov    %rax,%r8
  401eb2:	48 89 d9             	mov    %rbx,%rcx
  401eb5:	ba 83 2d 40 00       	mov    $0x402d83,%edx
  401eba:	be 01 00 00 00       	mov    $0x1,%esi
  401ebf:	48 8b 3d ba 33 20 00 	mov    0x2033ba(%rip),%rdi        # 605280 <__bss_start>
  401ec6:	b8 00 00 00 00       	mov    $0x0,%eax
  401ecb:	e8 b0 fb ff ff       	callq  401a80 <__fprintf_chk@plt>
  401ed0:	bf 00 00 00 00       	mov    $0x0,%edi
  401ed5:	e8 76 fb ff ff       	callq  401a50 <exit@plt>

0000000000401eda <posix_error>:
  401eda:	53                   	push   %rbx
  401edb:	48 89 f3             	mov    %rsi,%rbx
  401ede:	e8 bd fb ff ff       	callq  401aa0 <strerror@plt>
  401ee3:	49 89 c0             	mov    %rax,%r8
  401ee6:	48 89 d9             	mov    %rbx,%rcx
  401ee9:	ba 83 2d 40 00       	mov    $0x402d83,%edx
  401eee:	be 01 00 00 00       	mov    $0x1,%esi
  401ef3:	48 8b 3d 86 33 20 00 	mov    0x203386(%rip),%rdi        # 605280 <__bss_start>
  401efa:	b8 00 00 00 00       	mov    $0x0,%eax
  401eff:	e8 7c fb ff ff       	callq  401a80 <__fprintf_chk@plt>
  401f04:	bf 00 00 00 00       	mov    $0x0,%edi
  401f09:	e8 42 fb ff ff       	callq  401a50 <exit@plt>

0000000000401f0e <gai_error>:
  401f0e:	53                   	push   %rbx
  401f0f:	48 89 f3             	mov    %rsi,%rbx
  401f12:	e8 49 f8 ff ff       	callq  401760 <gai_strerror@plt>
  401f17:	49 89 c0             	mov    %rax,%r8
  401f1a:	48 89 d9             	mov    %rbx,%rcx
  401f1d:	ba 83 2d 40 00       	mov    $0x402d83,%edx
  401f22:	be 01 00 00 00       	mov    $0x1,%esi
  401f27:	48 8b 3d 52 33 20 00 	mov    0x203352(%rip),%rdi        # 605280 <__bss_start>
  401f2e:	b8 00 00 00 00       	mov    $0x0,%eax
  401f33:	e8 48 fb ff ff       	callq  401a80 <__fprintf_chk@plt>
  401f38:	bf 00 00 00 00       	mov    $0x0,%edi
  401f3d:	e8 0e fb ff ff       	callq  401a50 <exit@plt>

0000000000401f42 <app_error>:
  401f42:	48 83 ec 08          	sub    $0x8,%rsp
  401f46:	48 89 f9             	mov    %rdi,%rcx
  401f49:	ba 87 2d 40 00       	mov    $0x402d87,%edx
  401f4e:	be 01 00 00 00       	mov    $0x1,%esi
  401f53:	48 8b 3d 26 33 20 00 	mov    0x203326(%rip),%rdi        # 605280 <__bss_start>
  401f5a:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5f:	e8 1c fb ff ff       	callq  401a80 <__fprintf_chk@plt>
  401f64:	bf 00 00 00 00       	mov    $0x0,%edi
  401f69:	e8 e2 fa ff ff       	callq  401a50 <exit@plt>

0000000000401f6e <dns_error>:
  401f6e:	48 83 ec 08          	sub    $0x8,%rsp
  401f72:	48 89 f9             	mov    %rdi,%rcx
  401f75:	ba 87 2d 40 00       	mov    $0x402d87,%edx
  401f7a:	be 01 00 00 00       	mov    $0x1,%esi
  401f7f:	48 8b 3d fa 32 20 00 	mov    0x2032fa(%rip),%rdi        # 605280 <__bss_start>
  401f86:	b8 00 00 00 00       	mov    $0x0,%eax
  401f8b:	e8 f0 fa ff ff       	callq  401a80 <__fprintf_chk@plt>
  401f90:	bf 00 00 00 00       	mov    $0x0,%edi
  401f95:	e8 b6 fa ff ff       	callq  401a50 <exit@plt>

0000000000401f9a <Fork>:
  401f9a:	48 83 ec 08          	sub    $0x8,%rsp
  401f9e:	e8 3d fb ff ff       	callq  401ae0 <fork@plt>
  401fa3:	85 c0                	test   %eax,%eax
  401fa5:	79 0a                	jns    401fb1 <Fork+0x17>
  401fa7:	bf 8b 2d 40 00       	mov    $0x402d8b,%edi
  401fac:	e8 ee fe ff ff       	callq  401e9f <unix_error>
  401fb1:	48 83 c4 08          	add    $0x8,%rsp
  401fb5:	c3                   	retq   

0000000000401fb6 <Execve>:
  401fb6:	48 83 ec 08          	sub    $0x8,%rsp
  401fba:	e8 41 f8 ff ff       	callq  401800 <execve@plt>
  401fbf:	85 c0                	test   %eax,%eax
  401fc1:	79 0a                	jns    401fcd <Execve+0x17>
  401fc3:	bf 96 2d 40 00       	mov    $0x402d96,%edi
  401fc8:	e8 d2 fe ff ff       	callq  401e9f <unix_error>
  401fcd:	48 83 c4 08          	add    $0x8,%rsp
  401fd1:	c3                   	retq   

0000000000401fd2 <Wait>:
  401fd2:	48 83 ec 08          	sub    $0x8,%rsp
  401fd6:	e8 e5 fa ff ff       	callq  401ac0 <wait@plt>
  401fdb:	85 c0                	test   %eax,%eax
  401fdd:	79 0a                	jns    401fe9 <Wait+0x17>
  401fdf:	bf a3 2d 40 00       	mov    $0x402da3,%edi
  401fe4:	e8 b6 fe ff ff       	callq  401e9f <unix_error>
  401fe9:	48 83 c4 08          	add    $0x8,%rsp
  401fed:	c3                   	retq   

0000000000401fee <Waitpid>:
  401fee:	48 83 ec 08          	sub    $0x8,%rsp
  401ff2:	e8 a9 f9 ff ff       	callq  4019a0 <waitpid@plt>
  401ff7:	85 c0                	test   %eax,%eax
  401ff9:	79 0a                	jns    402005 <Waitpid+0x17>
  401ffb:	bf ae 2d 40 00       	mov    $0x402dae,%edi
  402000:	e8 9a fe ff ff       	callq  401e9f <unix_error>
  402005:	48 83 c4 08          	add    $0x8,%rsp
  402009:	c3                   	retq   

000000000040200a <Kill>:
  40200a:	48 83 ec 08          	sub    $0x8,%rsp
  40200e:	e8 7d f8 ff ff       	callq  401890 <kill@plt>
  402013:	85 c0                	test   %eax,%eax
  402015:	79 0a                	jns    402021 <Kill+0x17>
  402017:	bf bc 2d 40 00       	mov    $0x402dbc,%edi
  40201c:	e8 7e fe ff ff       	callq  401e9f <unix_error>
  402021:	48 83 c4 08          	add    $0x8,%rsp
  402025:	c3                   	retq   

0000000000402026 <Pause>:
  402026:	48 83 ec 08          	sub    $0x8,%rsp
  40202a:	e8 a1 f8 ff ff       	callq  4018d0 <pause@plt>
  40202f:	48 83 c4 08          	add    $0x8,%rsp
  402033:	c3                   	retq   

0000000000402034 <Sleep>:
  402034:	48 83 ec 08          	sub    $0x8,%rsp
  402038:	e8 73 fa ff ff       	callq  401ab0 <sleep@plt>
  40203d:	48 83 c4 08          	add    $0x8,%rsp
  402041:	c3                   	retq   

0000000000402042 <Alarm>:
  402042:	48 83 ec 08          	sub    $0x8,%rsp
  402046:	e8 45 f7 ff ff       	callq  401790 <alarm@plt>
  40204b:	48 83 c4 08          	add    $0x8,%rsp
  40204f:	c3                   	retq   

0000000000402050 <Setpgid>:
  402050:	48 83 ec 08          	sub    $0x8,%rsp
  402054:	e8 c7 f9 ff ff       	callq  401a20 <setpgid@plt>
  402059:	85 c0                	test   %eax,%eax
  40205b:	79 0a                	jns    402067 <Setpgid+0x17>
  40205d:	bf c7 2d 40 00       	mov    $0x402dc7,%edi
  402062:	e8 38 fe ff ff       	callq  401e9f <unix_error>
  402067:	48 83 c4 08          	add    $0x8,%rsp
  40206b:	c3                   	retq   

000000000040206c <Getpgrp>:
  40206c:	48 83 ec 08          	sub    $0x8,%rsp
  402070:	e8 4b f9 ff ff       	callq  4019c0 <getpgrp@plt>
  402075:	48 83 c4 08          	add    $0x8,%rsp
  402079:	c3                   	retq   

000000000040207a <Signal>:
  40207a:	53                   	push   %rbx
  40207b:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
  402082:	89 fb                	mov    %edi,%ebx
  402084:	48 89 34 24          	mov    %rsi,(%rsp)
  402088:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  40208d:	e8 ae f7 ff ff       	callq  401840 <sigemptyset@plt>
  402092:	c7 84 24 88 00 00 00 	movl   $0x10000000,0x88(%rsp)
  402099:	00 00 00 10 
  40209d:	48 8d 94 24 a0 00 00 	lea    0xa0(%rsp),%rdx
  4020a4:	00 
  4020a5:	48 89 e6             	mov    %rsp,%rsi
  4020a8:	89 df                	mov    %ebx,%edi
  4020aa:	e8 11 f6 ff ff       	callq  4016c0 <sigaction@plt>
  4020af:	85 c0                	test   %eax,%eax
  4020b1:	79 0a                	jns    4020bd <Signal+0x43>
  4020b3:	bf d5 2d 40 00       	mov    $0x402dd5,%edi
  4020b8:	e8 e2 fd ff ff       	callq  401e9f <unix_error>
  4020bd:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  4020c4:	00 
  4020c5:	48 81 c4 40 01 00 00 	add    $0x140,%rsp
  4020cc:	5b                   	pop    %rbx
  4020cd:	c3                   	retq   

00000000004020ce <Sigprocmask>:
  4020ce:	48 83 ec 08          	sub    $0x8,%rsp
  4020d2:	e8 69 f5 ff ff       	callq  401640 <sigprocmask@plt>
  4020d7:	85 c0                	test   %eax,%eax
  4020d9:	79 0a                	jns    4020e5 <Sigprocmask+0x17>
  4020db:	bf e2 2d 40 00       	mov    $0x402de2,%edi
  4020e0:	e8 ba fd ff ff       	callq  401e9f <unix_error>
  4020e5:	48 83 c4 08          	add    $0x8,%rsp
  4020e9:	c3                   	retq   

00000000004020ea <Sigemptyset>:
  4020ea:	48 83 ec 08          	sub    $0x8,%rsp
  4020ee:	e8 4d f7 ff ff       	callq  401840 <sigemptyset@plt>
  4020f3:	85 c0                	test   %eax,%eax
  4020f5:	79 0a                	jns    402101 <Sigemptyset+0x17>
  4020f7:	bf f4 2d 40 00       	mov    $0x402df4,%edi
  4020fc:	e8 9e fd ff ff       	callq  401e9f <unix_error>
  402101:	48 83 c4 08          	add    $0x8,%rsp
  402105:	c3                   	retq   

0000000000402106 <Sigfillset>:
  402106:	48 83 ec 08          	sub    $0x8,%rsp
  40210a:	e8 51 f7 ff ff       	callq  401860 <sigfillset@plt>
  40210f:	85 c0                	test   %eax,%eax
  402111:	79 0a                	jns    40211d <Sigfillset+0x17>
  402113:	bf 06 2e 40 00       	mov    $0x402e06,%edi
  402118:	e8 82 fd ff ff       	callq  401e9f <unix_error>
  40211d:	48 83 c4 08          	add    $0x8,%rsp
  402121:	c3                   	retq   

0000000000402122 <Sigaddset>:
  402122:	48 83 ec 08          	sub    $0x8,%rsp
  402126:	e8 a5 f9 ff ff       	callq  401ad0 <sigaddset@plt>
  40212b:	85 c0                	test   %eax,%eax
  40212d:	79 0a                	jns    402139 <Sigaddset+0x17>
  40212f:	bf 17 2e 40 00       	mov    $0x402e17,%edi
  402134:	e8 66 fd ff ff       	callq  401e9f <unix_error>
  402139:	48 83 c4 08          	add    $0x8,%rsp
  40213d:	c3                   	retq   

000000000040213e <Sigdelset>:
  40213e:	48 83 ec 08          	sub    $0x8,%rsp
  402142:	e8 a9 f8 ff ff       	callq  4019f0 <sigdelset@plt>
  402147:	85 c0                	test   %eax,%eax
  402149:	79 0a                	jns    402155 <Sigdelset+0x17>
  40214b:	bf 27 2e 40 00       	mov    $0x402e27,%edi
  402150:	e8 4a fd ff ff       	callq  401e9f <unix_error>
  402155:	48 83 c4 08          	add    $0x8,%rsp
  402159:	c3                   	retq   

000000000040215a <Sigismember>:
  40215a:	48 83 ec 08          	sub    $0x8,%rsp
  40215e:	e8 dd f8 ff ff       	callq  401a40 <sigismember@plt>
  402163:	85 c0                	test   %eax,%eax
  402165:	79 0a                	jns    402171 <Sigismember+0x17>
  402167:	bf 37 2e 40 00       	mov    $0x402e37,%edi
  40216c:	e8 2e fd ff ff       	callq  401e9f <unix_error>
  402171:	48 83 c4 08          	add    $0x8,%rsp
  402175:	c3                   	retq   

0000000000402176 <Sigsuspend>:
  402176:	53                   	push   %rbx
  402177:	e8 a4 f7 ff ff       	callq  401920 <sigsuspend@plt>
  40217c:	89 c3                	mov    %eax,%ebx
  40217e:	e8 fd f4 ff ff       	callq  401680 <__errno_location@plt>
  402183:	83 38 04             	cmpl   $0x4,(%rax)
  402186:	74 0a                	je     402192 <Sigsuspend+0x1c>
  402188:	bf 49 2e 40 00       	mov    $0x402e49,%edi
  40218d:	e8 0d fd ff ff       	callq  401e9f <unix_error>
  402192:	89 d8                	mov    %ebx,%eax
  402194:	5b                   	pop    %rbx
  402195:	c3                   	retq   

0000000000402196 <sio_puts>:
  402196:	53                   	push   %rbx
  402197:	48 89 fb             	mov    %rdi,%rbx
  40219a:	e8 a1 fb ff ff       	callq  401d40 <sio_strlen>
  40219f:	48 89 c2             	mov    %rax,%rdx
  4021a2:	48 89 de             	mov    %rbx,%rsi
  4021a5:	bf 01 00 00 00       	mov    $0x1,%edi
  4021aa:	e8 41 f5 ff ff       	callq  4016f0 <write@plt>
  4021af:	5b                   	pop    %rbx
  4021b0:	c3                   	retq   

00000000004021b1 <sio_putl>:
  4021b1:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  4021b8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4021bf:	00 00 
  4021c1:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  4021c8:	00 
  4021c9:	31 c0                	xor    %eax,%eax
  4021cb:	ba 0a 00 00 00       	mov    $0xa,%edx
  4021d0:	48 89 e6             	mov    %rsp,%rsi
  4021d3:	e8 c0 fb ff ff       	callq  401d98 <sio_ltoa>
  4021d8:	48 89 e7             	mov    %rsp,%rdi
  4021db:	e8 b6 ff ff ff       	callq  402196 <sio_puts>
  4021e0:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
  4021e7:	00 
  4021e8:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4021ef:	00 00 
  4021f1:	74 05                	je     4021f8 <sio_putl+0x47>
  4021f3:	e8 38 f5 ff ff       	callq  401730 <__stack_chk_fail@plt>
  4021f8:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4021ff:	c3                   	retq   

0000000000402200 <sio_error>:
  402200:	48 83 ec 08          	sub    $0x8,%rsp
  402204:	e8 8d ff ff ff       	callq  402196 <sio_puts>
  402209:	bf 01 00 00 00       	mov    $0x1,%edi
  40220e:	e8 7d f4 ff ff       	callq  401690 <_exit@plt>

0000000000402213 <Sio_putl>:
  402213:	48 83 ec 08          	sub    $0x8,%rsp
  402217:	e8 95 ff ff ff       	callq  4021b1 <sio_putl>
  40221c:	48 85 c0             	test   %rax,%rax
  40221f:	79 0a                	jns    40222b <Sio_putl+0x18>
  402221:	bf 5a 2e 40 00       	mov    $0x402e5a,%edi
  402226:	e8 d5 ff ff ff       	callq  402200 <sio_error>
  40222b:	48 83 c4 08          	add    $0x8,%rsp
  40222f:	c3                   	retq   

0000000000402230 <Sio_puts>:
  402230:	48 83 ec 08          	sub    $0x8,%rsp
  402234:	e8 5d ff ff ff       	callq  402196 <sio_puts>
  402239:	48 85 c0             	test   %rax,%rax
  40223c:	79 0a                	jns    402248 <Sio_puts+0x18>
  40223e:	bf 69 2e 40 00       	mov    $0x402e69,%edi
  402243:	e8 b8 ff ff ff       	callq  402200 <sio_error>
  402248:	48 83 c4 08          	add    $0x8,%rsp
  40224c:	c3                   	retq   

000000000040224d <Sio_error>:
  40224d:	48 83 ec 08          	sub    $0x8,%rsp
  402251:	e8 aa ff ff ff       	callq  402200 <sio_error>

0000000000402256 <Open>:
  402256:	48 83 ec 08          	sub    $0x8,%rsp
  40225a:	b8 00 00 00 00       	mov    $0x0,%eax
  40225f:	e8 6c f7 ff ff       	callq  4019d0 <open@plt>
  402264:	85 c0                	test   %eax,%eax
  402266:	79 0a                	jns    402272 <Open+0x1c>
  402268:	bf 78 2e 40 00       	mov    $0x402e78,%edi
  40226d:	e8 2d fc ff ff       	callq  401e9f <unix_error>
  402272:	48 83 c4 08          	add    $0x8,%rsp
  402276:	c3                   	retq   

0000000000402277 <Read>:
  402277:	48 83 ec 08          	sub    $0x8,%rsp
  40227b:	e8 50 f5 ff ff       	callq  4017d0 <read@plt>
  402280:	48 85 c0             	test   %rax,%rax
  402283:	79 0a                	jns    40228f <Read+0x18>
  402285:	bf 83 2e 40 00       	mov    $0x402e83,%edi
  40228a:	e8 10 fc ff ff       	callq  401e9f <unix_error>
  40228f:	48 83 c4 08          	add    $0x8,%rsp
  402293:	c3                   	retq   

0000000000402294 <Write>:
  402294:	48 83 ec 08          	sub    $0x8,%rsp
  402298:	e8 53 f4 ff ff       	callq  4016f0 <write@plt>
  40229d:	48 85 c0             	test   %rax,%rax
  4022a0:	79 0a                	jns    4022ac <Write+0x18>
  4022a2:	bf 8e 2e 40 00       	mov    $0x402e8e,%edi
  4022a7:	e8 f3 fb ff ff       	callq  401e9f <unix_error>
  4022ac:	48 83 c4 08          	add    $0x8,%rsp
  4022b0:	c3                   	retq   

00000000004022b1 <Lseek>:
  4022b1:	48 83 ec 08          	sub    $0x8,%rsp
  4022b5:	e8 b6 f4 ff ff       	callq  401770 <lseek@plt>
  4022ba:	48 85 c0             	test   %rax,%rax
  4022bd:	79 0a                	jns    4022c9 <Lseek+0x18>
  4022bf:	bf 9a 2e 40 00       	mov    $0x402e9a,%edi
  4022c4:	e8 d6 fb ff ff       	callq  401e9f <unix_error>
  4022c9:	48 83 c4 08          	add    $0x8,%rsp
  4022cd:	c3                   	retq   

00000000004022ce <Close>:
  4022ce:	48 83 ec 08          	sub    $0x8,%rsp
  4022d2:	e8 c9 f4 ff ff       	callq  4017a0 <close@plt>
  4022d7:	85 c0                	test   %eax,%eax
  4022d9:	79 0a                	jns    4022e5 <Close+0x17>
  4022db:	bf a6 2e 40 00       	mov    $0x402ea6,%edi
  4022e0:	e8 ba fb ff ff       	callq  401e9f <unix_error>
  4022e5:	48 83 c4 08          	add    $0x8,%rsp
  4022e9:	c3                   	retq   

00000000004022ea <Select>:
  4022ea:	48 83 ec 08          	sub    $0x8,%rsp
  4022ee:	e8 ad f5 ff ff       	callq  4018a0 <select@plt>
  4022f3:	85 c0                	test   %eax,%eax
  4022f5:	79 0a                	jns    402301 <Select+0x17>
  4022f7:	bf b2 2e 40 00       	mov    $0x402eb2,%edi
  4022fc:	e8 9e fb ff ff       	callq  401e9f <unix_error>
  402301:	48 83 c4 08          	add    $0x8,%rsp
  402305:	c3                   	retq   

0000000000402306 <Dup2>:
  402306:	48 83 ec 08          	sub    $0x8,%rsp
  40230a:	e8 41 f4 ff ff       	callq  401750 <dup2@plt>
  40230f:	85 c0                	test   %eax,%eax
  402311:	79 0a                	jns    40231d <Dup2+0x17>
  402313:	bf bf 2e 40 00       	mov    $0x402ebf,%edi
  402318:	e8 82 fb ff ff       	callq  401e9f <unix_error>
  40231d:	48 83 c4 08          	add    $0x8,%rsp
  402321:	c3                   	retq   

0000000000402322 <Stat>:
  402322:	48 83 ec 08          	sub    $0x8,%rsp
  402326:	48 89 f2             	mov    %rsi,%rdx
  402329:	48 89 fe             	mov    %rdi,%rsi
  40232c:	bf 01 00 00 00       	mov    $0x1,%edi
  402331:	e8 7a f5 ff ff       	callq  4018b0 <__xstat@plt>
  402336:	85 c0                	test   %eax,%eax
  402338:	79 0a                	jns    402344 <Stat+0x22>
  40233a:	bf ca 2e 40 00       	mov    $0x402eca,%edi
  40233f:	e8 5b fb ff ff       	callq  401e9f <unix_error>
  402344:	48 83 c4 08          	add    $0x8,%rsp
  402348:	c3                   	retq   

0000000000402349 <Fstat>:
  402349:	48 83 ec 08          	sub    $0x8,%rsp
  40234d:	48 89 f2             	mov    %rsi,%rdx
  402350:	89 fe                	mov    %edi,%esi
  402352:	bf 01 00 00 00       	mov    $0x1,%edi
  402357:	e8 a4 f5 ff ff       	callq  401900 <__fxstat@plt>
  40235c:	85 c0                	test   %eax,%eax
  40235e:	79 0a                	jns    40236a <Fstat+0x21>
  402360:	bf d5 2e 40 00       	mov    $0x402ed5,%edi
  402365:	e8 35 fb ff ff       	callq  401e9f <unix_error>
  40236a:	48 83 c4 08          	add    $0x8,%rsp
  40236e:	c3                   	retq   

000000000040236f <Opendir>:
  40236f:	48 83 ec 08          	sub    $0x8,%rsp
  402373:	e8 a8 f3 ff ff       	callq  401720 <opendir@plt>
  402378:	48 85 c0             	test   %rax,%rax
  40237b:	75 0a                	jne    402387 <Opendir+0x18>
  40237d:	bf e1 2e 40 00       	mov    $0x402ee1,%edi
  402382:	e8 18 fb ff ff       	callq  401e9f <unix_error>
  402387:	48 83 c4 08          	add    $0x8,%rsp
  40238b:	c3                   	retq   

000000000040238c <Readdir>:
  40238c:	55                   	push   %rbp
  40238d:	53                   	push   %rbx
  40238e:	48 83 ec 08          	sub    $0x8,%rsp
  402392:	48 89 fd             	mov    %rdi,%rbp
  402395:	e8 e6 f2 ff ff       	callq  401680 <__errno_location@plt>
  40239a:	48 89 c3             	mov    %rax,%rbx
  40239d:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4023a3:	48 89 ef             	mov    %rbp,%rdi
  4023a6:	e8 15 f5 ff ff       	callq  4018c0 <readdir@plt>
  4023ab:	48 85 c0             	test   %rax,%rax
  4023ae:	75 0f                	jne    4023bf <Readdir+0x33>
  4023b0:	83 3b 00             	cmpl   $0x0,(%rbx)
  4023b3:	74 0a                	je     4023bf <Readdir+0x33>
  4023b5:	bf ef 2e 40 00       	mov    $0x402eef,%edi
  4023ba:	e8 e0 fa ff ff       	callq  401e9f <unix_error>
  4023bf:	48 83 c4 08          	add    $0x8,%rsp
  4023c3:	5b                   	pop    %rbx
  4023c4:	5d                   	pop    %rbp
  4023c5:	c3                   	retq   

00000000004023c6 <Closedir>:
  4023c6:	48 83 ec 08          	sub    $0x8,%rsp
  4023ca:	e8 f1 f3 ff ff       	callq  4017c0 <closedir@plt>
  4023cf:	85 c0                	test   %eax,%eax
  4023d1:	79 0a                	jns    4023dd <Closedir+0x17>
  4023d3:	bf fd 2e 40 00       	mov    $0x402efd,%edi
  4023d8:	e8 c2 fa ff ff       	callq  401e9f <unix_error>
  4023dd:	48 83 c4 08          	add    $0x8,%rsp
  4023e1:	c3                   	retq   

00000000004023e2 <Mmap>:
  4023e2:	48 83 ec 08          	sub    $0x8,%rsp
  4023e6:	e8 55 f3 ff ff       	callq  401740 <mmap@plt>
  4023eb:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4023ef:	75 0a                	jne    4023fb <Mmap+0x19>
  4023f1:	bf 0c 2f 40 00       	mov    $0x402f0c,%edi
  4023f6:	e8 a4 fa ff ff       	callq  401e9f <unix_error>
  4023fb:	48 83 c4 08          	add    $0x8,%rsp
  4023ff:	c3                   	retq   

0000000000402400 <Munmap>:
  402400:	48 83 ec 08          	sub    $0x8,%rsp
  402404:	e8 57 f5 ff ff       	callq  401960 <munmap@plt>
  402409:	85 c0                	test   %eax,%eax
  40240b:	79 0a                	jns    402417 <Munmap+0x17>
  40240d:	bf 17 2f 40 00       	mov    $0x402f17,%edi
  402412:	e8 88 fa ff ff       	callq  401e9f <unix_error>
  402417:	48 83 c4 08          	add    $0x8,%rsp
  40241b:	c3                   	retq   

000000000040241c <Malloc>:
  40241c:	48 83 ec 08          	sub    $0x8,%rsp
  402420:	e8 cb f4 ff ff       	callq  4018f0 <malloc@plt>
  402425:	48 85 c0             	test   %rax,%rax
  402428:	75 0a                	jne    402434 <Malloc+0x18>
  40242a:	bf 24 2f 40 00       	mov    $0x402f24,%edi
  40242f:	e8 6b fa ff ff       	callq  401e9f <unix_error>
  402434:	48 83 c4 08          	add    $0x8,%rsp
  402438:	c3                   	retq   

0000000000402439 <Realloc>:
  402439:	48 83 ec 08          	sub    $0x8,%rsp
  40243d:	e8 fe f4 ff ff       	callq  401940 <realloc@plt>
  402442:	48 85 c0             	test   %rax,%rax
  402445:	75 0a                	jne    402451 <Realloc+0x18>
  402447:	bf 31 2f 40 00       	mov    $0x402f31,%edi
  40244c:	e8 4e fa ff ff       	callq  401e9f <unix_error>
  402451:	48 83 c4 08          	add    $0x8,%rsp
  402455:	c3                   	retq   

0000000000402456 <Calloc>:
  402456:	48 83 ec 08          	sub    $0x8,%rsp
  40245a:	e8 b1 f3 ff ff       	callq  401810 <calloc@plt>
  40245f:	48 85 c0             	test   %rax,%rax
  402462:	75 0a                	jne    40246e <Calloc+0x18>
  402464:	bf 3f 2f 40 00       	mov    $0x402f3f,%edi
  402469:	e8 31 fa ff ff       	callq  401e9f <unix_error>
  40246e:	48 83 c4 08          	add    $0x8,%rsp
  402472:	c3                   	retq   

0000000000402473 <Free>:
  402473:	48 83 ec 08          	sub    $0x8,%rsp
  402477:	e8 d4 f1 ff ff       	callq  401650 <free@plt>
  40247c:	48 83 c4 08          	add    $0x8,%rsp
  402480:	c3                   	retq   

0000000000402481 <Fclose>:
  402481:	48 83 ec 08          	sub    $0x8,%rsp
  402485:	e8 86 f2 ff ff       	callq  401710 <fclose@plt>
  40248a:	85 c0                	test   %eax,%eax
  40248c:	74 0a                	je     402498 <Fclose+0x17>
  40248e:	bf 4c 2f 40 00       	mov    $0x402f4c,%edi
  402493:	e8 07 fa ff ff       	callq  401e9f <unix_error>
  402498:	48 83 c4 08          	add    $0x8,%rsp
  40249c:	c3                   	retq   

000000000040249d <Fdopen>:
  40249d:	48 83 ec 08          	sub    $0x8,%rsp
  4024a1:	e8 aa f4 ff ff       	callq  401950 <fdopen@plt>
  4024a6:	48 85 c0             	test   %rax,%rax
  4024a9:	75 0a                	jne    4024b5 <Fdopen+0x18>
  4024ab:	bf 59 2f 40 00       	mov    $0x402f59,%edi
  4024b0:	e8 ea f9 ff ff       	callq  401e9f <unix_error>
  4024b5:	48 83 c4 08          	add    $0x8,%rsp
  4024b9:	c3                   	retq   

00000000004024ba <Fgets>:
  4024ba:	55                   	push   %rbp
  4024bb:	53                   	push   %rbx
  4024bc:	48 83 ec 08          	sub    $0x8,%rsp
  4024c0:	48 89 d5             	mov    %rdx,%rbp
  4024c3:	e8 28 f3 ff ff       	callq  4017f0 <fgets@plt>
  4024c8:	48 89 c3             	mov    %rax,%rbx
  4024cb:	48 85 c0             	test   %rax,%rax
  4024ce:	75 16                	jne    4024e6 <Fgets+0x2c>
  4024d0:	48 89 ef             	mov    %rbp,%rdi
  4024d3:	e8 c8 f1 ff ff       	callq  4016a0 <ferror@plt>
  4024d8:	85 c0                	test   %eax,%eax
  4024da:	74 0a                	je     4024e6 <Fgets+0x2c>
  4024dc:	bf 66 2f 40 00       	mov    $0x402f66,%edi
  4024e1:	e8 5c fa ff ff       	callq  401f42 <app_error>
  4024e6:	48 89 d8             	mov    %rbx,%rax
  4024e9:	48 83 c4 08          	add    $0x8,%rsp
  4024ed:	5b                   	pop    %rbx
  4024ee:	5d                   	pop    %rbp
  4024ef:	c3                   	retq   

00000000004024f0 <Fopen>:
  4024f0:	48 83 ec 08          	sub    $0x8,%rsp
  4024f4:	e8 e7 f4 ff ff       	callq  4019e0 <fopen@plt>
  4024f9:	48 85 c0             	test   %rax,%rax
  4024fc:	75 0a                	jne    402508 <Fopen+0x18>
  4024fe:	bf 72 2f 40 00       	mov    $0x402f72,%edi
  402503:	e8 97 f9 ff ff       	callq  401e9f <unix_error>
  402508:	48 83 c4 08          	add    $0x8,%rsp
  40250c:	c3                   	retq   

000000000040250d <Fputs>:
  40250d:	48 83 ec 08          	sub    $0x8,%rsp
  402511:	e8 6a f2 ff ff       	callq  401780 <fputs@plt>
  402516:	83 f8 ff             	cmp    $0xffffffff,%eax
  402519:	75 0a                	jne    402525 <Fputs+0x18>
  40251b:	bf 7e 2f 40 00       	mov    $0x402f7e,%edi
  402520:	e8 7a f9 ff ff       	callq  401e9f <unix_error>
  402525:	48 83 c4 08          	add    $0x8,%rsp
  402529:	c3                   	retq   

000000000040252a <Fread>:
  40252a:	41 54                	push   %r12
  40252c:	55                   	push   %rbp
  40252d:	53                   	push   %rbx
  40252e:	48 89 d3             	mov    %rdx,%rbx
  402531:	49 89 cc             	mov    %rcx,%r12
  402534:	e8 97 f1 ff ff       	callq  4016d0 <fread@plt>
  402539:	48 89 c5             	mov    %rax,%rbp
  40253c:	48 39 c3             	cmp    %rax,%rbx
  40253f:	76 16                	jbe    402557 <Fread+0x2d>
  402541:	4c 89 e7             	mov    %r12,%rdi
  402544:	e8 57 f1 ff ff       	callq  4016a0 <ferror@plt>
  402549:	85 c0                	test   %eax,%eax
  40254b:	74 0a                	je     402557 <Fread+0x2d>
  40254d:	bf 8a 2f 40 00       	mov    $0x402f8a,%edi
  402552:	e8 48 f9 ff ff       	callq  401e9f <unix_error>
  402557:	48 89 e8             	mov    %rbp,%rax
  40255a:	5b                   	pop    %rbx
  40255b:	5d                   	pop    %rbp
  40255c:	41 5c                	pop    %r12
  40255e:	c3                   	retq   

000000000040255f <Fwrite>:
  40255f:	53                   	push   %rbx
  402560:	48 89 d3             	mov    %rdx,%rbx
  402563:	e8 08 f5 ff ff       	callq  401a70 <fwrite@plt>
  402568:	48 39 d8             	cmp    %rbx,%rax
  40256b:	73 0a                	jae    402577 <Fwrite+0x18>
  40256d:	bf 96 2f 40 00       	mov    $0x402f96,%edi
  402572:	e8 28 f9 ff ff       	callq  401e9f <unix_error>
  402577:	5b                   	pop    %rbx
  402578:	c3                   	retq   

0000000000402579 <Socket>:
  402579:	48 83 ec 08          	sub    $0x8,%rsp
  40257d:	e8 7e f5 ff ff       	callq  401b00 <socket@plt>
  402582:	85 c0                	test   %eax,%eax
  402584:	79 0a                	jns    402590 <Socket+0x17>
  402586:	bf a3 2f 40 00       	mov    $0x402fa3,%edi
  40258b:	e8 0f f9 ff ff       	callq  401e9f <unix_error>
  402590:	48 83 c4 08          	add    $0x8,%rsp
  402594:	c3                   	retq   

0000000000402595 <Setsockopt>:
  402595:	48 83 ec 08          	sub    $0x8,%rsp
  402599:	e8 42 f1 ff ff       	callq  4016e0 <setsockopt@plt>
  40259e:	85 c0                	test   %eax,%eax
  4025a0:	79 0a                	jns    4025ac <Setsockopt+0x17>
  4025a2:	bf b0 2f 40 00       	mov    $0x402fb0,%edi
  4025a7:	e8 f3 f8 ff ff       	callq  401e9f <unix_error>
  4025ac:	48 83 c4 08          	add    $0x8,%rsp
  4025b0:	c3                   	retq   

00000000004025b1 <Bind>:
  4025b1:	48 83 ec 08          	sub    $0x8,%rsp
  4025b5:	e8 c6 f3 ff ff       	callq  401980 <bind@plt>
  4025ba:	85 c0                	test   %eax,%eax
  4025bc:	79 0a                	jns    4025c8 <Bind+0x17>
  4025be:	bf c1 2f 40 00       	mov    $0x402fc1,%edi
  4025c3:	e8 d7 f8 ff ff       	callq  401e9f <unix_error>
  4025c8:	48 83 c4 08          	add    $0x8,%rsp
  4025cc:	c3                   	retq   

00000000004025cd <Listen>:
  4025cd:	48 83 ec 08          	sub    $0x8,%rsp
  4025d1:	e8 3a f3 ff ff       	callq  401910 <listen@plt>
  4025d6:	85 c0                	test   %eax,%eax
  4025d8:	79 0a                	jns    4025e4 <Listen+0x17>
  4025da:	bf cc 2f 40 00       	mov    $0x402fcc,%edi
  4025df:	e8 bb f8 ff ff       	callq  401e9f <unix_error>
  4025e4:	48 83 c4 08          	add    $0x8,%rsp
  4025e8:	c3                   	retq   

00000000004025e9 <Accept>:
  4025e9:	48 83 ec 08          	sub    $0x8,%rsp
  4025ed:	e8 1e f4 ff ff       	callq  401a10 <accept@plt>
  4025f2:	85 c0                	test   %eax,%eax
  4025f4:	79 0a                	jns    402600 <Accept+0x17>
  4025f6:	bf d9 2f 40 00       	mov    $0x402fd9,%edi
  4025fb:	e8 9f f8 ff ff       	callq  401e9f <unix_error>
  402600:	48 83 c4 08          	add    $0x8,%rsp
  402604:	c3                   	retq   

0000000000402605 <Connect>:
  402605:	48 83 ec 08          	sub    $0x8,%rsp
  402609:	e8 52 f4 ff ff       	callq  401a60 <connect@plt>
  40260e:	85 c0                	test   %eax,%eax
  402610:	79 0a                	jns    40261c <Connect+0x17>
  402612:	bf e6 2f 40 00       	mov    $0x402fe6,%edi
  402617:	e8 83 f8 ff ff       	callq  401e9f <unix_error>
  40261c:	48 83 c4 08          	add    $0x8,%rsp
  402620:	c3                   	retq   

0000000000402621 <Getaddrinfo>:
  402621:	48 83 ec 08          	sub    $0x8,%rsp
  402625:	e8 66 f4 ff ff       	callq  401a90 <getaddrinfo@plt>
  40262a:	85 c0                	test   %eax,%eax
  40262c:	74 0c                	je     40263a <Getaddrinfo+0x19>
  40262e:	be f4 2f 40 00       	mov    $0x402ff4,%esi
  402633:	89 c7                	mov    %eax,%edi
  402635:	e8 d4 f8 ff ff       	callq  401f0e <gai_error>
  40263a:	48 83 c4 08          	add    $0x8,%rsp
  40263e:	c3                   	retq   

000000000040263f <Getnameinfo>:
  40263f:	48 83 ec 18          	sub    $0x18,%rsp
  402643:	8b 44 24 20          	mov    0x20(%rsp),%eax
  402647:	89 04 24             	mov    %eax,(%rsp)
  40264a:	e8 61 f1 ff ff       	callq  4017b0 <getnameinfo@plt>
  40264f:	85 c0                	test   %eax,%eax
  402651:	74 0c                	je     40265f <Getnameinfo+0x20>
  402653:	be 06 30 40 00       	mov    $0x403006,%esi
  402658:	89 c7                	mov    %eax,%edi
  40265a:	e8 af f8 ff ff       	callq  401f0e <gai_error>
  40265f:	48 83 c4 18          	add    $0x18,%rsp
  402663:	c3                   	retq   

0000000000402664 <Freeaddrinfo>:
  402664:	48 83 ec 08          	sub    $0x8,%rsp
  402668:	e8 83 f4 ff ff       	callq  401af0 <freeaddrinfo@plt>
  40266d:	48 83 c4 08          	add    $0x8,%rsp
  402671:	c3                   	retq   

0000000000402672 <Inet_ntop>:
  402672:	48 83 ec 08          	sub    $0x8,%rsp
  402676:	e8 b5 ef ff ff       	callq  401630 <inet_ntop@plt>
  40267b:	48 85 c0             	test   %rax,%rax
  40267e:	75 0a                	jne    40268a <Inet_ntop+0x18>
  402680:	bf 18 30 40 00       	mov    $0x403018,%edi
  402685:	e8 15 f8 ff ff       	callq  401e9f <unix_error>
  40268a:	48 83 c4 08          	add    $0x8,%rsp
  40268e:	c3                   	retq   

000000000040268f <Inet_pton>:
  40268f:	48 83 ec 08          	sub    $0x8,%rsp
  402693:	e8 e8 f1 ff ff       	callq  401880 <inet_pton@plt>
  402698:	85 c0                	test   %eax,%eax
  40269a:	75 0a                	jne    4026a6 <Inet_pton+0x17>
  40269c:	bf 40 31 40 00       	mov    $0x403140,%edi
  4026a1:	e8 9c f8 ff ff       	callq  401f42 <app_error>
  4026a6:	85 c0                	test   %eax,%eax
  4026a8:	79 0a                	jns    4026b4 <Inet_pton+0x25>
  4026aa:	bf 28 30 40 00       	mov    $0x403028,%edi
  4026af:	e8 eb f7 ff ff       	callq  401e9f <unix_error>
  4026b4:	48 83 c4 08          	add    $0x8,%rsp
  4026b8:	c3                   	retq   

00000000004026b9 <Gethostbyname>:
  4026b9:	48 83 ec 08          	sub    $0x8,%rsp
  4026bd:	e8 5e f1 ff ff       	callq  401820 <gethostbyname@plt>
  4026c2:	48 85 c0             	test   %rax,%rax
  4026c5:	75 0a                	jne    4026d1 <Gethostbyname+0x18>
  4026c7:	bf 38 30 40 00       	mov    $0x403038,%edi
  4026cc:	e8 9d f8 ff ff       	callq  401f6e <dns_error>
  4026d1:	48 83 c4 08          	add    $0x8,%rsp
  4026d5:	c3                   	retq   

00000000004026d6 <Gethostbyaddr>:
  4026d6:	48 83 ec 08          	sub    $0x8,%rsp
  4026da:	e8 51 f3 ff ff       	callq  401a30 <gethostbyaddr@plt>
  4026df:	48 85 c0             	test   %rax,%rax
  4026e2:	75 0a                	jne    4026ee <Gethostbyaddr+0x18>
  4026e4:	bf 4c 30 40 00       	mov    $0x40304c,%edi
  4026e9:	e8 80 f8 ff ff       	callq  401f6e <dns_error>
  4026ee:	48 83 c4 08          	add    $0x8,%rsp
  4026f2:	c3                   	retq   

00000000004026f3 <Pthread_create>:
  4026f3:	48 83 ec 08          	sub    $0x8,%rsp
  4026f7:	e8 64 ef ff ff       	callq  401660 <pthread_create@plt>
  4026fc:	85 c0                	test   %eax,%eax
  4026fe:	74 0c                	je     40270c <Pthread_create+0x19>
  402700:	be 60 30 40 00       	mov    $0x403060,%esi
  402705:	89 c7                	mov    %eax,%edi
  402707:	e8 ce f7 ff ff       	callq  401eda <posix_error>
  40270c:	48 83 c4 08          	add    $0x8,%rsp
  402710:	c3                   	retq   

0000000000402711 <Pthread_cancel>:
  402711:	48 83 ec 08          	sub    $0x8,%rsp
  402715:	e8 96 ef ff ff       	callq  4016b0 <pthread_cancel@plt>
  40271a:	85 c0                	test   %eax,%eax
  40271c:	74 0c                	je     40272a <Pthread_cancel+0x19>
  40271e:	be 75 30 40 00       	mov    $0x403075,%esi
  402723:	89 c7                	mov    %eax,%edi
  402725:	e8 b0 f7 ff ff       	callq  401eda <posix_error>
  40272a:	48 83 c4 08          	add    $0x8,%rsp
  40272e:	c3                   	retq   

000000000040272f <Pthread_join>:
  40272f:	48 83 ec 08          	sub    $0x8,%rsp
  402733:	e8 c8 f2 ff ff       	callq  401a00 <pthread_join@plt>
  402738:	85 c0                	test   %eax,%eax
  40273a:	74 0c                	je     402748 <Pthread_join+0x19>
  40273c:	be 8a 30 40 00       	mov    $0x40308a,%esi
  402741:	89 c7                	mov    %eax,%edi
  402743:	e8 92 f7 ff ff       	callq  401eda <posix_error>
  402748:	48 83 c4 08          	add    $0x8,%rsp
  40274c:	c3                   	retq   

000000000040274d <Pthread_detach>:
  40274d:	48 83 ec 08          	sub    $0x8,%rsp
  402751:	e8 1a ef ff ff       	callq  401670 <pthread_detach@plt>
  402756:	85 c0                	test   %eax,%eax
  402758:	74 0c                	je     402766 <Pthread_detach+0x19>
  40275a:	be 9d 30 40 00       	mov    $0x40309d,%esi
  40275f:	89 c7                	mov    %eax,%edi
  402761:	e8 74 f7 ff ff       	callq  401eda <posix_error>
  402766:	48 83 c4 08          	add    $0x8,%rsp
  40276a:	c3                   	retq   

000000000040276b <Pthread_exit>:
  40276b:	48 83 ec 08          	sub    $0x8,%rsp
  40276f:	e8 6c f1 ff ff       	callq  4018e0 <pthread_exit@plt>

0000000000402774 <Pthread_self>:
  402774:	48 83 ec 08          	sub    $0x8,%rsp
  402778:	e8 13 f2 ff ff       	callq  401990 <pthread_self@plt>
  40277d:	48 83 c4 08          	add    $0x8,%rsp
  402781:	c3                   	retq   

0000000000402782 <Pthread_once>:
  402782:	48 83 ec 08          	sub    $0x8,%rsp
  402786:	e8 75 ef ff ff       	callq  401700 <pthread_once@plt>
  40278b:	48 83 c4 08          	add    $0x8,%rsp
  40278f:	c3                   	retq   

0000000000402790 <Sem_init>:
  402790:	48 83 ec 08          	sub    $0x8,%rsp
  402794:	e8 17 f2 ff ff       	callq  4019b0 <sem_init@plt>
  402799:	85 c0                	test   %eax,%eax
  40279b:	79 0a                	jns    4027a7 <Sem_init+0x17>
  40279d:	bf b2 30 40 00       	mov    $0x4030b2,%edi
  4027a2:	e8 f8 f6 ff ff       	callq  401e9f <unix_error>
  4027a7:	48 83 c4 08          	add    $0x8,%rsp
  4027ab:	c3                   	retq   

00000000004027ac <P>:
  4027ac:	48 83 ec 08          	sub    $0x8,%rsp
  4027b0:	e8 7b f0 ff ff       	callq  401830 <sem_wait@plt>
  4027b5:	85 c0                	test   %eax,%eax
  4027b7:	79 0a                	jns    4027c3 <P+0x17>
  4027b9:	bf c1 30 40 00       	mov    $0x4030c1,%edi
  4027be:	e8 dc f6 ff ff       	callq  401e9f <unix_error>
  4027c3:	48 83 c4 08          	add    $0x8,%rsp
  4027c7:	c3                   	retq   

00000000004027c8 <V>:
  4027c8:	48 83 ec 08          	sub    $0x8,%rsp
  4027cc:	e8 5f f1 ff ff       	callq  401930 <sem_post@plt>
  4027d1:	85 c0                	test   %eax,%eax
  4027d3:	79 0a                	jns    4027df <V+0x17>
  4027d5:	bf c9 30 40 00       	mov    $0x4030c9,%edi
  4027da:	e8 c0 f6 ff ff       	callq  401e9f <unix_error>
  4027df:	48 83 c4 08          	add    $0x8,%rsp
  4027e3:	c3                   	retq   

00000000004027e4 <rio_readn>:
  4027e4:	41 55                	push   %r13
  4027e6:	41 54                	push   %r12
  4027e8:	55                   	push   %rbp
  4027e9:	53                   	push   %rbx
  4027ea:	48 83 ec 08          	sub    $0x8,%rsp
  4027ee:	41 89 fc             	mov    %edi,%r12d
  4027f1:	48 89 f5             	mov    %rsi,%rbp
  4027f4:	49 89 d5             	mov    %rdx,%r13
  4027f7:	48 89 d3             	mov    %rdx,%rbx
  4027fa:	eb 38                	jmp    402834 <rio_readn+0x50>
  4027fc:	48 89 da             	mov    %rbx,%rdx
  4027ff:	48 89 ee             	mov    %rbp,%rsi
  402802:	44 89 e7             	mov    %r12d,%edi
  402805:	e8 c6 ef ff ff       	callq  4017d0 <read@plt>
  40280a:	48 85 c0             	test   %rax,%rax
  40280d:	79 13                	jns    402822 <rio_readn+0x3e>
  40280f:	e8 6c ee ff ff       	callq  401680 <__errno_location@plt>
  402814:	83 38 04             	cmpl   $0x4,(%rax)
  402817:	74 10                	je     402829 <rio_readn+0x45>
  402819:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402820:	eb 1d                	jmp    40283f <rio_readn+0x5b>
  402822:	48 85 c0             	test   %rax,%rax
  402825:	75 07                	jne    40282e <rio_readn+0x4a>
  402827:	eb 10                	jmp    402839 <rio_readn+0x55>
  402829:	b8 00 00 00 00       	mov    $0x0,%eax
  40282e:	48 29 c3             	sub    %rax,%rbx
  402831:	48 01 c5             	add    %rax,%rbp
  402834:	48 85 db             	test   %rbx,%rbx
  402837:	75 c3                	jne    4027fc <rio_readn+0x18>
  402839:	4c 89 e8             	mov    %r13,%rax
  40283c:	48 29 d8             	sub    %rbx,%rax
  40283f:	48 83 c4 08          	add    $0x8,%rsp
  402843:	5b                   	pop    %rbx
  402844:	5d                   	pop    %rbp
  402845:	41 5c                	pop    %r12
  402847:	41 5d                	pop    %r13
  402849:	c3                   	retq   

000000000040284a <rio_writen>:
  40284a:	41 55                	push   %r13
  40284c:	41 54                	push   %r12
  40284e:	55                   	push   %rbp
  40284f:	53                   	push   %rbx
  402850:	48 83 ec 08          	sub    $0x8,%rsp
  402854:	41 89 fc             	mov    %edi,%r12d
  402857:	48 89 f5             	mov    %rsi,%rbp
  40285a:	49 89 d5             	mov    %rdx,%r13
  40285d:	48 89 d3             	mov    %rdx,%rbx
  402860:	eb 28                	jmp    40288a <rio_writen+0x40>
  402862:	48 89 da             	mov    %rbx,%rdx
  402865:	48 89 ee             	mov    %rbp,%rsi
  402868:	44 89 e7             	mov    %r12d,%edi
  40286b:	e8 80 ee ff ff       	callq  4016f0 <write@plt>
  402870:	48 85 c0             	test   %rax,%rax
  402873:	7f 0f                	jg     402884 <rio_writen+0x3a>
  402875:	e8 06 ee ff ff       	callq  401680 <__errno_location@plt>
  40287a:	83 38 04             	cmpl   $0x4,(%rax)
  40287d:	75 15                	jne    402894 <rio_writen+0x4a>
  40287f:	b8 00 00 00 00       	mov    $0x0,%eax
  402884:	48 29 c3             	sub    %rax,%rbx
  402887:	48 01 c5             	add    %rax,%rbp
  40288a:	48 85 db             	test   %rbx,%rbx
  40288d:	75 d3                	jne    402862 <rio_writen+0x18>
  40288f:	4c 89 e8             	mov    %r13,%rax
  402892:	eb 07                	jmp    40289b <rio_writen+0x51>
  402894:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40289b:	48 83 c4 08          	add    $0x8,%rsp
  40289f:	5b                   	pop    %rbx
  4028a0:	5d                   	pop    %rbp
  4028a1:	41 5c                	pop    %r12
  4028a3:	41 5d                	pop    %r13
  4028a5:	c3                   	retq   

00000000004028a6 <rio_readinitb>:
  4028a6:	89 37                	mov    %esi,(%rdi)
  4028a8:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4028af:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4028b3:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4028b7:	c3                   	retq   

00000000004028b8 <rio_readnb>:
  4028b8:	41 55                	push   %r13
  4028ba:	41 54                	push   %r12
  4028bc:	55                   	push   %rbp
  4028bd:	53                   	push   %rbx
  4028be:	48 83 ec 08          	sub    $0x8,%rsp
  4028c2:	49 89 fc             	mov    %rdi,%r12
  4028c5:	48 89 f5             	mov    %rsi,%rbp
  4028c8:	49 89 d5             	mov    %rdx,%r13
  4028cb:	48 89 d3             	mov    %rdx,%rbx
  4028ce:	eb 1e                	jmp    4028ee <rio_readnb+0x36>
  4028d0:	48 89 da             	mov    %rbx,%rdx
  4028d3:	48 89 ee             	mov    %rbp,%rsi
  4028d6:	4c 89 e7             	mov    %r12,%rdi
  4028d9:	e8 30 f5 ff ff       	callq  401e0e <rio_read>
  4028de:	48 85 c0             	test   %rax,%rax
  4028e1:	78 18                	js     4028fb <rio_readnb+0x43>
  4028e3:	48 85 c0             	test   %rax,%rax
  4028e6:	74 0b                	je     4028f3 <rio_readnb+0x3b>
  4028e8:	48 29 c3             	sub    %rax,%rbx
  4028eb:	48 01 c5             	add    %rax,%rbp
  4028ee:	48 85 db             	test   %rbx,%rbx
  4028f1:	75 dd                	jne    4028d0 <rio_readnb+0x18>
  4028f3:	4c 89 e8             	mov    %r13,%rax
  4028f6:	48 29 d8             	sub    %rbx,%rax
  4028f9:	eb 07                	jmp    402902 <rio_readnb+0x4a>
  4028fb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402902:	48 83 c4 08          	add    $0x8,%rsp
  402906:	5b                   	pop    %rbx
  402907:	5d                   	pop    %rbp
  402908:	41 5c                	pop    %r12
  40290a:	41 5d                	pop    %r13
  40290c:	c3                   	retq   

000000000040290d <rio_readlineb>:
  40290d:	41 55                	push   %r13
  40290f:	41 54                	push   %r12
  402911:	55                   	push   %rbp
  402912:	53                   	push   %rbx
  402913:	48 83 ec 18          	sub    $0x18,%rsp
  402917:	49 89 fd             	mov    %rdi,%r13
  40291a:	48 89 f5             	mov    %rsi,%rbp
  40291d:	49 89 d4             	mov    %rdx,%r12
  402920:	bb 01 00 00 00       	mov    $0x1,%ebx
  402925:	eb 41                	jmp    402968 <rio_readlineb+0x5b>
  402927:	ba 01 00 00 00       	mov    $0x1,%edx
  40292c:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402931:	4c 89 ef             	mov    %r13,%rdi
  402934:	e8 d5 f4 ff ff       	callq  401e0e <rio_read>
  402939:	83 f8 01             	cmp    $0x1,%eax
  40293c:	75 18                	jne    402956 <rio_readlineb+0x49>
  40293e:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402942:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  402947:	88 45 00             	mov    %al,0x0(%rbp)
  40294a:	3c 0a                	cmp    $0xa,%al
  40294c:	75 14                	jne    402962 <rio_readlineb+0x55>
  40294e:	83 c3 01             	add    $0x1,%ebx
  402951:	48 89 d5             	mov    %rdx,%rbp
  402954:	eb 1a                	jmp    402970 <rio_readlineb+0x63>
  402956:	85 c0                	test   %eax,%eax
  402958:	75 22                	jne    40297c <rio_readlineb+0x6f>
  40295a:	83 fb 01             	cmp    $0x1,%ebx
  40295d:	75 11                	jne    402970 <rio_readlineb+0x63>
  40295f:	90                   	nop
  402960:	eb 23                	jmp    402985 <rio_readlineb+0x78>
  402962:	83 c3 01             	add    $0x1,%ebx
  402965:	48 89 d5             	mov    %rdx,%rbp
  402968:	48 63 c3             	movslq %ebx,%rax
  40296b:	4c 39 e0             	cmp    %r12,%rax
  40296e:	72 b7                	jb     402927 <rio_readlineb+0x1a>
  402970:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402974:	83 eb 01             	sub    $0x1,%ebx
  402977:	48 63 c3             	movslq %ebx,%rax
  40297a:	eb 0e                	jmp    40298a <rio_readlineb+0x7d>
  40297c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402983:	eb 05                	jmp    40298a <rio_readlineb+0x7d>
  402985:	b8 00 00 00 00       	mov    $0x0,%eax
  40298a:	48 83 c4 18          	add    $0x18,%rsp
  40298e:	5b                   	pop    %rbx
  40298f:	5d                   	pop    %rbp
  402990:	41 5c                	pop    %r12
  402992:	41 5d                	pop    %r13
  402994:	c3                   	retq   

0000000000402995 <Rio_readn>:
  402995:	48 83 ec 08          	sub    $0x8,%rsp
  402999:	e8 46 fe ff ff       	callq  4027e4 <rio_readn>
  40299e:	48 85 c0             	test   %rax,%rax
  4029a1:	79 0a                	jns    4029ad <Rio_readn+0x18>
  4029a3:	bf d1 30 40 00       	mov    $0x4030d1,%edi
  4029a8:	e8 f2 f4 ff ff       	callq  401e9f <unix_error>
  4029ad:	48 83 c4 08          	add    $0x8,%rsp
  4029b1:	c3                   	retq   

00000000004029b2 <Rio_writen>:
  4029b2:	53                   	push   %rbx
  4029b3:	48 89 d3             	mov    %rdx,%rbx
  4029b6:	e8 8f fe ff ff       	callq  40284a <rio_writen>
  4029bb:	48 39 d8             	cmp    %rbx,%rax
  4029be:	74 0a                	je     4029ca <Rio_writen+0x18>
  4029c0:	bf e1 30 40 00       	mov    $0x4030e1,%edi
  4029c5:	e8 d5 f4 ff ff       	callq  401e9f <unix_error>
  4029ca:	5b                   	pop    %rbx
  4029cb:	c3                   	retq   

00000000004029cc <Rio_readinitb>:
  4029cc:	e8 d5 fe ff ff       	callq  4028a6 <rio_readinitb>
  4029d1:	f3 c3                	repz retq 

00000000004029d3 <Rio_readnb>:
  4029d3:	48 83 ec 08          	sub    $0x8,%rsp
  4029d7:	e8 dc fe ff ff       	callq  4028b8 <rio_readnb>
  4029dc:	48 85 c0             	test   %rax,%rax
  4029df:	79 0a                	jns    4029eb <Rio_readnb+0x18>
  4029e1:	bf f2 30 40 00       	mov    $0x4030f2,%edi
  4029e6:	e8 b4 f4 ff ff       	callq  401e9f <unix_error>
  4029eb:	48 83 c4 08          	add    $0x8,%rsp
  4029ef:	c3                   	retq   

00000000004029f0 <Rio_readlineb>:
  4029f0:	48 83 ec 08          	sub    $0x8,%rsp
  4029f4:	e8 14 ff ff ff       	callq  40290d <rio_readlineb>
  4029f9:	48 85 c0             	test   %rax,%rax
  4029fc:	79 0a                	jns    402a08 <Rio_readlineb+0x18>
  4029fe:	bf 03 31 40 00       	mov    $0x403103,%edi
  402a03:	e8 97 f4 ff ff       	callq  401e9f <unix_error>
  402a08:	48 83 c4 08          	add    $0x8,%rsp
  402a0c:	c3                   	retq   

0000000000402a0d <open_clientfd>:
  402a0d:	41 54                	push   %r12
  402a0f:	55                   	push   %rbp
  402a10:	53                   	push   %rbx
  402a11:	48 83 ec 40          	sub    $0x40,%rsp
  402a15:	48 89 fb             	mov    %rdi,%rbx
  402a18:	49 89 f4             	mov    %rsi,%r12
  402a1b:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  402a20:	b9 06 00 00 00       	mov    $0x6,%ecx
  402a25:	b8 00 00 00 00       	mov    $0x0,%eax
  402a2a:	48 89 d7             	mov    %rdx,%rdi
  402a2d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402a30:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%rsp)
  402a37:	00 
  402a38:	c7 44 24 10 20 04 00 	movl   $0x420,0x10(%rsp)
  402a3f:	00 
  402a40:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  402a45:	48 89 df             	mov    %rbx,%rdi
  402a48:	e8 43 f0 ff ff       	callq  401a90 <getaddrinfo@plt>
  402a4d:	85 c0                	test   %eax,%eax
  402a4f:	74 36                	je     402a87 <open_clientfd+0x7a>
  402a51:	89 c7                	mov    %eax,%edi
  402a53:	e8 08 ed ff ff       	callq  401760 <gai_strerror@plt>
  402a58:	49 89 c1             	mov    %rax,%r9
  402a5b:	4d 89 e0             	mov    %r12,%r8
  402a5e:	48 89 d9             	mov    %rbx,%rcx
  402a61:	ba 70 31 40 00       	mov    $0x403170,%edx
  402a66:	be 01 00 00 00       	mov    $0x1,%esi
  402a6b:	48 8b 3d 0e 28 20 00 	mov    0x20280e(%rip),%rdi        # 605280 <__bss_start>
  402a72:	b8 00 00 00 00       	mov    $0x0,%eax
  402a77:	e8 04 f0 ff ff       	callq  401a80 <__fprintf_chk@plt>
  402a7c:	41 bc fe ff ff ff    	mov    $0xfffffffe,%r12d
  402a82:	e9 88 00 00 00       	jmpq   402b0f <open_clientfd+0x102>
  402a87:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  402a8c:	eb 65                	jmp    402af3 <open_clientfd+0xe6>
  402a8e:	8b 53 0c             	mov    0xc(%rbx),%edx
  402a91:	8b 73 08             	mov    0x8(%rbx),%esi
  402a94:	8b 7b 04             	mov    0x4(%rbx),%edi
  402a97:	e8 64 f0 ff ff       	callq  401b00 <socket@plt>
  402a9c:	89 c5                	mov    %eax,%ebp
  402a9e:	85 c0                	test   %eax,%eax
  402aa0:	78 4d                	js     402aef <open_clientfd+0xe2>
  402aa2:	48 8b 73 18          	mov    0x18(%rbx),%rsi
  402aa6:	8b 53 10             	mov    0x10(%rbx),%edx
  402aa9:	89 c7                	mov    %eax,%edi
  402aab:	e8 b0 ef ff ff       	callq  401a60 <connect@plt>
  402ab0:	41 89 c4             	mov    %eax,%r12d
  402ab3:	83 f8 ff             	cmp    $0xffffffff,%eax
  402ab6:	75 40                	jne    402af8 <open_clientfd+0xeb>
  402ab8:	89 ef                	mov    %ebp,%edi
  402aba:	e8 e1 ec ff ff       	callq  4017a0 <close@plt>
  402abf:	85 c0                	test   %eax,%eax
  402ac1:	79 2c                	jns    402aef <open_clientfd+0xe2>
  402ac3:	e8 b8 eb ff ff       	callq  401680 <__errno_location@plt>
  402ac8:	8b 38                	mov    (%rax),%edi
  402aca:	e8 d1 ef ff ff       	callq  401aa0 <strerror@plt>
  402acf:	48 89 c1             	mov    %rax,%rcx
  402ad2:	ba 90 31 40 00       	mov    $0x403190,%edx
  402ad7:	be 01 00 00 00       	mov    $0x1,%esi
  402adc:	48 8b 3d 9d 27 20 00 	mov    0x20279d(%rip),%rdi        # 605280 <__bss_start>
  402ae3:	b8 00 00 00 00       	mov    $0x0,%eax
  402ae8:	e8 93 ef ff ff       	callq  401a80 <__fprintf_chk@plt>
  402aed:	eb 20                	jmp    402b0f <open_clientfd+0x102>
  402aef:	48 8b 5b 28          	mov    0x28(%rbx),%rbx
  402af3:	48 85 db             	test   %rbx,%rbx
  402af6:	75 96                	jne    402a8e <open_clientfd+0x81>
  402af8:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402afd:	e8 ee ef ff ff       	callq  401af0 <freeaddrinfo@plt>
  402b02:	48 85 db             	test   %rbx,%rbx
  402b05:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
  402b0b:	44 0f 45 e5          	cmovne %ebp,%r12d
  402b0f:	44 89 e0             	mov    %r12d,%eax
  402b12:	48 83 c4 40          	add    $0x40,%rsp
  402b16:	5b                   	pop    %rbx
  402b17:	5d                   	pop    %rbp
  402b18:	41 5c                	pop    %r12
  402b1a:	c3                   	retq   

0000000000402b1b <open_listenfd>:
  402b1b:	55                   	push   %rbp
  402b1c:	53                   	push   %rbx
  402b1d:	48 83 ec 48          	sub    $0x48,%rsp
  402b21:	48 89 fb             	mov    %rdi,%rbx
  402b24:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%rsp)
  402b2b:	00 
  402b2c:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  402b31:	b9 06 00 00 00       	mov    $0x6,%ecx
  402b36:	b8 00 00 00 00       	mov    $0x0,%eax
  402b3b:	48 89 d7             	mov    %rdx,%rdi
  402b3e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402b41:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%rsp)
  402b48:	00 
  402b49:	c7 44 24 10 21 04 00 	movl   $0x421,0x10(%rsp)
  402b50:	00 
  402b51:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  402b56:	48 89 de             	mov    %rbx,%rsi
  402b59:	bf 00 00 00 00       	mov    $0x0,%edi
  402b5e:	e8 2d ef ff ff       	callq  401a90 <getaddrinfo@plt>
  402b63:	85 c0                	test   %eax,%eax
  402b65:	74 32                	je     402b99 <open_listenfd+0x7e>
  402b67:	89 c7                	mov    %eax,%edi
  402b69:	e8 f2 eb ff ff       	callq  401760 <gai_strerror@plt>
  402b6e:	49 89 c0             	mov    %rax,%r8
  402b71:	48 89 d9             	mov    %rbx,%rcx
  402b74:	ba b8 31 40 00       	mov    $0x4031b8,%edx
  402b79:	be 01 00 00 00       	mov    $0x1,%esi
  402b7e:	48 8b 3d fb 26 20 00 	mov    0x2026fb(%rip),%rdi        # 605280 <__bss_start>
  402b85:	b8 00 00 00 00       	mov    $0x0,%eax
  402b8a:	e8 f1 ee ff ff       	callq  401a80 <__fprintf_chk@plt>
  402b8f:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
  402b94:	e9 cd 00 00 00       	jmpq   402c66 <open_listenfd+0x14b>
  402b99:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  402b9e:	e9 84 00 00 00       	jmpq   402c27 <open_listenfd+0x10c>
  402ba3:	8b 53 0c             	mov    0xc(%rbx),%edx
  402ba6:	8b 73 08             	mov    0x8(%rbx),%esi
  402ba9:	8b 7b 04             	mov    0x4(%rbx),%edi
  402bac:	e8 4f ef ff ff       	callq  401b00 <socket@plt>
  402bb1:	89 c5                	mov    %eax,%ebp
  402bb3:	85 c0                	test   %eax,%eax
  402bb5:	78 6c                	js     402c23 <open_listenfd+0x108>
  402bb7:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  402bbd:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  402bc2:	ba 02 00 00 00       	mov    $0x2,%edx
  402bc7:	be 01 00 00 00       	mov    $0x1,%esi
  402bcc:	89 c7                	mov    %eax,%edi
  402bce:	e8 0d eb ff ff       	callq  4016e0 <setsockopt@plt>
  402bd3:	48 8b 73 18          	mov    0x18(%rbx),%rsi
  402bd7:	8b 53 10             	mov    0x10(%rbx),%edx
  402bda:	89 ef                	mov    %ebp,%edi
  402bdc:	e8 9f ed ff ff       	callq  401980 <bind@plt>
  402be1:	85 c0                	test   %eax,%eax
  402be3:	74 4b                	je     402c30 <open_listenfd+0x115>
  402be5:	89 ef                	mov    %ebp,%edi
  402be7:	e8 b4 eb ff ff       	callq  4017a0 <close@plt>
  402bec:	85 c0                	test   %eax,%eax
  402bee:	66 90                	xchg   %ax,%ax
  402bf0:	79 31                	jns    402c23 <open_listenfd+0x108>
  402bf2:	e8 89 ea ff ff       	callq  401680 <__errno_location@plt>
  402bf7:	8b 38                	mov    (%rax),%edi
  402bf9:	e8 a2 ee ff ff       	callq  401aa0 <strerror@plt>
  402bfe:	48 89 c1             	mov    %rax,%rcx
  402c01:	ba e0 31 40 00       	mov    $0x4031e0,%edx
  402c06:	be 01 00 00 00       	mov    $0x1,%esi
  402c0b:	48 8b 3d 6e 26 20 00 	mov    0x20266e(%rip),%rdi        # 605280 <__bss_start>
  402c12:	b8 00 00 00 00       	mov    $0x0,%eax
  402c17:	e8 64 ee ff ff       	callq  401a80 <__fprintf_chk@plt>
  402c1c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c21:	eb 43                	jmp    402c66 <open_listenfd+0x14b>
  402c23:	48 8b 5b 28          	mov    0x28(%rbx),%rbx
  402c27:	48 85 db             	test   %rbx,%rbx
  402c2a:	0f 85 73 ff ff ff    	jne    402ba3 <open_listenfd+0x88>
  402c30:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402c35:	e8 b6 ee ff ff       	callq  401af0 <freeaddrinfo@plt>
  402c3a:	48 85 db             	test   %rbx,%rbx
  402c3d:	74 1e                	je     402c5d <open_listenfd+0x142>
  402c3f:	be 00 04 00 00       	mov    $0x400,%esi
  402c44:	89 ef                	mov    %ebp,%edi
  402c46:	e8 c5 ec ff ff       	callq  401910 <listen@plt>
  402c4b:	85 c0                	test   %eax,%eax
  402c4d:	79 15                	jns    402c64 <open_listenfd+0x149>
  402c4f:	89 ef                	mov    %ebp,%edi
  402c51:	e8 4a eb ff ff       	callq  4017a0 <close@plt>
  402c56:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c5b:	eb 09                	jmp    402c66 <open_listenfd+0x14b>
  402c5d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c62:	eb 02                	jmp    402c66 <open_listenfd+0x14b>
  402c64:	89 e8                	mov    %ebp,%eax
  402c66:	48 83 c4 48          	add    $0x48,%rsp
  402c6a:	5b                   	pop    %rbx
  402c6b:	5d                   	pop    %rbp
  402c6c:	c3                   	retq   

0000000000402c6d <Open_clientfd>:
  402c6d:	48 83 ec 08          	sub    $0x8,%rsp
  402c71:	e8 97 fd ff ff       	callq  402a0d <open_clientfd>
  402c76:	85 c0                	test   %eax,%eax
  402c78:	79 0a                	jns    402c84 <Open_clientfd+0x17>
  402c7a:	bf 17 31 40 00       	mov    $0x403117,%edi
  402c7f:	e8 1b f2 ff ff       	callq  401e9f <unix_error>
  402c84:	48 83 c4 08          	add    $0x8,%rsp
  402c88:	c3                   	retq   

0000000000402c89 <Open_listenfd>:
  402c89:	48 83 ec 08          	sub    $0x8,%rsp
  402c8d:	e8 89 fe ff ff       	callq  402b1b <open_listenfd>
  402c92:	85 c0                	test   %eax,%eax
  402c94:	79 0a                	jns    402ca0 <Open_listenfd+0x17>
  402c96:	bf 2b 31 40 00       	mov    $0x40312b,%edi
  402c9b:	e8 ff f1 ff ff       	callq  401e9f <unix_error>
  402ca0:	48 83 c4 08          	add    $0x8,%rsp
  402ca4:	c3                   	retq   
  402ca5:	90                   	nop
  402ca6:	90                   	nop
  402ca7:	90                   	nop
  402ca8:	90                   	nop
  402ca9:	90                   	nop
  402caa:	90                   	nop
  402cab:	90                   	nop
  402cac:	90                   	nop
  402cad:	90                   	nop
  402cae:	90                   	nop
  402caf:	90                   	nop

0000000000402cb0 <__libc_csu_init>:
  402cb0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  402cb5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  402cba:	48 8d 2d 2f 21 20 00 	lea    0x20212f(%rip),%rbp        # 604df0 <__init_array_end>
  402cc1:	4c 8d 25 20 21 20 00 	lea    0x202120(%rip),%r12        # 604de8 <__frame_dummy_init_array_entry>
  402cc8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  402ccd:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  402cd2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  402cd7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  402cdc:	48 83 ec 38          	sub    $0x38,%rsp
  402ce0:	4c 29 e5             	sub    %r12,%rbp
  402ce3:	41 89 fd             	mov    %edi,%r13d
  402ce6:	49 89 f6             	mov    %rsi,%r14
  402ce9:	48 c1 fd 03          	sar    $0x3,%rbp
  402ced:	49 89 d7             	mov    %rdx,%r15
  402cf0:	e8 13 e9 ff ff       	callq  401608 <_init>
  402cf5:	48 85 ed             	test   %rbp,%rbp
  402cf8:	74 1c                	je     402d16 <__libc_csu_init+0x66>
  402cfa:	31 db                	xor    %ebx,%ebx
  402cfc:	0f 1f 40 00          	nopl   0x0(%rax)
  402d00:	4c 89 fa             	mov    %r15,%rdx
  402d03:	4c 89 f6             	mov    %r14,%rsi
  402d06:	44 89 ef             	mov    %r13d,%edi
  402d09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402d0d:	48 83 c3 01          	add    $0x1,%rbx
  402d11:	48 39 eb             	cmp    %rbp,%rbx
  402d14:	75 ea                	jne    402d00 <__libc_csu_init+0x50>
  402d16:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  402d1b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  402d20:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  402d25:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  402d2a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  402d2f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  402d34:	48 83 c4 38          	add    $0x38,%rsp
  402d38:	c3                   	retq   
  402d39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402d40 <__libc_csu_fini>:
  402d40:	f3 c3                	repz retq 
  402d42:	90                   	nop
  402d43:	90                   	nop

Disassembly of section .fini:

0000000000402d44 <_fini>:
  402d44:	48 83 ec 08          	sub    $0x8,%rsp
  402d48:	48 83 c4 08          	add    $0x8,%rsp
  402d4c:	c3                   	retq   
