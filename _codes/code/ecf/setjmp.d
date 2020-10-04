
setjmp:     file format elf32-i386

Disassembly of section .init:

08048e60 <_init>:
 8048e60:	55                   	push   %ebp
 8048e61:	89 e5                	mov    %esp,%ebp
 8048e63:	53                   	push   %ebx
 8048e64:	e8 00 00 00 00       	call   8048e69 <_init+0x9>
 8048e69:	5b                   	pop    %ebx
 8048e6a:	81 c3 df 2b 00 00    	add    $0x2bdf,%ebx
 8048e70:	83 bb 30 01 00 00 00 	cmpl   $0x0,0x130(%ebx)
 8048e77:	74 05                	je     8048e7e <_init+0x1e>
 8048e79:	e8 a2 04 00 00       	call   8049320 <__gmon_start__@plt>
 8048e7e:	89 f6                	mov    %esi,%esi
 8048e80:	e8 3b 05 00 00       	call   80493c0 <frame_dummy>
 8048e85:	e8 16 17 00 00       	call   804a5a0 <__do_global_ctors_aux>
 8048e8a:	8b 5d fc             	mov    0xfffffffc(%ebp),%ebx
 8048e8d:	c9                   	leave  
 8048e8e:	c3                   	ret    
Disassembly of section .plt:

08048e90 <pthread_detach@plt-0x10>:
 8048e90:	ff 35 4c ba 04 08    	pushl  0x804ba4c
 8048e96:	ff 25 50 ba 04 08    	jmp    *0x804ba50
 8048e9c:	00 00                	add    %al,(%eax)
	...

08048ea0 <pthread_detach@plt>:
 8048ea0:	ff 25 54 ba 04 08    	jmp    *0x804ba54
 8048ea6:	68 00 00 00 00       	push   $0x0
 8048eab:	e9 e0 ff ff ff       	jmp    8048e90 <_init+0x30>

08048eb0 <sigfillset@plt>:
 8048eb0:	ff 25 58 ba 04 08    	jmp    *0x804ba58
 8048eb6:	68 08 00 00 00       	push   $0x8
 8048ebb:	e9 d0 ff ff ff       	jmp    8048e90 <_init+0x30>

08048ec0 <sem_wait@plt>:
 8048ec0:	ff 25 5c ba 04 08    	jmp    *0x804ba5c
 8048ec6:	68 10 00 00 00       	push   $0x10
 8048ecb:	e9 c0 ff ff ff       	jmp    8048e90 <_init+0x30>

08048ed0 <ferror@plt>:
 8048ed0:	ff 25 60 ba 04 08    	jmp    *0x804ba60
 8048ed6:	68 18 00 00 00       	push   $0x18
 8048edb:	e9 b0 ff ff ff       	jmp    8048e90 <_init+0x30>

08048ee0 <sigaction@plt>:
 8048ee0:	ff 25 64 ba 04 08    	jmp    *0x804ba64
 8048ee6:	68 20 00 00 00       	push   $0x20
 8048eeb:	e9 a0 ff ff ff       	jmp    8048e90 <_init+0x30>

08048ef0 <sigismember@plt>:
 8048ef0:	ff 25 68 ba 04 08    	jmp    *0x804ba68
 8048ef6:	68 28 00 00 00       	push   $0x28
 8048efb:	e9 90 ff ff ff       	jmp    8048e90 <_init+0x30>

08048f00 <fdopen@plt>:
 8048f00:	ff 25 6c ba 04 08    	jmp    *0x804ba6c
 8048f06:	68 30 00 00 00       	push   $0x30
 8048f0b:	e9 80 ff ff ff       	jmp    8048e90 <_init+0x30>

08048f10 <getpgrp@plt>:
 8048f10:	ff 25 70 ba 04 08    	jmp    *0x804ba70
 8048f16:	68 38 00 00 00       	push   $0x38
 8048f1b:	e9 70 ff ff ff       	jmp    8048e90 <_init+0x30>

08048f20 <__register_frame_info@plt>:
 8048f20:	ff 25 74 ba 04 08    	jmp    *0x804ba74
 8048f26:	68 40 00 00 00       	push   $0x40
 8048f2b:	e9 60 ff ff ff       	jmp    8048e90 <_init+0x30>

08048f30 <write@plt>:
 8048f30:	ff 25 78 ba 04 08    	jmp    *0x804ba78
 8048f36:	68 48 00 00 00       	push   $0x48
 8048f3b:	e9 50 ff ff ff       	jmp    8048e90 <_init+0x30>

08048f40 <close@plt>:
 8048f40:	ff 25 7c ba 04 08    	jmp    *0x804ba7c
 8048f46:	68 50 00 00 00       	push   $0x50
 8048f4b:	e9 40 ff ff ff       	jmp    8048e90 <_init+0x30>

08048f50 <sem_init@plt>:
 8048f50:	ff 25 80 ba 04 08    	jmp    *0x804ba80
 8048f56:	68 58 00 00 00       	push   $0x58
 8048f5b:	e9 30 ff ff ff       	jmp    8048e90 <_init+0x30>

08048f60 <fprintf@plt>:
 8048f60:	ff 25 84 ba 04 08    	jmp    *0x804ba84
 8048f66:	68 60 00 00 00       	push   $0x60
 8048f6b:	e9 20 ff ff ff       	jmp    8048e90 <_init+0x30>

08048f70 <fork@plt>:
 8048f70:	ff 25 88 ba 04 08    	jmp    *0x804ba88
 8048f76:	68 68 00 00 00       	push   $0x68
 8048f7b:	e9 10 ff ff ff       	jmp    8048e90 <_init+0x30>

08048f80 <pthread_create@plt>:
 8048f80:	ff 25 8c ba 04 08    	jmp    *0x804ba8c
 8048f86:	68 70 00 00 00       	push   $0x70
 8048f8b:	e9 00 ff ff ff       	jmp    8048e90 <_init+0x30>

08048f90 <select@plt>:
 8048f90:	ff 25 90 ba 04 08    	jmp    *0x804ba90
 8048f96:	68 78 00 00 00       	push   $0x78
 8048f9b:	e9 f0 fe ff ff       	jmp    8048e90 <_init+0x30>

08048fa0 <strerror@plt>:
 8048fa0:	ff 25 94 ba 04 08    	jmp    *0x804ba94
 8048fa6:	68 80 00 00 00       	push   $0x80
 8048fab:	e9 e0 fe ff ff       	jmp    8048e90 <_init+0x30>

08048fb0 <pthread_cancel@plt>:
 8048fb0:	ff 25 98 ba 04 08    	jmp    *0x804ba98
 8048fb6:	68 88 00 00 00       	push   $0x88
 8048fbb:	e9 d0 fe ff ff       	jmp    8048e90 <_init+0x30>

08048fc0 <mmap@plt>:
 8048fc0:	ff 25 9c ba 04 08    	jmp    *0x804ba9c
 8048fc6:	68 90 00 00 00       	push   $0x90
 8048fcb:	e9 c0 fe ff ff       	jmp    8048e90 <_init+0x30>

08048fd0 <execve@plt>:
 8048fd0:	ff 25 a0 ba 04 08    	jmp    *0x804baa0
 8048fd6:	68 98 00 00 00       	push   $0x98
 8048fdb:	e9 b0 fe ff ff       	jmp    8048e90 <_init+0x30>

08048fe0 <bcopy@plt>:
 8048fe0:	ff 25 a4 ba 04 08    	jmp    *0x804baa4
 8048fe6:	68 a0 00 00 00       	push   $0xa0
 8048feb:	e9 a0 fe ff ff       	jmp    8048e90 <_init+0x30>

08048ff0 <__errno_location@plt>:
 8048ff0:	ff 25 a8 ba 04 08    	jmp    *0x804baa8
 8048ff6:	68 a8 00 00 00       	push   $0xa8
 8048ffb:	e9 90 fe ff ff       	jmp    8048e90 <_init+0x30>

08049000 <accept@plt>:
 8049000:	ff 25 ac ba 04 08    	jmp    *0x804baac
 8049006:	68 b0 00 00 00       	push   $0xb0
 804900b:	e9 80 fe ff ff       	jmp    8048e90 <_init+0x30>

08049010 <gethostbyaddr@plt>:
 8049010:	ff 25 b0 ba 04 08    	jmp    *0x804bab0
 8049016:	68 b8 00 00 00       	push   $0xb8
 804901b:	e9 70 fe ff ff       	jmp    8048e90 <_init+0x30>

08049020 <listen@plt>:
 8049020:	ff 25 b4 ba 04 08    	jmp    *0x804bab4
 8049026:	68 c0 00 00 00       	push   $0xc0
 804902b:	e9 60 fe ff ff       	jmp    8048e90 <_init+0x30>

08049030 <malloc@plt>:
 8049030:	ff 25 b8 ba 04 08    	jmp    *0x804bab8
 8049036:	68 c8 00 00 00       	push   $0xc8
 804903b:	e9 50 fe ff ff       	jmp    8048e90 <_init+0x30>

08049040 <munmap@plt>:
 8049040:	ff 25 bc ba 04 08    	jmp    *0x804babc
 8049046:	68 d0 00 00 00       	push   $0xd0
 804904b:	e9 40 fe ff ff       	jmp    8048e90 <_init+0x30>

08049050 <fread@plt>:
 8049050:	ff 25 c0 ba 04 08    	jmp    *0x804bac0
 8049056:	68 d8 00 00 00       	push   $0xd8
 804905b:	e9 30 fe ff ff       	jmp    8048e90 <_init+0x30>

08049060 <__deregister_frame_info@plt>:
 8049060:	ff 25 c4 ba 04 08    	jmp    *0x804bac4
 8049066:	68 e0 00 00 00       	push   $0xe0
 804906b:	e9 20 fe ff ff       	jmp    8048e90 <_init+0x30>

08049070 <__h_errno_location@plt>:
 8049070:	ff 25 c8 ba 04 08    	jmp    *0x804bac8
 8049076:	68 e8 00 00 00       	push   $0xe8
 804907b:	e9 10 fe ff ff       	jmp    8048e90 <_init+0x30>

08049080 <sem_post@plt>:
 8049080:	ff 25 cc ba 04 08    	jmp    *0x804bacc
 8049086:	68 f0 00 00 00       	push   $0xf0
 804908b:	e9 00 fe ff ff       	jmp    8048e90 <_init+0x30>

08049090 <__sigsetjmp@plt>:
 8049090:	ff 25 d0 ba 04 08    	jmp    *0x804bad0
 8049096:	68 f8 00 00 00       	push   $0xf8
 804909b:	e9 f0 fd ff ff       	jmp    8048e90 <_init+0x30>

080490a0 <__xstat@plt>:
 80490a0:	ff 25 d4 ba 04 08    	jmp    *0x804bad4
 80490a6:	68 00 01 00 00       	push   $0x100
 80490ab:	e9 e0 fd ff ff       	jmp    8048e90 <_init+0x30>

080490b0 <setsockopt@plt>:
 80490b0:	ff 25 d8 ba 04 08    	jmp    *0x804bad8
 80490b6:	68 08 01 00 00       	push   $0x108
 80490bb:	e9 d0 fd ff ff       	jmp    8048e90 <_init+0x30>

080490c0 <pthread_once@plt>:
 80490c0:	ff 25 dc ba 04 08    	jmp    *0x804badc
 80490c6:	68 10 01 00 00       	push   $0x110
 80490cb:	e9 c0 fd ff ff       	jmp    8048e90 <_init+0x30>

080490d0 <waitpid@plt>:
 80490d0:	ff 25 e0 ba 04 08    	jmp    *0x804bae0
 80490d6:	68 18 01 00 00       	push   $0x118
 80490db:	e9 b0 fd ff ff       	jmp    8048e90 <_init+0x30>

080490e0 <fgets@plt>:
 80490e0:	ff 25 e4 ba 04 08    	jmp    *0x804bae4
 80490e6:	68 20 01 00 00       	push   $0x120
 80490eb:	e9 a0 fd ff ff       	jmp    8048e90 <_init+0x30>

080490f0 <__fxstat@plt>:
 80490f0:	ff 25 e8 ba 04 08    	jmp    *0x804bae8
 80490f6:	68 28 01 00 00       	push   $0x128
 80490fb:	e9 90 fd ff ff       	jmp    8048e90 <_init+0x30>

08049100 <fputs@plt>:
 8049100:	ff 25 ec ba 04 08    	jmp    *0x804baec
 8049106:	68 30 01 00 00       	push   $0x130
 804910b:	e9 80 fd ff ff       	jmp    8048e90 <_init+0x30>

08049110 <longjmp@plt>:
 8049110:	ff 25 f0 ba 04 08    	jmp    *0x804baf0
 8049116:	68 38 01 00 00       	push   $0x138
 804911b:	e9 70 fd ff ff       	jmp    8048e90 <_init+0x30>

08049120 <sleep@plt>:
 8049120:	ff 25 f4 ba 04 08    	jmp    *0x804baf4
 8049126:	68 40 01 00 00       	push   $0x140
 804912b:	e9 60 fd ff ff       	jmp    8048e90 <_init+0x30>

08049130 <sigaddset@plt>:
 8049130:	ff 25 f8 ba 04 08    	jmp    *0x804baf8
 8049136:	68 48 01 00 00       	push   $0x148
 804913b:	e9 50 fd ff ff       	jmp    8048e90 <_init+0x30>

08049140 <sigprocmask@plt>:
 8049140:	ff 25 fc ba 04 08    	jmp    *0x804bafc
 8049146:	68 50 01 00 00       	push   $0x150
 804914b:	e9 40 fd ff ff       	jmp    8048e90 <_init+0x30>

08049150 <pause@plt>:
 8049150:	ff 25 00 bb 04 08    	jmp    *0x804bb00
 8049156:	68 58 01 00 00       	push   $0x158
 804915b:	e9 30 fd ff ff       	jmp    8048e90 <_init+0x30>

08049160 <pthread_self@plt>:
 8049160:	ff 25 04 bb 04 08    	jmp    *0x804bb04
 8049166:	68 60 01 00 00       	push   $0x160
 804916b:	e9 20 fd ff ff       	jmp    8048e90 <_init+0x30>

08049170 <setpgid@plt>:
 8049170:	ff 25 08 bb 04 08    	jmp    *0x804bb08
 8049176:	68 68 01 00 00       	push   $0x168
 804917b:	e9 10 fd ff ff       	jmp    8048e90 <_init+0x30>

08049180 <__libc_start_main@plt>:
 8049180:	ff 25 0c bb 04 08    	jmp    *0x804bb0c
 8049186:	68 70 01 00 00       	push   $0x170
 804918b:	e9 00 fd ff ff       	jmp    8048e90 <_init+0x30>

08049190 <dup2@plt>:
 8049190:	ff 25 10 bb 04 08    	jmp    *0x804bb10
 8049196:	68 78 01 00 00       	push   $0x178
 804919b:	e9 f0 fc ff ff       	jmp    8048e90 <_init+0x30>

080491a0 <realloc@plt>:
 80491a0:	ff 25 14 bb 04 08    	jmp    *0x804bb14
 80491a6:	68 80 01 00 00       	push   $0x180
 80491ab:	e9 e0 fc ff ff       	jmp    8048e90 <_init+0x30>

080491b0 <printf@plt>:
 80491b0:	ff 25 18 bb 04 08    	jmp    *0x804bb18
 80491b6:	68 88 01 00 00       	push   $0x188
 80491bb:	e9 d0 fc ff ff       	jmp    8048e90 <_init+0x30>

080491c0 <bind@plt>:
 80491c0:	ff 25 1c bb 04 08    	jmp    *0x804bb1c
 80491c6:	68 90 01 00 00       	push   $0x190
 80491cb:	e9 c0 fc ff ff       	jmp    8048e90 <_init+0x30>

080491d0 <lseek@plt>:
 80491d0:	ff 25 20 bb 04 08    	jmp    *0x804bb20
 80491d6:	68 98 01 00 00       	push   $0x198
 80491db:	e9 b0 fc ff ff       	jmp    8048e90 <_init+0x30>

080491e0 <memcpy@plt>:
 80491e0:	ff 25 24 bb 04 08    	jmp    *0x804bb24
 80491e6:	68 a0 01 00 00       	push   $0x1a0
 80491eb:	e9 a0 fc ff ff       	jmp    8048e90 <_init+0x30>

080491f0 <fclose@plt>:
 80491f0:	ff 25 28 bb 04 08    	jmp    *0x804bb28
 80491f6:	68 a8 01 00 00       	push   $0x1a8
 80491fb:	e9 90 fc ff ff       	jmp    8048e90 <_init+0x30>

08049200 <open@plt>:
 8049200:	ff 25 2c bb 04 08    	jmp    *0x804bb2c
 8049206:	68 b0 01 00 00       	push   $0x1b0
 804920b:	e9 80 fc ff ff       	jmp    8048e90 <_init+0x30>

08049210 <gethostbyname@plt>:
 8049210:	ff 25 30 bb 04 08    	jmp    *0x804bb30
 8049216:	68 b8 01 00 00       	push   $0x1b8
 804921b:	e9 70 fc ff ff       	jmp    8048e90 <_init+0x30>

08049220 <sigemptyset@plt>:
 8049220:	ff 25 34 bb 04 08    	jmp    *0x804bb34
 8049226:	68 c0 01 00 00       	push   $0x1c0
 804922b:	e9 60 fc ff ff       	jmp    8048e90 <_init+0x30>

08049230 <pthread_join@plt>:
 8049230:	ff 25 38 bb 04 08    	jmp    *0x804bb38
 8049236:	68 c8 01 00 00       	push   $0x1c8
 804923b:	e9 50 fc ff ff       	jmp    8048e90 <_init+0x30>

08049240 <bzero@plt>:
 8049240:	ff 25 3c bb 04 08    	jmp    *0x804bb3c
 8049246:	68 d0 01 00 00       	push   $0x1d0
 804924b:	e9 40 fc ff ff       	jmp    8048e90 <_init+0x30>

08049250 <pthread_exit@plt>:
 8049250:	ff 25 40 bb 04 08    	jmp    *0x804bb40
 8049256:	68 d8 01 00 00       	push   $0x1d8
 804925b:	e9 30 fc ff ff       	jmp    8048e90 <_init+0x30>

08049260 <exit@plt>:
 8049260:	ff 25 44 bb 04 08    	jmp    *0x804bb44
 8049266:	68 e0 01 00 00       	push   $0x1e0
 804926b:	e9 20 fc ff ff       	jmp    8048e90 <_init+0x30>

08049270 <calloc@plt>:
 8049270:	ff 25 48 bb 04 08    	jmp    *0x804bb48
 8049276:	68 e8 01 00 00       	push   $0x1e8
 804927b:	e9 10 fc ff ff       	jmp    8048e90 <_init+0x30>

08049280 <free@plt>:
 8049280:	ff 25 4c bb 04 08    	jmp    *0x804bb4c
 8049286:	68 f0 01 00 00       	push   $0x1f0
 804928b:	e9 00 fc ff ff       	jmp    8048e90 <_init+0x30>

08049290 <connect@plt>:
 8049290:	ff 25 50 bb 04 08    	jmp    *0x804bb50
 8049296:	68 f8 01 00 00       	push   $0x1f8
 804929b:	e9 f0 fb ff ff       	jmp    8048e90 <_init+0x30>

080492a0 <fopen@plt>:
 80492a0:	ff 25 54 bb 04 08    	jmp    *0x804bb54
 80492a6:	68 00 02 00 00       	push   $0x200
 80492ab:	e9 e0 fb ff ff       	jmp    8048e90 <_init+0x30>

080492b0 <kill@plt>:
 80492b0:	ff 25 58 bb 04 08    	jmp    *0x804bb58
 80492b6:	68 08 02 00 00       	push   $0x208
 80492bb:	e9 d0 fb ff ff       	jmp    8048e90 <_init+0x30>

080492c0 <fwrite@plt>:
 80492c0:	ff 25 5c bb 04 08    	jmp    *0x804bb5c
 80492c6:	68 10 02 00 00       	push   $0x210
 80492cb:	e9 c0 fb ff ff       	jmp    8048e90 <_init+0x30>

080492d0 <socket@plt>:
 80492d0:	ff 25 60 bb 04 08    	jmp    *0x804bb60
 80492d6:	68 18 02 00 00       	push   $0x218
 80492db:	e9 b0 fb ff ff       	jmp    8048e90 <_init+0x30>

080492e0 <sigdelset@plt>:
 80492e0:	ff 25 64 bb 04 08    	jmp    *0x804bb64
 80492e6:	68 20 02 00 00       	push   $0x220
 80492eb:	e9 a0 fb ff ff       	jmp    8048e90 <_init+0x30>

080492f0 <read@plt>:
 80492f0:	ff 25 68 bb 04 08    	jmp    *0x804bb68
 80492f6:	68 28 02 00 00       	push   $0x228
 80492fb:	e9 90 fb ff ff       	jmp    8048e90 <_init+0x30>

08049300 <alarm@plt>:
 8049300:	ff 25 6c bb 04 08    	jmp    *0x804bb6c
 8049306:	68 30 02 00 00       	push   $0x230
 804930b:	e9 80 fb ff ff       	jmp    8048e90 <_init+0x30>

08049310 <wait@plt>:
 8049310:	ff 25 70 bb 04 08    	jmp    *0x804bb70
 8049316:	68 38 02 00 00       	push   $0x238
 804931b:	e9 70 fb ff ff       	jmp    8048e90 <_init+0x30>

08049320 <__gmon_start__@plt>:
 8049320:	ff 25 74 bb 04 08    	jmp    *0x804bb74
 8049326:	68 40 02 00 00       	push   $0x240
 804932b:	e9 60 fb ff ff       	jmp    8048e90 <_init+0x30>
Disassembly of section .text:

08049330 <_start>:
 8049330:	31 ed                	xor    %ebp,%ebp
 8049332:	5e                   	pop    %esi
 8049333:	89 e1                	mov    %esp,%ecx
 8049335:	83 e4 f8             	and    $0xfffffff8,%esp
 8049338:	50                   	push   %eax
 8049339:	54                   	push   %esp
 804933a:	52                   	push   %edx
 804933b:	68 d4 a5 04 08       	push   $0x804a5d4
 8049340:	68 60 8e 04 08       	push   $0x8048e60
 8049345:	51                   	push   %ecx
 8049346:	56                   	push   %esi
 8049347:	68 00 94 04 08       	push   $0x8049400
 804934c:	e8 2f fe ff ff       	call   8049180 <__libc_start_main@plt>
 8049351:	f4                   	hlt    
 8049352:	90                   	nop    
 8049353:	90                   	nop    

08049354 <gcc2_compiled.>:
 8049354:	90 90 90 90 90 90 90 90 90 90 90 90                 ............

08049360 <__do_global_dtors_aux>:
 8049360:	55                   	push   %ebp
 8049361:	89 e5                	mov    %esp,%ebp
 8049363:	83 ec 08             	sub    $0x8,%esp
 8049366:	83 3d 28 ba 04 08 00 	cmpl   $0x0,0x804ba28
 804936d:	75 3e                	jne    80493ad <__do_global_dtors_aux+0x4d>
 804936f:	eb 12                	jmp    8049383 <__do_global_dtors_aux+0x23>
 8049371:	a1 24 ba 04 08       	mov    0x804ba24,%eax
 8049376:	8d 50 04             	lea    0x4(%eax),%edx
 8049379:	89 15 24 ba 04 08    	mov    %edx,0x804ba24
 804937f:	8b 00                	mov    (%eax),%eax
 8049381:	ff d0                	call   *%eax
 8049383:	a1 24 ba 04 08       	mov    0x804ba24,%eax
 8049388:	83 38 00             	cmpl   $0x0,(%eax)
 804938b:	75 e4                	jne    8049371 <__do_global_dtors_aux+0x11>
 804938d:	b8 60 90 04 08       	mov    $0x8049060,%eax
 8049392:	85 c0                	test   %eax,%eax
 8049394:	74 0d                	je     80493a3 <__do_global_dtors_aux+0x43>
 8049396:	83 c4 f4             	add    $0xfffffff4,%esp
 8049399:	68 34 ba 04 08       	push   $0x804ba34
 804939e:	e8 bd fc ff ff       	call   8049060 <__deregister_frame_info@plt>
 80493a3:	c7 05 28 ba 04 08 01 	movl   $0x1,0x804ba28
 80493aa:	00 00 00 
 80493ad:	89 ec                	mov    %ebp,%esp
 80493af:	5d                   	pop    %ebp
 80493b0:	c3                   	ret    
 80493b1:	8d 76 00             	lea    0x0(%esi),%esi

080493b4 <fini_dummy>:
 80493b4:	55                   	push   %ebp
 80493b5:	89 e5                	mov    %esp,%ebp
 80493b7:	83 ec 08             	sub    $0x8,%esp
 80493ba:	89 ec                	mov    %ebp,%esp
 80493bc:	5d                   	pop    %ebp
 80493bd:	c3                   	ret    
 80493be:	89 f6                	mov    %esi,%esi

080493c0 <frame_dummy>:
 80493c0:	55                   	push   %ebp
 80493c1:	89 e5                	mov    %esp,%ebp
 80493c3:	83 ec 08             	sub    $0x8,%esp
 80493c6:	b8 20 8f 04 08       	mov    $0x8048f20,%eax
 80493cb:	85 c0                	test   %eax,%eax
 80493cd:	74 12                	je     80493e1 <frame_dummy+0x21>
 80493cf:	83 c4 f8             	add    $0xfffffff8,%esp
 80493d2:	68 44 bc 04 08       	push   $0x804bc44
 80493d7:	68 34 ba 04 08       	push   $0x804ba34
 80493dc:	e8 3f fb ff ff       	call   8048f20 <__register_frame_info@plt>
 80493e1:	89 ec                	mov    %ebp,%esp
 80493e3:	5d                   	pop    %ebp
 80493e4:	c3                   	ret    
 80493e5:	8d 76 00             	lea    0x0(%esi),%esi

080493e8 <init_dummy>:
 80493e8:	55                   	push   %ebp
 80493e9:	89 e5                	mov    %esp,%ebp
 80493eb:	83 ec 08             	sub    $0x8,%esp
 80493ee:	89 ec                	mov    %ebp,%esp
 80493f0:	5d                   	pop    %ebp
 80493f1:	c3                   	ret    
 80493f2:	90                   	nop    
 80493f3:	90                   	nop    
 80493f4:	90                   	nop    
 80493f5:	90                   	nop    
 80493f6:	90                   	nop    
 80493f7:	90                   	nop    
 80493f8:	90                   	nop    
 80493f9:	90                   	nop    
 80493fa:	90                   	nop    
 80493fb:	90                   	nop    
 80493fc:	90                   	nop    
 80493fd:	90                   	nop    
 80493fe:	90                   	nop    
 80493ff:	90                   	nop    

08049400 <main>:
 8049400:	55                   	push   %ebp
 8049401:	89 e5                	mov    %esp,%ebp
 8049403:	83 ec 08             	sub    $0x8,%esp
 8049406:	83 c4 f8             	add    $0xfffffff8,%esp
 8049409:	6a 00                	push   $0x0
 804940b:	68 60 bc 04 08       	push   $0x804bc60
 8049410:	e8 7b fc ff ff       	call   8049090 <__sigsetjmp@plt>
 8049415:	83 c4 10             	add    $0x10,%esp
 8049418:	85 c0                	test   %eax,%eax
 804941a:	75 07                	jne    8049423 <main+0x23>
 804941c:	e8 3b 00 00 00       	call   804945c <foo>
 8049421:	eb 2e                	jmp    8049451 <main+0x51>
 8049423:	83 f8 01             	cmp    $0x1,%eax
 8049426:	75 0a                	jne    8049432 <main+0x32>
 8049428:	83 c4 f4             	add    $0xfffffff4,%esp
 804942b:	68 20 a6 04 08       	push   $0x804a620
 8049430:	eb 17                	jmp    8049449 <main+0x49>
 8049432:	83 f8 02             	cmp    $0x2,%eax
 8049435:	75 0a                	jne    8049441 <main+0x41>
 8049437:	83 c4 f4             	add    $0xfffffff4,%esp
 804943a:	68 60 a6 04 08       	push   $0x804a660
 804943f:	eb 08                	jmp    8049449 <main+0x49>
 8049441:	83 c4 f4             	add    $0xfffffff4,%esp
 8049444:	68 a0 a6 04 08       	push   $0x804a6a0
 8049449:	e8 62 fd ff ff       	call   80491b0 <printf@plt>
 804944e:	83 c4 10             	add    $0x10,%esp
 8049451:	83 c4 f4             	add    $0xfffffff4,%esp
 8049454:	6a 00                	push   $0x0
 8049456:	e8 05 fe ff ff       	call   8049260 <exit@plt>
 804945b:	90                   	nop    

0804945c <foo>:
 804945c:	55                   	push   %ebp
 804945d:	89 e5                	mov    %esp,%ebp
 804945f:	83 ec 08             	sub    $0x8,%esp
 8049462:	83 3d 2c ba 04 08 00 	cmpl   $0x0,0x804ba2c
 8049469:	74 15                	je     8049480 <foo+0x24>
 804946b:	83 c4 f8             	add    $0xfffffff8,%esp
 804946e:	6a 01                	push   $0x1
 8049470:	68 60 bc 04 08       	push   $0x804bc60
 8049475:	e8 96 fc ff ff       	call   8049110 <longjmp@plt>
 804947a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049480:	e8 07 00 00 00       	call   804948c <bar>
 8049485:	89 ec                	mov    %ebp,%esp
 8049487:	5d                   	pop    %ebp
 8049488:	c3                   	ret    
 8049489:	8d 76 00             	lea    0x0(%esi),%esi

0804948c <bar>:
 804948c:	55                   	push   %ebp
 804948d:	89 e5                	mov    %esp,%ebp
 804948f:	83 ec 08             	sub    $0x8,%esp
 8049492:	83 3d 30 ba 04 08 00 	cmpl   $0x0,0x804ba30
 8049499:	74 15                	je     80494b0 <bar+0x24>
 804949b:	83 c4 f8             	add    $0xfffffff8,%esp
 804949e:	6a 02                	push   $0x2
 80494a0:	68 60 bc 04 08       	push   $0x804bc60
 80494a5:	e8 66 fc ff ff       	call   8049110 <longjmp@plt>
 80494aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80494b0:	89 ec                	mov    %ebp,%esp
 80494b2:	5d                   	pop    %ebp
 80494b3:	c3                   	ret    
 80494b4:	90                   	nop    
 80494b5:	90                   	nop    
 80494b6:	90                   	nop    
 80494b7:	90                   	nop    
 80494b8:	90                   	nop    
 80494b9:	90                   	nop    
 80494ba:	90                   	nop    
 80494bb:	90                   	nop    
 80494bc:	90                   	nop    
 80494bd:	90                   	nop    
 80494be:	90                   	nop    
 80494bf:	90                   	nop    

080494c0 <unix_error>:
 80494c0:	55                   	push   %ebp
 80494c1:	89 e5                	mov    %esp,%ebp
 80494c3:	83 ec 14             	sub    $0x14,%esp
 80494c6:	53                   	push   %ebx
 80494c7:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80494ca:	83 c4 f4             	add    $0xfffffff4,%esp
 80494cd:	e8 1e fb ff ff       	call   8048ff0 <__errno_location@plt>
 80494d2:	8b 00                	mov    (%eax),%eax
 80494d4:	50                   	push   %eax
 80494d5:	e8 c6 fa ff ff       	call   8048fa0 <strerror@plt>
 80494da:	50                   	push   %eax
 80494db:	a1 40 bc 04 08       	mov    0x804bc40,%eax
 80494e0:	53                   	push   %ebx
 80494e1:	68 c0 a6 04 08       	push   $0x804a6c0
 80494e6:	50                   	push   %eax
 80494e7:	e8 74 fa ff ff       	call   8048f60 <fprintf@plt>
 80494ec:	83 c4 20             	add    $0x20,%esp
 80494ef:	83 c4 f4             	add    $0xfffffff4,%esp
 80494f2:	6a 00                	push   $0x0
 80494f4:	e8 67 fd ff ff       	call   8049260 <exit@plt>
 80494f9:	8d 76 00             	lea    0x0(%esi),%esi

080494fc <posix_error>:
 80494fc:	55                   	push   %ebp
 80494fd:	89 e5                	mov    %esp,%ebp
 80494ff:	83 ec 14             	sub    $0x14,%esp
 8049502:	53                   	push   %ebx
 8049503:	8b 45 08             	mov    0x8(%ebp),%eax
 8049506:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8049509:	83 c4 f4             	add    $0xfffffff4,%esp
 804950c:	50                   	push   %eax
 804950d:	e8 8e fa ff ff       	call   8048fa0 <strerror@plt>
 8049512:	50                   	push   %eax
 8049513:	a1 40 bc 04 08       	mov    0x804bc40,%eax
 8049518:	53                   	push   %ebx
 8049519:	68 c0 a6 04 08       	push   $0x804a6c0
 804951e:	50                   	push   %eax
 804951f:	e8 3c fa ff ff       	call   8048f60 <fprintf@plt>
 8049524:	83 c4 20             	add    $0x20,%esp
 8049527:	83 c4 f4             	add    $0xfffffff4,%esp
 804952a:	6a 00                	push   $0x0
 804952c:	e8 2f fd ff ff       	call   8049260 <exit@plt>
 8049531:	8d 76 00             	lea    0x0(%esi),%esi

08049534 <dns_error>:
 8049534:	55                   	push   %ebp
 8049535:	89 e5                	mov    %esp,%ebp
 8049537:	83 ec 14             	sub    $0x14,%esp
 804953a:	53                   	push   %ebx
 804953b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804953e:	e8 2d fb ff ff       	call   8049070 <__h_errno_location@plt>
 8049543:	8b 00                	mov    (%eax),%eax
 8049545:	50                   	push   %eax
 8049546:	a1 40 bc 04 08       	mov    0x804bc40,%eax
 804954b:	53                   	push   %ebx
 804954c:	68 c8 a6 04 08       	push   $0x804a6c8
 8049551:	50                   	push   %eax
 8049552:	e8 09 fa ff ff       	call   8048f60 <fprintf@plt>
 8049557:	83 c4 f4             	add    $0xfffffff4,%esp
 804955a:	6a 00                	push   $0x0
 804955c:	e8 ff fc ff ff       	call   8049260 <exit@plt>
 8049561:	8d 76 00             	lea    0x0(%esi),%esi

08049564 <app_error>:
 8049564:	55                   	push   %ebp
 8049565:	89 e5                	mov    %esp,%ebp
 8049567:	83 ec 08             	sub    $0x8,%esp
 804956a:	8b 45 08             	mov    0x8(%ebp),%eax
 804956d:	83 c4 fc             	add    $0xfffffffc,%esp
 8049570:	50                   	push   %eax
 8049571:	a1 40 bc 04 08       	mov    0x804bc40,%eax
 8049576:	68 da a6 04 08       	push   $0x804a6da
 804957b:	50                   	push   %eax
 804957c:	e8 df f9 ff ff       	call   8048f60 <fprintf@plt>
 8049581:	83 c4 f4             	add    $0xfffffff4,%esp
 8049584:	6a 00                	push   $0x0
 8049586:	e8 d5 fc ff ff       	call   8049260 <exit@plt>
 804958b:	90                   	nop    

0804958c <Fork>:
 804958c:	55                   	push   %ebp
 804958d:	89 e5                	mov    %esp,%ebp
 804958f:	83 ec 14             	sub    $0x14,%esp
 8049592:	53                   	push   %ebx
 8049593:	e8 d8 f9 ff ff       	call   8048f70 <fork@plt>
 8049598:	89 c3                	mov    %eax,%ebx
 804959a:	85 db                	test   %ebx,%ebx
 804959c:	7d 0d                	jge    80495ab <Fork+0x1f>
 804959e:	83 c4 f4             	add    $0xfffffff4,%esp
 80495a1:	68 de a6 04 08       	push   $0x804a6de
 80495a6:	e8 15 ff ff ff       	call   80494c0 <unix_error>
 80495ab:	89 d8                	mov    %ebx,%eax
 80495ad:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 80495b0:	89 ec                	mov    %ebp,%esp
 80495b2:	5d                   	pop    %ebp
 80495b3:	c3                   	ret    

080495b4 <Execve>:
 80495b4:	55                   	push   %ebp
 80495b5:	89 e5                	mov    %esp,%ebp
 80495b7:	83 ec 08             	sub    $0x8,%esp
 80495ba:	8b 4d 08             	mov    0x8(%ebp),%ecx
 80495bd:	8b 55 0c             	mov    0xc(%ebp),%edx
 80495c0:	8b 45 10             	mov    0x10(%ebp),%eax
 80495c3:	83 c4 fc             	add    $0xfffffffc,%esp
 80495c6:	50                   	push   %eax
 80495c7:	52                   	push   %edx
 80495c8:	51                   	push   %ecx
 80495c9:	e8 02 fa ff ff       	call   8048fd0 <execve@plt>
 80495ce:	83 c4 10             	add    $0x10,%esp
 80495d1:	85 c0                	test   %eax,%eax
 80495d3:	7d 0d                	jge    80495e2 <Execve+0x2e>
 80495d5:	83 c4 f4             	add    $0xfffffff4,%esp
 80495d8:	68 e9 a6 04 08       	push   $0x804a6e9
 80495dd:	e8 de fe ff ff       	call   80494c0 <unix_error>
 80495e2:	89 ec                	mov    %ebp,%esp
 80495e4:	5d                   	pop    %ebp
 80495e5:	c3                   	ret    
 80495e6:	89 f6                	mov    %esi,%esi

080495e8 <Wait>:
 80495e8:	55                   	push   %ebp
 80495e9:	89 e5                	mov    %esp,%ebp
 80495eb:	83 ec 14             	sub    $0x14,%esp
 80495ee:	53                   	push   %ebx
 80495ef:	8b 45 08             	mov    0x8(%ebp),%eax
 80495f2:	83 c4 f4             	add    $0xfffffff4,%esp
 80495f5:	50                   	push   %eax
 80495f6:	e8 15 fd ff ff       	call   8049310 <wait@plt>
 80495fb:	89 c3                	mov    %eax,%ebx
 80495fd:	83 c4 10             	add    $0x10,%esp
 8049600:	85 db                	test   %ebx,%ebx
 8049602:	7d 0d                	jge    8049611 <Wait+0x29>
 8049604:	83 c4 f4             	add    $0xfffffff4,%esp
 8049607:	68 f6 a6 04 08       	push   $0x804a6f6
 804960c:	e8 af fe ff ff       	call   80494c0 <unix_error>
 8049611:	89 d8                	mov    %ebx,%eax
 8049613:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049616:	89 ec                	mov    %ebp,%esp
 8049618:	5d                   	pop    %ebp
 8049619:	c3                   	ret    
 804961a:	89 f6                	mov    %esi,%esi

0804961c <Waitpid>:
 804961c:	55                   	push   %ebp
 804961d:	89 e5                	mov    %esp,%ebp
 804961f:	83 ec 14             	sub    $0x14,%esp
 8049622:	53                   	push   %ebx
 8049623:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049626:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049629:	8b 45 10             	mov    0x10(%ebp),%eax
 804962c:	83 c4 fc             	add    $0xfffffffc,%esp
 804962f:	50                   	push   %eax
 8049630:	52                   	push   %edx
 8049631:	51                   	push   %ecx
 8049632:	e8 99 fa ff ff       	call   80490d0 <waitpid@plt>
 8049637:	89 c3                	mov    %eax,%ebx
 8049639:	83 c4 10             	add    $0x10,%esp
 804963c:	85 db                	test   %ebx,%ebx
 804963e:	7d 0d                	jge    804964d <Waitpid+0x31>
 8049640:	83 c4 f4             	add    $0xfffffff4,%esp
 8049643:	68 01 a7 04 08       	push   $0x804a701
 8049648:	e8 73 fe ff ff       	call   80494c0 <unix_error>
 804964d:	89 d8                	mov    %ebx,%eax
 804964f:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049652:	89 ec                	mov    %ebp,%esp
 8049654:	5d                   	pop    %ebp
 8049655:	c3                   	ret    
 8049656:	89 f6                	mov    %esi,%esi

08049658 <Kill>:
 8049658:	55                   	push   %ebp
 8049659:	89 e5                	mov    %esp,%ebp
 804965b:	83 ec 08             	sub    $0x8,%esp
 804965e:	8b 55 08             	mov    0x8(%ebp),%edx
 8049661:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049664:	83 c4 f8             	add    $0xfffffff8,%esp
 8049667:	50                   	push   %eax
 8049668:	52                   	push   %edx
 8049669:	e8 42 fc ff ff       	call   80492b0 <kill@plt>
 804966e:	83 c4 10             	add    $0x10,%esp
 8049671:	85 c0                	test   %eax,%eax
 8049673:	7d 0d                	jge    8049682 <Kill+0x2a>
 8049675:	83 c4 f4             	add    $0xfffffff4,%esp
 8049678:	68 0f a7 04 08       	push   $0x804a70f
 804967d:	e8 3e fe ff ff       	call   80494c0 <unix_error>
 8049682:	89 ec                	mov    %ebp,%esp
 8049684:	5d                   	pop    %ebp
 8049685:	c3                   	ret    
 8049686:	89 f6                	mov    %esi,%esi

08049688 <Pause>:
 8049688:	55                   	push   %ebp
 8049689:	89 e5                	mov    %esp,%ebp
 804968b:	83 ec 08             	sub    $0x8,%esp
 804968e:	e8 bd fa ff ff       	call   8049150 <pause@plt>
 8049693:	89 ec                	mov    %ebp,%esp
 8049695:	5d                   	pop    %ebp
 8049696:	c3                   	ret    
 8049697:	90                   	nop    

08049698 <Sleep>:
 8049698:	55                   	push   %ebp
 8049699:	89 e5                	mov    %esp,%ebp
 804969b:	83 ec 08             	sub    $0x8,%esp
 804969e:	8b 45 08             	mov    0x8(%ebp),%eax
 80496a1:	83 c4 f4             	add    $0xfffffff4,%esp
 80496a4:	50                   	push   %eax
 80496a5:	e8 76 fa ff ff       	call   8049120 <sleep@plt>
 80496aa:	89 ec                	mov    %ebp,%esp
 80496ac:	5d                   	pop    %ebp
 80496ad:	c3                   	ret    
 80496ae:	89 f6                	mov    %esi,%esi

080496b0 <Alarm>:
 80496b0:	55                   	push   %ebp
 80496b1:	89 e5                	mov    %esp,%ebp
 80496b3:	83 ec 08             	sub    $0x8,%esp
 80496b6:	8b 45 08             	mov    0x8(%ebp),%eax
 80496b9:	83 c4 f4             	add    $0xfffffff4,%esp
 80496bc:	50                   	push   %eax
 80496bd:	e8 3e fc ff ff       	call   8049300 <alarm@plt>
 80496c2:	89 ec                	mov    %ebp,%esp
 80496c4:	5d                   	pop    %ebp
 80496c5:	c3                   	ret    
 80496c6:	89 f6                	mov    %esi,%esi

080496c8 <Setpgid>:
 80496c8:	55                   	push   %ebp
 80496c9:	89 e5                	mov    %esp,%ebp
 80496cb:	83 ec 08             	sub    $0x8,%esp
 80496ce:	8b 55 08             	mov    0x8(%ebp),%edx
 80496d1:	8b 45 0c             	mov    0xc(%ebp),%eax
 80496d4:	83 c4 f8             	add    $0xfffffff8,%esp
 80496d7:	50                   	push   %eax
 80496d8:	52                   	push   %edx
 80496d9:	e8 92 fa ff ff       	call   8049170 <setpgid@plt>
 80496de:	83 c4 10             	add    $0x10,%esp
 80496e1:	85 c0                	test   %eax,%eax
 80496e3:	7d 0d                	jge    80496f2 <Setpgid+0x2a>
 80496e5:	83 c4 f4             	add    $0xfffffff4,%esp
 80496e8:	68 26 a7 04 08       	push   $0x804a726
 80496ed:	e8 ce fd ff ff       	call   80494c0 <unix_error>
 80496f2:	89 ec                	mov    %ebp,%esp
 80496f4:	5d                   	pop    %ebp
 80496f5:	c3                   	ret    
 80496f6:	89 f6                	mov    %esi,%esi

080496f8 <Getpgrp>:
 80496f8:	55                   	push   %ebp
 80496f9:	89 e5                	mov    %esp,%ebp
 80496fb:	83 ec 08             	sub    $0x8,%esp
 80496fe:	e8 0d f8 ff ff       	call   8048f10 <getpgrp@plt>
 8049703:	89 ec                	mov    %ebp,%esp
 8049705:	5d                   	pop    %ebp
 8049706:	c3                   	ret    
 8049707:	90                   	nop    

08049708 <Signal>:
 8049708:	55                   	push   %ebp
 8049709:	89 e5                	mov    %esp,%ebp
 804970b:	81 ec 20 01 00 00    	sub    $0x120,%esp
 8049711:	56                   	push   %esi
 8049712:	53                   	push   %ebx
 8049713:	8b 75 08             	mov    0x8(%ebp),%esi
 8049716:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049719:	89 85 74 ff ff ff    	mov    %eax,0xffffff74(%ebp)
 804971f:	83 c4 f4             	add    $0xfffffff4,%esp
 8049722:	8d 9d 74 ff ff ff    	lea    0xffffff74(%ebp),%ebx
 8049728:	8d 85 78 ff ff ff    	lea    0xffffff78(%ebp),%eax
 804972e:	50                   	push   %eax
 804972f:	e8 ec fa ff ff       	call   8049220 <sigemptyset@plt>
 8049734:	c7 45 f8 00 00 00 10 	movl   $0x10000000,0xfffffff8(%ebp)
 804973b:	83 c4 fc             	add    $0xfffffffc,%esp
 804973e:	8d 85 e8 fe ff ff    	lea    0xfffffee8(%ebp),%eax
 8049744:	50                   	push   %eax
 8049745:	53                   	push   %ebx
 8049746:	56                   	push   %esi
 8049747:	e8 94 f7 ff ff       	call   8048ee0 <sigaction@plt>
 804974c:	83 c4 20             	add    $0x20,%esp
 804974f:	85 c0                	test   %eax,%eax
 8049751:	7d 0d                	jge    8049760 <Signal+0x58>
 8049753:	83 c4 f4             	add    $0xfffffff4,%esp
 8049756:	68 34 a7 04 08       	push   $0x804a734
 804975b:	e8 60 fd ff ff       	call   80494c0 <unix_error>
 8049760:	8b 85 e8 fe ff ff    	mov    0xfffffee8(%ebp),%eax
 8049766:	8d a5 d8 fe ff ff    	lea    0xfffffed8(%ebp),%esp
 804976c:	5b                   	pop    %ebx
 804976d:	5e                   	pop    %esi
 804976e:	89 ec                	mov    %ebp,%esp
 8049770:	5d                   	pop    %ebp
 8049771:	c3                   	ret    
 8049772:	89 f6                	mov    %esi,%esi

08049774 <Sigprocmask>:
 8049774:	55                   	push   %ebp
 8049775:	89 e5                	mov    %esp,%ebp
 8049777:	83 ec 08             	sub    $0x8,%esp
 804977a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804977d:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049780:	8b 45 10             	mov    0x10(%ebp),%eax
 8049783:	83 c4 fc             	add    $0xfffffffc,%esp
 8049786:	50                   	push   %eax
 8049787:	52                   	push   %edx
 8049788:	51                   	push   %ecx
 8049789:	e8 b2 f9 ff ff       	call   8049140 <sigprocmask@plt>
 804978e:	83 c4 10             	add    $0x10,%esp
 8049791:	85 c0                	test   %eax,%eax
 8049793:	7d 0d                	jge    80497a2 <Sigprocmask+0x2e>
 8049795:	83 c4 f4             	add    $0xfffffff4,%esp
 8049798:	68 41 a7 04 08       	push   $0x804a741
 804979d:	e8 1e fd ff ff       	call   80494c0 <unix_error>
 80497a2:	89 ec                	mov    %ebp,%esp
 80497a4:	5d                   	pop    %ebp
 80497a5:	c3                   	ret    
 80497a6:	89 f6                	mov    %esi,%esi

080497a8 <Sigemptyset>:
 80497a8:	55                   	push   %ebp
 80497a9:	89 e5                	mov    %esp,%ebp
 80497ab:	83 ec 08             	sub    $0x8,%esp
 80497ae:	8b 45 08             	mov    0x8(%ebp),%eax
 80497b1:	83 c4 f4             	add    $0xfffffff4,%esp
 80497b4:	50                   	push   %eax
 80497b5:	e8 66 fa ff ff       	call   8049220 <sigemptyset@plt>
 80497ba:	83 c4 10             	add    $0x10,%esp
 80497bd:	85 c0                	test   %eax,%eax
 80497bf:	7d 0d                	jge    80497ce <Sigemptyset+0x26>
 80497c1:	83 c4 f4             	add    $0xfffffff4,%esp
 80497c4:	68 53 a7 04 08       	push   $0x804a753
 80497c9:	e8 f2 fc ff ff       	call   80494c0 <unix_error>
 80497ce:	89 ec                	mov    %ebp,%esp
 80497d0:	5d                   	pop    %ebp
 80497d1:	c3                   	ret    
 80497d2:	89 f6                	mov    %esi,%esi

080497d4 <Sigfillset>:
 80497d4:	55                   	push   %ebp
 80497d5:	89 e5                	mov    %esp,%ebp
 80497d7:	83 ec 08             	sub    $0x8,%esp
 80497da:	8b 45 08             	mov    0x8(%ebp),%eax
 80497dd:	83 c4 f4             	add    $0xfffffff4,%esp
 80497e0:	50                   	push   %eax
 80497e1:	e8 ca f6 ff ff       	call   8048eb0 <sigfillset@plt>
 80497e6:	83 c4 10             	add    $0x10,%esp
 80497e9:	85 c0                	test   %eax,%eax
 80497eb:	7d 0d                	jge    80497fa <Sigfillset+0x26>
 80497ed:	83 c4 f4             	add    $0xfffffff4,%esp
 80497f0:	68 65 a7 04 08       	push   $0x804a765
 80497f5:	e8 c6 fc ff ff       	call   80494c0 <unix_error>
 80497fa:	89 ec                	mov    %ebp,%esp
 80497fc:	5d                   	pop    %ebp
 80497fd:	c3                   	ret    
 80497fe:	89 f6                	mov    %esi,%esi

08049800 <Sigaddset>:
 8049800:	55                   	push   %ebp
 8049801:	89 e5                	mov    %esp,%ebp
 8049803:	83 ec 08             	sub    $0x8,%esp
 8049806:	8b 55 08             	mov    0x8(%ebp),%edx
 8049809:	8b 45 0c             	mov    0xc(%ebp),%eax
 804980c:	83 c4 f8             	add    $0xfffffff8,%esp
 804980f:	50                   	push   %eax
 8049810:	52                   	push   %edx
 8049811:	e8 1a f9 ff ff       	call   8049130 <sigaddset@plt>
 8049816:	83 c4 10             	add    $0x10,%esp
 8049819:	85 c0                	test   %eax,%eax
 804981b:	7d 0d                	jge    804982a <Sigaddset+0x2a>
 804981d:	83 c4 f4             	add    $0xfffffff4,%esp
 8049820:	68 76 a7 04 08       	push   $0x804a776
 8049825:	e8 96 fc ff ff       	call   80494c0 <unix_error>
 804982a:	89 ec                	mov    %ebp,%esp
 804982c:	5d                   	pop    %ebp
 804982d:	c3                   	ret    
 804982e:	89 f6                	mov    %esi,%esi

08049830 <Sigdelset>:
 8049830:	55                   	push   %ebp
 8049831:	89 e5                	mov    %esp,%ebp
 8049833:	83 ec 08             	sub    $0x8,%esp
 8049836:	8b 55 08             	mov    0x8(%ebp),%edx
 8049839:	8b 45 0c             	mov    0xc(%ebp),%eax
 804983c:	83 c4 f8             	add    $0xfffffff8,%esp
 804983f:	50                   	push   %eax
 8049840:	52                   	push   %edx
 8049841:	e8 9a fa ff ff       	call   80492e0 <sigdelset@plt>
 8049846:	83 c4 10             	add    $0x10,%esp
 8049849:	85 c0                	test   %eax,%eax
 804984b:	7d 0d                	jge    804985a <Sigdelset+0x2a>
 804984d:	83 c4 f4             	add    $0xfffffff4,%esp
 8049850:	68 86 a7 04 08       	push   $0x804a786
 8049855:	e8 66 fc ff ff       	call   80494c0 <unix_error>
 804985a:	89 ec                	mov    %ebp,%esp
 804985c:	5d                   	pop    %ebp
 804985d:	c3                   	ret    
 804985e:	89 f6                	mov    %esi,%esi

08049860 <Sigismember>:
 8049860:	55                   	push   %ebp
 8049861:	89 e5                	mov    %esp,%ebp
 8049863:	83 ec 14             	sub    $0x14,%esp
 8049866:	53                   	push   %ebx
 8049867:	8b 55 08             	mov    0x8(%ebp),%edx
 804986a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804986d:	83 c4 f8             	add    $0xfffffff8,%esp
 8049870:	50                   	push   %eax
 8049871:	52                   	push   %edx
 8049872:	e8 79 f6 ff ff       	call   8048ef0 <sigismember@plt>
 8049877:	89 c3                	mov    %eax,%ebx
 8049879:	83 c4 10             	add    $0x10,%esp
 804987c:	85 db                	test   %ebx,%ebx
 804987e:	7d 0d                	jge    804988d <Sigismember+0x2d>
 8049880:	83 c4 f4             	add    $0xfffffff4,%esp
 8049883:	68 96 a7 04 08       	push   $0x804a796
 8049888:	e8 33 fc ff ff       	call   80494c0 <unix_error>
 804988d:	89 d8                	mov    %ebx,%eax
 804988f:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049892:	89 ec                	mov    %ebp,%esp
 8049894:	5d                   	pop    %ebp
 8049895:	c3                   	ret    
 8049896:	89 f6                	mov    %esi,%esi

08049898 <Open>:
 8049898:	55                   	push   %ebp
 8049899:	89 e5                	mov    %esp,%ebp
 804989b:	83 ec 14             	sub    $0x14,%esp
 804989e:	53                   	push   %ebx
 804989f:	8b 4d 08             	mov    0x8(%ebp),%ecx
 80498a2:	8b 55 0c             	mov    0xc(%ebp),%edx
 80498a5:	8b 45 10             	mov    0x10(%ebp),%eax
 80498a8:	83 c4 fc             	add    $0xfffffffc,%esp
 80498ab:	50                   	push   %eax
 80498ac:	52                   	push   %edx
 80498ad:	51                   	push   %ecx
 80498ae:	e8 4d f9 ff ff       	call   8049200 <open@plt>
 80498b3:	89 c3                	mov    %eax,%ebx
 80498b5:	83 c4 10             	add    $0x10,%esp
 80498b8:	85 db                	test   %ebx,%ebx
 80498ba:	7d 0d                	jge    80498c9 <Open+0x31>
 80498bc:	83 c4 f4             	add    $0xfffffff4,%esp
 80498bf:	68 a8 a7 04 08       	push   $0x804a7a8
 80498c4:	e8 f7 fb ff ff       	call   80494c0 <unix_error>
 80498c9:	89 d8                	mov    %ebx,%eax
 80498cb:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 80498ce:	89 ec                	mov    %ebp,%esp
 80498d0:	5d                   	pop    %ebp
 80498d1:	c3                   	ret    
 80498d2:	89 f6                	mov    %esi,%esi

080498d4 <Read>:
 80498d4:	55                   	push   %ebp
 80498d5:	89 e5                	mov    %esp,%ebp
 80498d7:	83 ec 14             	sub    $0x14,%esp
 80498da:	53                   	push   %ebx
 80498db:	8b 4d 08             	mov    0x8(%ebp),%ecx
 80498de:	8b 55 0c             	mov    0xc(%ebp),%edx
 80498e1:	8b 45 10             	mov    0x10(%ebp),%eax
 80498e4:	83 c4 fc             	add    $0xfffffffc,%esp
 80498e7:	50                   	push   %eax
 80498e8:	52                   	push   %edx
 80498e9:	51                   	push   %ecx
 80498ea:	e8 01 fa ff ff       	call   80492f0 <read@plt>
 80498ef:	89 c3                	mov    %eax,%ebx
 80498f1:	83 c4 10             	add    $0x10,%esp
 80498f4:	85 db                	test   %ebx,%ebx
 80498f6:	7d 0d                	jge    8049905 <Read+0x31>
 80498f8:	83 c4 f4             	add    $0xfffffff4,%esp
 80498fb:	68 b3 a7 04 08       	push   $0x804a7b3
 8049900:	e8 bb fb ff ff       	call   80494c0 <unix_error>
 8049905:	89 d8                	mov    %ebx,%eax
 8049907:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 804990a:	89 ec                	mov    %ebp,%esp
 804990c:	5d                   	pop    %ebp
 804990d:	c3                   	ret    
 804990e:	89 f6                	mov    %esi,%esi

08049910 <Write>:
 8049910:	55                   	push   %ebp
 8049911:	89 e5                	mov    %esp,%ebp
 8049913:	83 ec 14             	sub    $0x14,%esp
 8049916:	53                   	push   %ebx
 8049917:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804991a:	8b 55 0c             	mov    0xc(%ebp),%edx
 804991d:	8b 45 10             	mov    0x10(%ebp),%eax
 8049920:	83 c4 fc             	add    $0xfffffffc,%esp
 8049923:	50                   	push   %eax
 8049924:	52                   	push   %edx
 8049925:	51                   	push   %ecx
 8049926:	e8 05 f6 ff ff       	call   8048f30 <write@plt>
 804992b:	89 c3                	mov    %eax,%ebx
 804992d:	83 c4 10             	add    $0x10,%esp
 8049930:	85 db                	test   %ebx,%ebx
 8049932:	7d 0d                	jge    8049941 <Write+0x31>
 8049934:	83 c4 f4             	add    $0xfffffff4,%esp
 8049937:	68 be a7 04 08       	push   $0x804a7be
 804993c:	e8 7f fb ff ff       	call   80494c0 <unix_error>
 8049941:	89 d8                	mov    %ebx,%eax
 8049943:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049946:	89 ec                	mov    %ebp,%esp
 8049948:	5d                   	pop    %ebp
 8049949:	c3                   	ret    
 804994a:	89 f6                	mov    %esi,%esi

0804994c <Lseek>:
 804994c:	55                   	push   %ebp
 804994d:	89 e5                	mov    %esp,%ebp
 804994f:	83 ec 14             	sub    $0x14,%esp
 8049952:	53                   	push   %ebx
 8049953:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049956:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049959:	8b 45 10             	mov    0x10(%ebp),%eax
 804995c:	83 c4 fc             	add    $0xfffffffc,%esp
 804995f:	50                   	push   %eax
 8049960:	52                   	push   %edx
 8049961:	51                   	push   %ecx
 8049962:	e8 69 f8 ff ff       	call   80491d0 <lseek@plt>
 8049967:	89 c3                	mov    %eax,%ebx
 8049969:	83 c4 10             	add    $0x10,%esp
 804996c:	85 db                	test   %ebx,%ebx
 804996e:	7d 0d                	jge    804997d <Lseek+0x31>
 8049970:	83 c4 f4             	add    $0xfffffff4,%esp
 8049973:	68 ca a7 04 08       	push   $0x804a7ca
 8049978:	e8 43 fb ff ff       	call   80494c0 <unix_error>
 804997d:	89 d8                	mov    %ebx,%eax
 804997f:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049982:	89 ec                	mov    %ebp,%esp
 8049984:	5d                   	pop    %ebp
 8049985:	c3                   	ret    
 8049986:	89 f6                	mov    %esi,%esi

08049988 <Close>:
 8049988:	55                   	push   %ebp
 8049989:	89 e5                	mov    %esp,%ebp
 804998b:	83 ec 08             	sub    $0x8,%esp
 804998e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049991:	83 c4 f4             	add    $0xfffffff4,%esp
 8049994:	50                   	push   %eax
 8049995:	e8 a6 f5 ff ff       	call   8048f40 <close@plt>
 804999a:	83 c4 10             	add    $0x10,%esp
 804999d:	85 c0                	test   %eax,%eax
 804999f:	7d 0d                	jge    80499ae <Close+0x26>
 80499a1:	83 c4 f4             	add    $0xfffffff4,%esp
 80499a4:	68 d6 a7 04 08       	push   $0x804a7d6
 80499a9:	e8 12 fb ff ff       	call   80494c0 <unix_error>
 80499ae:	89 ec                	mov    %ebp,%esp
 80499b0:	5d                   	pop    %ebp
 80499b1:	c3                   	ret    
 80499b2:	89 f6                	mov    %esi,%esi

080499b4 <Select>:
 80499b4:	55                   	push   %ebp
 80499b5:	89 e5                	mov    %esp,%ebp
 80499b7:	83 ec 10             	sub    $0x10,%esp
 80499ba:	56                   	push   %esi
 80499bb:	53                   	push   %ebx
 80499bc:	8b 75 08             	mov    0x8(%ebp),%esi
 80499bf:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 80499c2:	8b 4d 10             	mov    0x10(%ebp),%ecx
 80499c5:	8b 55 14             	mov    0x14(%ebp),%edx
 80499c8:	8b 45 18             	mov    0x18(%ebp),%eax
 80499cb:	83 c4 f4             	add    $0xfffffff4,%esp
 80499ce:	50                   	push   %eax
 80499cf:	52                   	push   %edx
 80499d0:	51                   	push   %ecx
 80499d1:	53                   	push   %ebx
 80499d2:	56                   	push   %esi
 80499d3:	e8 b8 f5 ff ff       	call   8048f90 <select@plt>
 80499d8:	89 c3                	mov    %eax,%ebx
 80499da:	83 c4 20             	add    $0x20,%esp
 80499dd:	85 db                	test   %ebx,%ebx
 80499df:	7d 0d                	jge    80499ee <Select+0x3a>
 80499e1:	83 c4 f4             	add    $0xfffffff4,%esp
 80499e4:	68 e2 a7 04 08       	push   $0x804a7e2
 80499e9:	e8 d2 fa ff ff       	call   80494c0 <unix_error>
 80499ee:	89 d8                	mov    %ebx,%eax
 80499f0:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 80499f3:	5b                   	pop    %ebx
 80499f4:	5e                   	pop    %esi
 80499f5:	89 ec                	mov    %ebp,%esp
 80499f7:	5d                   	pop    %ebp
 80499f8:	c3                   	ret    
 80499f9:	8d 76 00             	lea    0x0(%esi),%esi

080499fc <Dup2>:
 80499fc:	55                   	push   %ebp
 80499fd:	89 e5                	mov    %esp,%ebp
 80499ff:	83 ec 14             	sub    $0x14,%esp
 8049a02:	53                   	push   %ebx
 8049a03:	8b 55 08             	mov    0x8(%ebp),%edx
 8049a06:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049a09:	83 c4 f8             	add    $0xfffffff8,%esp
 8049a0c:	50                   	push   %eax
 8049a0d:	52                   	push   %edx
 8049a0e:	e8 7d f7 ff ff       	call   8049190 <dup2@plt>
 8049a13:	89 c3                	mov    %eax,%ebx
 8049a15:	83 c4 10             	add    $0x10,%esp
 8049a18:	85 db                	test   %ebx,%ebx
 8049a1a:	7d 0d                	jge    8049a29 <Dup2+0x2d>
 8049a1c:	83 c4 f4             	add    $0xfffffff4,%esp
 8049a1f:	68 ef a7 04 08       	push   $0x804a7ef
 8049a24:	e8 97 fa ff ff       	call   80494c0 <unix_error>
 8049a29:	89 d8                	mov    %ebx,%eax
 8049a2b:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049a2e:	89 ec                	mov    %ebp,%esp
 8049a30:	5d                   	pop    %ebp
 8049a31:	c3                   	ret    
 8049a32:	89 f6                	mov    %esi,%esi

08049a34 <Stat>:
 8049a34:	55                   	push   %ebp
 8049a35:	89 e5                	mov    %esp,%ebp
 8049a37:	83 ec 08             	sub    $0x8,%esp
 8049a3a:	8b 55 08             	mov    0x8(%ebp),%edx
 8049a3d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049a40:	83 c4 fc             	add    $0xfffffffc,%esp
 8049a43:	50                   	push   %eax
 8049a44:	52                   	push   %edx
 8049a45:	6a 03                	push   $0x3
 8049a47:	e8 54 f6 ff ff       	call   80490a0 <__xstat@plt>
 8049a4c:	83 c4 10             	add    $0x10,%esp
 8049a4f:	85 c0                	test   %eax,%eax
 8049a51:	7d 0d                	jge    8049a60 <Stat+0x2c>
 8049a53:	83 c4 f4             	add    $0xfffffff4,%esp
 8049a56:	68 fa a7 04 08       	push   $0x804a7fa
 8049a5b:	e8 60 fa ff ff       	call   80494c0 <unix_error>
 8049a60:	89 ec                	mov    %ebp,%esp
 8049a62:	5d                   	pop    %ebp
 8049a63:	c3                   	ret    

08049a64 <Fstat>:
 8049a64:	55                   	push   %ebp
 8049a65:	89 e5                	mov    %esp,%ebp
 8049a67:	83 ec 08             	sub    $0x8,%esp
 8049a6a:	8b 55 08             	mov    0x8(%ebp),%edx
 8049a6d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049a70:	83 c4 fc             	add    $0xfffffffc,%esp
 8049a73:	50                   	push   %eax
 8049a74:	52                   	push   %edx
 8049a75:	6a 03                	push   $0x3
 8049a77:	e8 74 f6 ff ff       	call   80490f0 <__fxstat@plt>
 8049a7c:	83 c4 10             	add    $0x10,%esp
 8049a7f:	85 c0                	test   %eax,%eax
 8049a81:	7d 0d                	jge    8049a90 <Fstat+0x2c>
 8049a83:	83 c4 f4             	add    $0xfffffff4,%esp
 8049a86:	68 05 a8 04 08       	push   $0x804a805
 8049a8b:	e8 30 fa ff ff       	call   80494c0 <unix_error>
 8049a90:	89 ec                	mov    %ebp,%esp
 8049a92:	5d                   	pop    %ebp
 8049a93:	c3                   	ret    

08049a94 <Mmap>:
 8049a94:	55                   	push   %ebp
 8049a95:	89 e5                	mov    %esp,%ebp
 8049a97:	83 ec 0c             	sub    $0xc,%esp
 8049a9a:	57                   	push   %edi
 8049a9b:	56                   	push   %esi
 8049a9c:	53                   	push   %ebx
 8049a9d:	8b 7d 08             	mov    0x8(%ebp),%edi
 8049aa0:	8b 75 0c             	mov    0xc(%ebp),%esi
 8049aa3:	8b 5d 10             	mov    0x10(%ebp),%ebx
 8049aa6:	8b 4d 14             	mov    0x14(%ebp),%ecx
 8049aa9:	8b 55 18             	mov    0x18(%ebp),%edx
 8049aac:	8b 45 1c             	mov    0x1c(%ebp),%eax
 8049aaf:	83 c4 f8             	add    $0xfffffff8,%esp
 8049ab2:	50                   	push   %eax
 8049ab3:	52                   	push   %edx
 8049ab4:	51                   	push   %ecx
 8049ab5:	53                   	push   %ebx
 8049ab6:	56                   	push   %esi
 8049ab7:	57                   	push   %edi
 8049ab8:	e8 03 f5 ff ff       	call   8048fc0 <mmap@plt>
 8049abd:	89 c3                	mov    %eax,%ebx
 8049abf:	83 c4 20             	add    $0x20,%esp
 8049ac2:	83 fb ff             	cmp    $0xffffffff,%ebx
 8049ac5:	75 0d                	jne    8049ad4 <Mmap+0x40>
 8049ac7:	83 c4 f4             	add    $0xfffffff4,%esp
 8049aca:	68 11 a8 04 08       	push   $0x804a811
 8049acf:	e8 ec f9 ff ff       	call   80494c0 <unix_error>
 8049ad4:	89 d8                	mov    %ebx,%eax
 8049ad6:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 8049ad9:	5b                   	pop    %ebx
 8049ada:	5e                   	pop    %esi
 8049adb:	5f                   	pop    %edi
 8049adc:	89 ec                	mov    %ebp,%esp
 8049ade:	5d                   	pop    %ebp
 8049adf:	c3                   	ret    

08049ae0 <Munmap>:
 8049ae0:	55                   	push   %ebp
 8049ae1:	89 e5                	mov    %esp,%ebp
 8049ae3:	83 ec 08             	sub    $0x8,%esp
 8049ae6:	8b 55 08             	mov    0x8(%ebp),%edx
 8049ae9:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049aec:	83 c4 f8             	add    $0xfffffff8,%esp
 8049aef:	50                   	push   %eax
 8049af0:	52                   	push   %edx
 8049af1:	e8 4a f5 ff ff       	call   8049040 <munmap@plt>
 8049af6:	83 c4 10             	add    $0x10,%esp
 8049af9:	85 c0                	test   %eax,%eax
 8049afb:	7d 0d                	jge    8049b0a <Munmap+0x2a>
 8049afd:	83 c4 f4             	add    $0xfffffff4,%esp
 8049b00:	68 1c a8 04 08       	push   $0x804a81c
 8049b05:	e8 b6 f9 ff ff       	call   80494c0 <unix_error>
 8049b0a:	89 ec                	mov    %ebp,%esp
 8049b0c:	5d                   	pop    %ebp
 8049b0d:	c3                   	ret    
 8049b0e:	89 f6                	mov    %esi,%esi

08049b10 <Malloc>:
 8049b10:	55                   	push   %ebp
 8049b11:	89 e5                	mov    %esp,%ebp
 8049b13:	83 ec 14             	sub    $0x14,%esp
 8049b16:	53                   	push   %ebx
 8049b17:	8b 45 08             	mov    0x8(%ebp),%eax
 8049b1a:	83 c4 f4             	add    $0xfffffff4,%esp
 8049b1d:	50                   	push   %eax
 8049b1e:	e8 0d f5 ff ff       	call   8049030 <malloc@plt>
 8049b23:	89 c3                	mov    %eax,%ebx
 8049b25:	83 c4 10             	add    $0x10,%esp
 8049b28:	85 db                	test   %ebx,%ebx
 8049b2a:	75 0d                	jne    8049b39 <Malloc+0x29>
 8049b2c:	83 c4 f4             	add    $0xfffffff4,%esp
 8049b2f:	68 29 a8 04 08       	push   $0x804a829
 8049b34:	e8 87 f9 ff ff       	call   80494c0 <unix_error>
 8049b39:	89 d8                	mov    %ebx,%eax
 8049b3b:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049b3e:	89 ec                	mov    %ebp,%esp
 8049b40:	5d                   	pop    %ebp
 8049b41:	c3                   	ret    
 8049b42:	89 f6                	mov    %esi,%esi

08049b44 <Realloc>:
 8049b44:	55                   	push   %ebp
 8049b45:	89 e5                	mov    %esp,%ebp
 8049b47:	83 ec 14             	sub    $0x14,%esp
 8049b4a:	53                   	push   %ebx
 8049b4b:	8b 55 08             	mov    0x8(%ebp),%edx
 8049b4e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b51:	83 c4 f8             	add    $0xfffffff8,%esp
 8049b54:	50                   	push   %eax
 8049b55:	52                   	push   %edx
 8049b56:	e8 45 f6 ff ff       	call   80491a0 <realloc@plt>
 8049b5b:	89 c3                	mov    %eax,%ebx
 8049b5d:	83 c4 10             	add    $0x10,%esp
 8049b60:	85 db                	test   %ebx,%ebx
 8049b62:	75 0d                	jne    8049b71 <Realloc+0x2d>
 8049b64:	83 c4 f4             	add    $0xfffffff4,%esp
 8049b67:	68 36 a8 04 08       	push   $0x804a836
 8049b6c:	e8 4f f9 ff ff       	call   80494c0 <unix_error>
 8049b71:	89 d8                	mov    %ebx,%eax
 8049b73:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049b76:	89 ec                	mov    %ebp,%esp
 8049b78:	5d                   	pop    %ebp
 8049b79:	c3                   	ret    
 8049b7a:	89 f6                	mov    %esi,%esi

08049b7c <Calloc>:
 8049b7c:	55                   	push   %ebp
 8049b7d:	89 e5                	mov    %esp,%ebp
 8049b7f:	83 ec 14             	sub    $0x14,%esp
 8049b82:	53                   	push   %ebx
 8049b83:	8b 55 08             	mov    0x8(%ebp),%edx
 8049b86:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b89:	83 c4 f8             	add    $0xfffffff8,%esp
 8049b8c:	50                   	push   %eax
 8049b8d:	52                   	push   %edx
 8049b8e:	e8 dd f6 ff ff       	call   8049270 <calloc@plt>
 8049b93:	89 c3                	mov    %eax,%ebx
 8049b95:	83 c4 10             	add    $0x10,%esp
 8049b98:	85 db                	test   %ebx,%ebx
 8049b9a:	75 0d                	jne    8049ba9 <Calloc+0x2d>
 8049b9c:	83 c4 f4             	add    $0xfffffff4,%esp
 8049b9f:	68 44 a8 04 08       	push   $0x804a844
 8049ba4:	e8 17 f9 ff ff       	call   80494c0 <unix_error>
 8049ba9:	89 d8                	mov    %ebx,%eax
 8049bab:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049bae:	89 ec                	mov    %ebp,%esp
 8049bb0:	5d                   	pop    %ebp
 8049bb1:	c3                   	ret    
 8049bb2:	89 f6                	mov    %esi,%esi

08049bb4 <Free>:
 8049bb4:	55                   	push   %ebp
 8049bb5:	89 e5                	mov    %esp,%ebp
 8049bb7:	83 ec 08             	sub    $0x8,%esp
 8049bba:	8b 45 08             	mov    0x8(%ebp),%eax
 8049bbd:	83 c4 f4             	add    $0xfffffff4,%esp
 8049bc0:	50                   	push   %eax
 8049bc1:	e8 ba f6 ff ff       	call   8049280 <free@plt>
 8049bc6:	89 ec                	mov    %ebp,%esp
 8049bc8:	5d                   	pop    %ebp
 8049bc9:	c3                   	ret    
 8049bca:	89 f6                	mov    %esi,%esi

08049bcc <Fclose>:
 8049bcc:	55                   	push   %ebp
 8049bcd:	89 e5                	mov    %esp,%ebp
 8049bcf:	83 ec 08             	sub    $0x8,%esp
 8049bd2:	8b 45 08             	mov    0x8(%ebp),%eax
 8049bd5:	83 c4 f4             	add    $0xfffffff4,%esp
 8049bd8:	50                   	push   %eax
 8049bd9:	e8 12 f6 ff ff       	call   80491f0 <fclose@plt>
 8049bde:	83 c4 10             	add    $0x10,%esp
 8049be1:	85 c0                	test   %eax,%eax
 8049be3:	74 0d                	je     8049bf2 <Fclose+0x26>
 8049be5:	83 c4 f4             	add    $0xfffffff4,%esp
 8049be8:	68 51 a8 04 08       	push   $0x804a851
 8049bed:	e8 ce f8 ff ff       	call   80494c0 <unix_error>
 8049bf2:	89 ec                	mov    %ebp,%esp
 8049bf4:	5d                   	pop    %ebp
 8049bf5:	c3                   	ret    
 8049bf6:	89 f6                	mov    %esi,%esi

08049bf8 <Fdopen>:
 8049bf8:	55                   	push   %ebp
 8049bf9:	89 e5                	mov    %esp,%ebp
 8049bfb:	83 ec 14             	sub    $0x14,%esp
 8049bfe:	53                   	push   %ebx
 8049bff:	8b 55 08             	mov    0x8(%ebp),%edx
 8049c02:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c05:	83 c4 f8             	add    $0xfffffff8,%esp
 8049c08:	50                   	push   %eax
 8049c09:	52                   	push   %edx
 8049c0a:	e8 f1 f2 ff ff       	call   8048f00 <fdopen@plt>
 8049c0f:	89 c3                	mov    %eax,%ebx
 8049c11:	83 c4 10             	add    $0x10,%esp
 8049c14:	85 db                	test   %ebx,%ebx
 8049c16:	75 0d                	jne    8049c25 <Fdopen+0x2d>
 8049c18:	83 c4 f4             	add    $0xfffffff4,%esp
 8049c1b:	68 5e a8 04 08       	push   $0x804a85e
 8049c20:	e8 9b f8 ff ff       	call   80494c0 <unix_error>
 8049c25:	89 d8                	mov    %ebx,%eax
 8049c27:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049c2a:	89 ec                	mov    %ebp,%esp
 8049c2c:	5d                   	pop    %ebp
 8049c2d:	c3                   	ret    
 8049c2e:	89 f6                	mov    %esi,%esi

08049c30 <Fgets>:
 8049c30:	55                   	push   %ebp
 8049c31:	89 e5                	mov    %esp,%ebp
 8049c33:	83 ec 10             	sub    $0x10,%esp
 8049c36:	56                   	push   %esi
 8049c37:	53                   	push   %ebx
 8049c38:	8b 55 08             	mov    0x8(%ebp),%edx
 8049c3b:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c3e:	8b 75 10             	mov    0x10(%ebp),%esi
 8049c41:	83 c4 fc             	add    $0xfffffffc,%esp
 8049c44:	56                   	push   %esi
 8049c45:	50                   	push   %eax
 8049c46:	52                   	push   %edx
 8049c47:	e8 94 f4 ff ff       	call   80490e0 <fgets@plt>
 8049c4c:	89 c3                	mov    %eax,%ebx
 8049c4e:	83 c4 10             	add    $0x10,%esp
 8049c51:	85 db                	test   %ebx,%ebx
 8049c53:	75 1d                	jne    8049c72 <Fgets+0x42>
 8049c55:	83 c4 f4             	add    $0xfffffff4,%esp
 8049c58:	56                   	push   %esi
 8049c59:	e8 72 f2 ff ff       	call   8048ed0 <ferror@plt>
 8049c5e:	83 c4 10             	add    $0x10,%esp
 8049c61:	85 c0                	test   %eax,%eax
 8049c63:	74 0d                	je     8049c72 <Fgets+0x42>
 8049c65:	83 c4 f4             	add    $0xfffffff4,%esp
 8049c68:	68 6b a8 04 08       	push   $0x804a86b
 8049c6d:	e8 f2 f8 ff ff       	call   8049564 <app_error>
 8049c72:	89 d8                	mov    %ebx,%eax
 8049c74:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 8049c77:	5b                   	pop    %ebx
 8049c78:	5e                   	pop    %esi
 8049c79:	89 ec                	mov    %ebp,%esp
 8049c7b:	5d                   	pop    %ebp
 8049c7c:	c3                   	ret    
 8049c7d:	8d 76 00             	lea    0x0(%esi),%esi

08049c80 <Fopen>:
 8049c80:	55                   	push   %ebp
 8049c81:	89 e5                	mov    %esp,%ebp
 8049c83:	83 ec 14             	sub    $0x14,%esp
 8049c86:	53                   	push   %ebx
 8049c87:	8b 55 08             	mov    0x8(%ebp),%edx
 8049c8a:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c8d:	83 c4 f8             	add    $0xfffffff8,%esp
 8049c90:	50                   	push   %eax
 8049c91:	52                   	push   %edx
 8049c92:	e8 09 f6 ff ff       	call   80492a0 <fopen@plt>
 8049c97:	89 c3                	mov    %eax,%ebx
 8049c99:	83 c4 10             	add    $0x10,%esp
 8049c9c:	85 db                	test   %ebx,%ebx
 8049c9e:	75 0d                	jne    8049cad <Fopen+0x2d>
 8049ca0:	83 c4 f4             	add    $0xfffffff4,%esp
 8049ca3:	68 77 a8 04 08       	push   $0x804a877
 8049ca8:	e8 13 f8 ff ff       	call   80494c0 <unix_error>
 8049cad:	89 d8                	mov    %ebx,%eax
 8049caf:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049cb2:	89 ec                	mov    %ebp,%esp
 8049cb4:	5d                   	pop    %ebp
 8049cb5:	c3                   	ret    
 8049cb6:	89 f6                	mov    %esi,%esi

08049cb8 <Fputs>:
 8049cb8:	55                   	push   %ebp
 8049cb9:	89 e5                	mov    %esp,%ebp
 8049cbb:	83 ec 08             	sub    $0x8,%esp
 8049cbe:	8b 55 08             	mov    0x8(%ebp),%edx
 8049cc1:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049cc4:	83 c4 f8             	add    $0xfffffff8,%esp
 8049cc7:	50                   	push   %eax
 8049cc8:	52                   	push   %edx
 8049cc9:	e8 32 f4 ff ff       	call   8049100 <fputs@plt>
 8049cce:	83 c4 10             	add    $0x10,%esp
 8049cd1:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049cd4:	75 0d                	jne    8049ce3 <Fputs+0x2b>
 8049cd6:	83 c4 f4             	add    $0xfffffff4,%esp
 8049cd9:	68 83 a8 04 08       	push   $0x804a883
 8049cde:	e8 dd f7 ff ff       	call   80494c0 <unix_error>
 8049ce3:	89 ec                	mov    %ebp,%esp
 8049ce5:	5d                   	pop    %ebp
 8049ce6:	c3                   	ret    
 8049ce7:	90                   	nop    

08049ce8 <Fread>:
 8049ce8:	55                   	push   %ebp
 8049ce9:	89 e5                	mov    %esp,%ebp
 8049ceb:	83 ec 0c             	sub    $0xc,%esp
 8049cee:	57                   	push   %edi
 8049cef:	56                   	push   %esi
 8049cf0:	53                   	push   %ebx
 8049cf1:	8b 45 08             	mov    0x8(%ebp),%eax
 8049cf4:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049cf7:	8b 5d 10             	mov    0x10(%ebp),%ebx
 8049cfa:	8b 7d 14             	mov    0x14(%ebp),%edi
 8049cfd:	57                   	push   %edi
 8049cfe:	53                   	push   %ebx
 8049cff:	52                   	push   %edx
 8049d00:	50                   	push   %eax
 8049d01:	e8 4a f3 ff ff       	call   8049050 <fread@plt>
 8049d06:	89 c6                	mov    %eax,%esi
 8049d08:	83 c4 10             	add    $0x10,%esp
 8049d0b:	39 de                	cmp    %ebx,%esi
 8049d0d:	73 1d                	jae    8049d2c <Fread+0x44>
 8049d0f:	83 c4 f4             	add    $0xfffffff4,%esp
 8049d12:	57                   	push   %edi
 8049d13:	e8 b8 f1 ff ff       	call   8048ed0 <ferror@plt>
 8049d18:	83 c4 10             	add    $0x10,%esp
 8049d1b:	85 c0                	test   %eax,%eax
 8049d1d:	74 0d                	je     8049d2c <Fread+0x44>
 8049d1f:	83 c4 f4             	add    $0xfffffff4,%esp
 8049d22:	68 8f a8 04 08       	push   $0x804a88f
 8049d27:	e8 94 f7 ff ff       	call   80494c0 <unix_error>
 8049d2c:	89 f0                	mov    %esi,%eax
 8049d2e:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 8049d31:	5b                   	pop    %ebx
 8049d32:	5e                   	pop    %esi
 8049d33:	5f                   	pop    %edi
 8049d34:	89 ec                	mov    %ebp,%esp
 8049d36:	5d                   	pop    %ebp
 8049d37:	c3                   	ret    

08049d38 <Fwrite>:
 8049d38:	55                   	push   %ebp
 8049d39:	89 e5                	mov    %esp,%ebp
 8049d3b:	83 ec 14             	sub    $0x14,%esp
 8049d3e:	53                   	push   %ebx
 8049d3f:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049d42:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049d45:	8b 5d 10             	mov    0x10(%ebp),%ebx
 8049d48:	8b 45 14             	mov    0x14(%ebp),%eax
 8049d4b:	50                   	push   %eax
 8049d4c:	53                   	push   %ebx
 8049d4d:	52                   	push   %edx
 8049d4e:	51                   	push   %ecx
 8049d4f:	e8 6c f5 ff ff       	call   80492c0 <fwrite@plt>
 8049d54:	83 c4 10             	add    $0x10,%esp
 8049d57:	39 d8                	cmp    %ebx,%eax
 8049d59:	73 0d                	jae    8049d68 <Fwrite+0x30>
 8049d5b:	83 c4 f4             	add    $0xfffffff4,%esp
 8049d5e:	68 9b a8 04 08       	push   $0x804a89b
 8049d63:	e8 58 f7 ff ff       	call   80494c0 <unix_error>
 8049d68:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049d6b:	89 ec                	mov    %ebp,%esp
 8049d6d:	5d                   	pop    %ebp
 8049d6e:	c3                   	ret    
 8049d6f:	90                   	nop    

08049d70 <Socket>:
 8049d70:	55                   	push   %ebp
 8049d71:	89 e5                	mov    %esp,%ebp
 8049d73:	83 ec 14             	sub    $0x14,%esp
 8049d76:	53                   	push   %ebx
 8049d77:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049d7a:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049d7d:	8b 45 10             	mov    0x10(%ebp),%eax
 8049d80:	83 c4 fc             	add    $0xfffffffc,%esp
 8049d83:	50                   	push   %eax
 8049d84:	52                   	push   %edx
 8049d85:	51                   	push   %ecx
 8049d86:	e8 45 f5 ff ff       	call   80492d0 <socket@plt>
 8049d8b:	89 c3                	mov    %eax,%ebx
 8049d8d:	83 c4 10             	add    $0x10,%esp
 8049d90:	85 db                	test   %ebx,%ebx
 8049d92:	7d 0d                	jge    8049da1 <Socket+0x31>
 8049d94:	83 c4 f4             	add    $0xfffffff4,%esp
 8049d97:	68 a8 a8 04 08       	push   $0x804a8a8
 8049d9c:	e8 1f f7 ff ff       	call   80494c0 <unix_error>
 8049da1:	89 d8                	mov    %ebx,%eax
 8049da3:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049da6:	89 ec                	mov    %ebp,%esp
 8049da8:	5d                   	pop    %ebp
 8049da9:	c3                   	ret    
 8049daa:	89 f6                	mov    %esi,%esi

08049dac <Setsockopt>:
 8049dac:	55                   	push   %ebp
 8049dad:	89 e5                	mov    %esp,%ebp
 8049daf:	83 ec 10             	sub    $0x10,%esp
 8049db2:	56                   	push   %esi
 8049db3:	53                   	push   %ebx
 8049db4:	8b 75 08             	mov    0x8(%ebp),%esi
 8049db7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8049dba:	8b 4d 10             	mov    0x10(%ebp),%ecx
 8049dbd:	8b 55 14             	mov    0x14(%ebp),%edx
 8049dc0:	8b 45 18             	mov    0x18(%ebp),%eax
 8049dc3:	83 c4 f4             	add    $0xfffffff4,%esp
 8049dc6:	50                   	push   %eax
 8049dc7:	52                   	push   %edx
 8049dc8:	51                   	push   %ecx
 8049dc9:	53                   	push   %ebx
 8049dca:	56                   	push   %esi
 8049dcb:	e8 e0 f2 ff ff       	call   80490b0 <setsockopt@plt>
 8049dd0:	83 c4 20             	add    $0x20,%esp
 8049dd3:	85 c0                	test   %eax,%eax
 8049dd5:	7d 0d                	jge    8049de4 <Setsockopt+0x38>
 8049dd7:	83 c4 f4             	add    $0xfffffff4,%esp
 8049dda:	68 b5 a8 04 08       	push   $0x804a8b5
 8049ddf:	e8 dc f6 ff ff       	call   80494c0 <unix_error>
 8049de4:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 8049de7:	5b                   	pop    %ebx
 8049de8:	5e                   	pop    %esi
 8049de9:	89 ec                	mov    %ebp,%esp
 8049deb:	5d                   	pop    %ebp
 8049dec:	c3                   	ret    
 8049ded:	8d 76 00             	lea    0x0(%esi),%esi

08049df0 <Bind>:
 8049df0:	55                   	push   %ebp
 8049df1:	89 e5                	mov    %esp,%ebp
 8049df3:	83 ec 08             	sub    $0x8,%esp
 8049df6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049df9:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049dfc:	8b 45 10             	mov    0x10(%ebp),%eax
 8049dff:	83 c4 fc             	add    $0xfffffffc,%esp
 8049e02:	50                   	push   %eax
 8049e03:	52                   	push   %edx
 8049e04:	51                   	push   %ecx
 8049e05:	e8 b6 f3 ff ff       	call   80491c0 <bind@plt>
 8049e0a:	83 c4 10             	add    $0x10,%esp
 8049e0d:	85 c0                	test   %eax,%eax
 8049e0f:	7d 0d                	jge    8049e1e <Bind+0x2e>
 8049e11:	83 c4 f4             	add    $0xfffffff4,%esp
 8049e14:	68 c6 a8 04 08       	push   $0x804a8c6
 8049e19:	e8 a2 f6 ff ff       	call   80494c0 <unix_error>
 8049e1e:	89 ec                	mov    %ebp,%esp
 8049e20:	5d                   	pop    %ebp
 8049e21:	c3                   	ret    
 8049e22:	89 f6                	mov    %esi,%esi

08049e24 <Listen>:
 8049e24:	55                   	push   %ebp
 8049e25:	89 e5                	mov    %esp,%ebp
 8049e27:	83 ec 08             	sub    $0x8,%esp
 8049e2a:	8b 55 08             	mov    0x8(%ebp),%edx
 8049e2d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049e30:	83 c4 f8             	add    $0xfffffff8,%esp
 8049e33:	50                   	push   %eax
 8049e34:	52                   	push   %edx
 8049e35:	e8 e6 f1 ff ff       	call   8049020 <listen@plt>
 8049e3a:	83 c4 10             	add    $0x10,%esp
 8049e3d:	85 c0                	test   %eax,%eax
 8049e3f:	7d 0d                	jge    8049e4e <Listen+0x2a>
 8049e41:	83 c4 f4             	add    $0xfffffff4,%esp
 8049e44:	68 d1 a8 04 08       	push   $0x804a8d1
 8049e49:	e8 72 f6 ff ff       	call   80494c0 <unix_error>
 8049e4e:	89 ec                	mov    %ebp,%esp
 8049e50:	5d                   	pop    %ebp
 8049e51:	c3                   	ret    
 8049e52:	89 f6                	mov    %esi,%esi

08049e54 <Accept>:
 8049e54:	55                   	push   %ebp
 8049e55:	89 e5                	mov    %esp,%ebp
 8049e57:	83 ec 14             	sub    $0x14,%esp
 8049e5a:	53                   	push   %ebx
 8049e5b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049e5e:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049e61:	8b 45 10             	mov    0x10(%ebp),%eax
 8049e64:	83 c4 fc             	add    $0xfffffffc,%esp
 8049e67:	50                   	push   %eax
 8049e68:	52                   	push   %edx
 8049e69:	51                   	push   %ecx
 8049e6a:	e8 91 f1 ff ff       	call   8049000 <accept@plt>
 8049e6f:	89 c3                	mov    %eax,%ebx
 8049e71:	83 c4 10             	add    $0x10,%esp
 8049e74:	85 db                	test   %ebx,%ebx
 8049e76:	7d 0d                	jge    8049e85 <Accept+0x31>
 8049e78:	83 c4 f4             	add    $0xfffffff4,%esp
 8049e7b:	68 de a8 04 08       	push   $0x804a8de
 8049e80:	e8 3b f6 ff ff       	call   80494c0 <unix_error>
 8049e85:	89 d8                	mov    %ebx,%eax
 8049e87:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049e8a:	89 ec                	mov    %ebp,%esp
 8049e8c:	5d                   	pop    %ebp
 8049e8d:	c3                   	ret    
 8049e8e:	89 f6                	mov    %esi,%esi

08049e90 <Connect>:
 8049e90:	55                   	push   %ebp
 8049e91:	89 e5                	mov    %esp,%ebp
 8049e93:	83 ec 08             	sub    $0x8,%esp
 8049e96:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049e99:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049e9c:	8b 45 10             	mov    0x10(%ebp),%eax
 8049e9f:	83 c4 fc             	add    $0xfffffffc,%esp
 8049ea2:	50                   	push   %eax
 8049ea3:	52                   	push   %edx
 8049ea4:	51                   	push   %ecx
 8049ea5:	e8 e6 f3 ff ff       	call   8049290 <connect@plt>
 8049eaa:	83 c4 10             	add    $0x10,%esp
 8049ead:	85 c0                	test   %eax,%eax
 8049eaf:	7d 0d                	jge    8049ebe <Connect+0x2e>
 8049eb1:	83 c4 f4             	add    $0xfffffff4,%esp
 8049eb4:	68 eb a8 04 08       	push   $0x804a8eb
 8049eb9:	e8 02 f6 ff ff       	call   80494c0 <unix_error>
 8049ebe:	89 ec                	mov    %ebp,%esp
 8049ec0:	5d                   	pop    %ebp
 8049ec1:	c3                   	ret    
 8049ec2:	89 f6                	mov    %esi,%esi

08049ec4 <Gethostbyname>:
 8049ec4:	55                   	push   %ebp
 8049ec5:	89 e5                	mov    %esp,%ebp
 8049ec7:	83 ec 14             	sub    $0x14,%esp
 8049eca:	53                   	push   %ebx
 8049ecb:	8b 45 08             	mov    0x8(%ebp),%eax
 8049ece:	83 c4 f4             	add    $0xfffffff4,%esp
 8049ed1:	50                   	push   %eax
 8049ed2:	e8 39 f3 ff ff       	call   8049210 <gethostbyname@plt>
 8049ed7:	89 c3                	mov    %eax,%ebx
 8049ed9:	83 c4 10             	add    $0x10,%esp
 8049edc:	85 db                	test   %ebx,%ebx
 8049ede:	75 0d                	jne    8049eed <Gethostbyname+0x29>
 8049ee0:	83 c4 f4             	add    $0xfffffff4,%esp
 8049ee3:	68 f9 a8 04 08       	push   $0x804a8f9
 8049ee8:	e8 47 f6 ff ff       	call   8049534 <dns_error>
 8049eed:	89 d8                	mov    %ebx,%eax
 8049eef:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049ef2:	89 ec                	mov    %ebp,%esp
 8049ef4:	5d                   	pop    %ebp
 8049ef5:	c3                   	ret    
 8049ef6:	89 f6                	mov    %esi,%esi

08049ef8 <Gethostbyaddr>:
 8049ef8:	55                   	push   %ebp
 8049ef9:	89 e5                	mov    %esp,%ebp
 8049efb:	83 ec 14             	sub    $0x14,%esp
 8049efe:	53                   	push   %ebx
 8049eff:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049f02:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049f05:	8b 45 10             	mov    0x10(%ebp),%eax
 8049f08:	83 c4 fc             	add    $0xfffffffc,%esp
 8049f0b:	50                   	push   %eax
 8049f0c:	52                   	push   %edx
 8049f0d:	51                   	push   %ecx
 8049f0e:	e8 fd f0 ff ff       	call   8049010 <gethostbyaddr@plt>
 8049f13:	89 c3                	mov    %eax,%ebx
 8049f15:	83 c4 10             	add    $0x10,%esp
 8049f18:	85 db                	test   %ebx,%ebx
 8049f1a:	75 0d                	jne    8049f29 <Gethostbyaddr+0x31>
 8049f1c:	83 c4 f4             	add    $0xfffffff4,%esp
 8049f1f:	68 0d a9 04 08       	push   $0x804a90d
 8049f24:	e8 0b f6 ff ff       	call   8049534 <dns_error>
 8049f29:	89 d8                	mov    %ebx,%eax
 8049f2b:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049f2e:	89 ec                	mov    %ebp,%esp
 8049f30:	5d                   	pop    %ebp
 8049f31:	c3                   	ret    
 8049f32:	89 f6                	mov    %esi,%esi

08049f34 <Pthread_create>:
 8049f34:	55                   	push   %ebp
 8049f35:	89 e5                	mov    %esp,%ebp
 8049f37:	83 ec 14             	sub    $0x14,%esp
 8049f3a:	53                   	push   %ebx
 8049f3b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8049f3e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8049f41:	8b 55 10             	mov    0x10(%ebp),%edx
 8049f44:	8b 45 14             	mov    0x14(%ebp),%eax
 8049f47:	50                   	push   %eax
 8049f48:	52                   	push   %edx
 8049f49:	51                   	push   %ecx
 8049f4a:	53                   	push   %ebx
 8049f4b:	e8 30 f0 ff ff       	call   8048f80 <pthread_create@plt>
 8049f50:	83 c4 10             	add    $0x10,%esp
 8049f53:	85 c0                	test   %eax,%eax
 8049f55:	74 0e                	je     8049f65 <Pthread_create+0x31>
 8049f57:	83 c4 f8             	add    $0xfffffff8,%esp
 8049f5a:	68 21 a9 04 08       	push   $0x804a921
 8049f5f:	50                   	push   %eax
 8049f60:	e8 97 f5 ff ff       	call   80494fc <posix_error>
 8049f65:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049f68:	89 ec                	mov    %ebp,%esp
 8049f6a:	5d                   	pop    %ebp
 8049f6b:	c3                   	ret    

08049f6c <Pthread_cancel>:
 8049f6c:	55                   	push   %ebp
 8049f6d:	89 e5                	mov    %esp,%ebp
 8049f6f:	83 ec 08             	sub    $0x8,%esp
 8049f72:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f75:	83 c4 f4             	add    $0xfffffff4,%esp
 8049f78:	50                   	push   %eax
 8049f79:	e8 32 f0 ff ff       	call   8048fb0 <pthread_cancel@plt>
 8049f7e:	83 c4 10             	add    $0x10,%esp
 8049f81:	85 c0                	test   %eax,%eax
 8049f83:	74 0e                	je     8049f93 <Pthread_cancel+0x27>
 8049f85:	83 c4 f8             	add    $0xfffffff8,%esp
 8049f88:	68 36 a9 04 08       	push   $0x804a936
 8049f8d:	50                   	push   %eax
 8049f8e:	e8 69 f5 ff ff       	call   80494fc <posix_error>
 8049f93:	89 ec                	mov    %ebp,%esp
 8049f95:	5d                   	pop    %ebp
 8049f96:	c3                   	ret    
 8049f97:	90                   	nop    

08049f98 <Pthread_join>:
 8049f98:	55                   	push   %ebp
 8049f99:	89 e5                	mov    %esp,%ebp
 8049f9b:	83 ec 08             	sub    $0x8,%esp
 8049f9e:	8b 55 08             	mov    0x8(%ebp),%edx
 8049fa1:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049fa4:	83 c4 f8             	add    $0xfffffff8,%esp
 8049fa7:	50                   	push   %eax
 8049fa8:	52                   	push   %edx
 8049fa9:	e8 82 f2 ff ff       	call   8049230 <pthread_join@plt>
 8049fae:	83 c4 10             	add    $0x10,%esp
 8049fb1:	85 c0                	test   %eax,%eax
 8049fb3:	74 0e                	je     8049fc3 <Pthread_join+0x2b>
 8049fb5:	83 c4 f8             	add    $0xfffffff8,%esp
 8049fb8:	68 4b a9 04 08       	push   $0x804a94b
 8049fbd:	50                   	push   %eax
 8049fbe:	e8 39 f5 ff ff       	call   80494fc <posix_error>
 8049fc3:	89 ec                	mov    %ebp,%esp
 8049fc5:	5d                   	pop    %ebp
 8049fc6:	c3                   	ret    
 8049fc7:	90                   	nop    

08049fc8 <Pthread_detach>:
 8049fc8:	55                   	push   %ebp
 8049fc9:	89 e5                	mov    %esp,%ebp
 8049fcb:	83 ec 08             	sub    $0x8,%esp
 8049fce:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fd1:	83 c4 f4             	add    $0xfffffff4,%esp
 8049fd4:	50                   	push   %eax
 8049fd5:	e8 c6 ee ff ff       	call   8048ea0 <pthread_detach@plt>
 8049fda:	83 c4 10             	add    $0x10,%esp
 8049fdd:	85 c0                	test   %eax,%eax
 8049fdf:	74 0e                	je     8049fef <Pthread_detach+0x27>
 8049fe1:	83 c4 f8             	add    $0xfffffff8,%esp
 8049fe4:	68 5e a9 04 08       	push   $0x804a95e
 8049fe9:	50                   	push   %eax
 8049fea:	e8 0d f5 ff ff       	call   80494fc <posix_error>
 8049fef:	89 ec                	mov    %ebp,%esp
 8049ff1:	5d                   	pop    %ebp
 8049ff2:	c3                   	ret    
 8049ff3:	90                   	nop    

08049ff4 <Pthread_exit>:
 8049ff4:	55                   	push   %ebp
 8049ff5:	89 e5                	mov    %esp,%ebp
 8049ff7:	83 ec 08             	sub    $0x8,%esp
 8049ffa:	8b 45 08             	mov    0x8(%ebp),%eax
 8049ffd:	83 c4 f4             	add    $0xfffffff4,%esp
 804a000:	50                   	push   %eax
 804a001:	e8 4a f2 ff ff       	call   8049250 <pthread_exit@plt>
 804a006:	89 f6                	mov    %esi,%esi

0804a008 <Pthread_self>:
 804a008:	55                   	push   %ebp
 804a009:	89 e5                	mov    %esp,%ebp
 804a00b:	83 ec 08             	sub    $0x8,%esp
 804a00e:	e8 4d f1 ff ff       	call   8049160 <pthread_self@plt>
 804a013:	89 ec                	mov    %ebp,%esp
 804a015:	5d                   	pop    %ebp
 804a016:	c3                   	ret    
 804a017:	90                   	nop    

0804a018 <Pthread_once>:
 804a018:	55                   	push   %ebp
 804a019:	89 e5                	mov    %esp,%ebp
 804a01b:	83 ec 08             	sub    $0x8,%esp
 804a01e:	8b 55 08             	mov    0x8(%ebp),%edx
 804a021:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a024:	83 c4 f8             	add    $0xfffffff8,%esp
 804a027:	50                   	push   %eax
 804a028:	52                   	push   %edx
 804a029:	e8 92 f0 ff ff       	call   80490c0 <pthread_once@plt>
 804a02e:	89 ec                	mov    %ebp,%esp
 804a030:	5d                   	pop    %ebp
 804a031:	c3                   	ret    
 804a032:	89 f6                	mov    %esi,%esi

0804a034 <Sem_init>:
 804a034:	55                   	push   %ebp
 804a035:	89 e5                	mov    %esp,%ebp
 804a037:	83 ec 08             	sub    $0x8,%esp
 804a03a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804a03d:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a040:	8b 45 10             	mov    0x10(%ebp),%eax
 804a043:	83 c4 fc             	add    $0xfffffffc,%esp
 804a046:	50                   	push   %eax
 804a047:	52                   	push   %edx
 804a048:	51                   	push   %ecx
 804a049:	e8 02 ef ff ff       	call   8048f50 <sem_init@plt>
 804a04e:	83 c4 10             	add    $0x10,%esp
 804a051:	85 c0                	test   %eax,%eax
 804a053:	7d 0d                	jge    804a062 <Sem_init+0x2e>
 804a055:	83 c4 f4             	add    $0xfffffff4,%esp
 804a058:	68 73 a9 04 08       	push   $0x804a973
 804a05d:	e8 5e f4 ff ff       	call   80494c0 <unix_error>
 804a062:	89 ec                	mov    %ebp,%esp
 804a064:	5d                   	pop    %ebp
 804a065:	c3                   	ret    
 804a066:	89 f6                	mov    %esi,%esi

0804a068 <P>:
 804a068:	55                   	push   %ebp
 804a069:	89 e5                	mov    %esp,%ebp
 804a06b:	83 ec 08             	sub    $0x8,%esp
 804a06e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a071:	83 c4 f4             	add    $0xfffffff4,%esp
 804a074:	50                   	push   %eax
 804a075:	e8 46 ee ff ff       	call   8048ec0 <sem_wait@plt>
 804a07a:	83 c4 10             	add    $0x10,%esp
 804a07d:	85 c0                	test   %eax,%eax
 804a07f:	7d 0d                	jge    804a08e <P+0x26>
 804a081:	83 c4 f4             	add    $0xfffffff4,%esp
 804a084:	68 82 a9 04 08       	push   $0x804a982
 804a089:	e8 32 f4 ff ff       	call   80494c0 <unix_error>
 804a08e:	89 ec                	mov    %ebp,%esp
 804a090:	5d                   	pop    %ebp
 804a091:	c3                   	ret    
 804a092:	89 f6                	mov    %esi,%esi

0804a094 <V>:
 804a094:	55                   	push   %ebp
 804a095:	89 e5                	mov    %esp,%ebp
 804a097:	83 ec 08             	sub    $0x8,%esp
 804a09a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a09d:	83 c4 f4             	add    $0xfffffff4,%esp
 804a0a0:	50                   	push   %eax
 804a0a1:	e8 da ef ff ff       	call   8049080 <sem_post@plt>
 804a0a6:	83 c4 10             	add    $0x10,%esp
 804a0a9:	85 c0                	test   %eax,%eax
 804a0ab:	7d 0d                	jge    804a0ba <V+0x26>
 804a0ad:	83 c4 f4             	add    $0xfffffff4,%esp
 804a0b0:	68 8a a9 04 08       	push   $0x804a98a
 804a0b5:	e8 06 f4 ff ff       	call   80494c0 <unix_error>
 804a0ba:	89 ec                	mov    %ebp,%esp
 804a0bc:	5d                   	pop    %ebp
 804a0bd:	c3                   	ret    
 804a0be:	89 f6                	mov    %esi,%esi

0804a0c0 <rio_readn>:
 804a0c0:	55                   	push   %ebp
 804a0c1:	89 e5                	mov    %esp,%ebp
 804a0c3:	83 ec 0c             	sub    $0xc,%esp
 804a0c6:	57                   	push   %edi
 804a0c7:	56                   	push   %esi
 804a0c8:	53                   	push   %ebx
 804a0c9:	8b 7d 10             	mov    0x10(%ebp),%edi
 804a0cc:	8b 75 0c             	mov    0xc(%ebp),%esi
 804a0cf:	89 fb                	mov    %edi,%ebx
 804a0d1:	eb 04                	jmp    804a0d7 <rio_readn+0x17>
 804a0d3:	29 c3                	sub    %eax,%ebx
 804a0d5:	01 c6                	add    %eax,%esi
 804a0d7:	85 db                	test   %ebx,%ebx
 804a0d9:	74 30                	je     804a10b <rio_readn+0x4b>
 804a0db:	83 c4 fc             	add    $0xfffffffc,%esp
 804a0de:	53                   	push   %ebx
 804a0df:	56                   	push   %esi
 804a0e0:	8b 45 08             	mov    0x8(%ebp),%eax
 804a0e3:	50                   	push   %eax
 804a0e4:	e8 07 f2 ff ff       	call   80492f0 <read@plt>
 804a0e9:	83 c4 10             	add    $0x10,%esp
 804a0ec:	85 c0                	test   %eax,%eax
 804a0ee:	7d 17                	jge    804a107 <rio_readn+0x47>
 804a0f0:	e8 fb ee ff ff       	call   8048ff0 <__errno_location@plt>
 804a0f5:	83 38 04             	cmpl   $0x4,(%eax)
 804a0f8:	75 06                	jne    804a100 <rio_readn+0x40>
 804a0fa:	31 c0                	xor    %eax,%eax
 804a0fc:	eb d5                	jmp    804a0d3 <rio_readn+0x13>
 804a0fe:	89 f6                	mov    %esi,%esi
 804a100:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a105:	eb 08                	jmp    804a10f <rio_readn+0x4f>
 804a107:	85 c0                	test   %eax,%eax
 804a109:	75 c8                	jne    804a0d3 <rio_readn+0x13>
 804a10b:	29 df                	sub    %ebx,%edi
 804a10d:	89 f8                	mov    %edi,%eax
 804a10f:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 804a112:	5b                   	pop    %ebx
 804a113:	5e                   	pop    %esi
 804a114:	5f                   	pop    %edi
 804a115:	89 ec                	mov    %ebp,%esp
 804a117:	5d                   	pop    %ebp
 804a118:	c3                   	ret    
 804a119:	8d 76 00             	lea    0x0(%esi),%esi

0804a11c <rio_writen>:
 804a11c:	55                   	push   %ebp
 804a11d:	89 e5                	mov    %esp,%ebp
 804a11f:	83 ec 0c             	sub    $0xc,%esp
 804a122:	57                   	push   %edi
 804a123:	56                   	push   %esi
 804a124:	53                   	push   %ebx
 804a125:	8b 7d 10             	mov    0x10(%ebp),%edi
 804a128:	8b 75 0c             	mov    0xc(%ebp),%esi
 804a12b:	89 fb                	mov    %edi,%ebx
 804a12d:	85 ff                	test   %edi,%edi
 804a12f:	74 30                	je     804a161 <rio_writen+0x45>
 804a131:	83 c4 fc             	add    $0xfffffffc,%esp
 804a134:	53                   	push   %ebx
 804a135:	56                   	push   %esi
 804a136:	8b 45 08             	mov    0x8(%ebp),%eax
 804a139:	50                   	push   %eax
 804a13a:	e8 f1 ed ff ff       	call   8048f30 <write@plt>
 804a13f:	83 c4 10             	add    $0x10,%esp
 804a142:	85 c0                	test   %eax,%eax
 804a144:	7f 13                	jg     804a159 <rio_writen+0x3d>
 804a146:	e8 a5 ee ff ff       	call   8048ff0 <__errno_location@plt>
 804a14b:	83 38 04             	cmpl   $0x4,(%eax)
 804a14e:	74 07                	je     804a157 <rio_writen+0x3b>
 804a150:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a155:	eb 0c                	jmp    804a163 <rio_writen+0x47>
 804a157:	31 c0                	xor    %eax,%eax
 804a159:	29 c3                	sub    %eax,%ebx
 804a15b:	01 c6                	add    %eax,%esi
 804a15d:	85 db                	test   %ebx,%ebx
 804a15f:	75 d0                	jne    804a131 <rio_writen+0x15>
 804a161:	89 f8                	mov    %edi,%eax
 804a163:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 804a166:	5b                   	pop    %ebx
 804a167:	5e                   	pop    %esi
 804a168:	5f                   	pop    %edi
 804a169:	89 ec                	mov    %ebp,%esp
 804a16b:	5d                   	pop    %ebp
 804a16c:	c3                   	ret    
 804a16d:	8d 76 00             	lea    0x0(%esi),%esi

0804a170 <rio_read>:
 804a170:	55                   	push   %ebp
 804a171:	89 e5                	mov    %esp,%ebp
 804a173:	83 ec 10             	sub    $0x10,%esp
 804a176:	56                   	push   %esi
 804a177:	53                   	push   %ebx
 804a178:	8b 75 08             	mov    0x8(%ebp),%esi
 804a17b:	83 7e 04 00          	cmpl   $0x0,0x4(%esi)
 804a17f:	7f 40                	jg     804a1c1 <rio_read+0x51>
 804a181:	8d 5e 0c             	lea    0xc(%esi),%ebx
 804a184:	83 c4 fc             	add    $0xfffffffc,%esp
 804a187:	68 00 20 00 00       	push   $0x2000
 804a18c:	53                   	push   %ebx
 804a18d:	8b 06                	mov    (%esi),%eax
 804a18f:	50                   	push   %eax
 804a190:	e8 5b f1 ff ff       	call   80492f0 <read@plt>
 804a195:	89 46 04             	mov    %eax,0x4(%esi)
 804a198:	83 c4 10             	add    $0x10,%esp
 804a19b:	85 c0                	test   %eax,%eax
 804a19d:	7d 11                	jge    804a1b0 <rio_read+0x40>
 804a19f:	e8 4c ee ff ff       	call   8048ff0 <__errno_location@plt>
 804a1a4:	83 38 04             	cmpl   $0x4,(%eax)
 804a1a7:	74 12                	je     804a1bb <rio_read+0x4b>
 804a1a9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a1ae:	eb 36                	jmp    804a1e6 <rio_read+0x76>
 804a1b0:	85 c0                	test   %eax,%eax
 804a1b2:	75 04                	jne    804a1b8 <rio_read+0x48>
 804a1b4:	31 c0                	xor    %eax,%eax
 804a1b6:	eb 2e                	jmp    804a1e6 <rio_read+0x76>
 804a1b8:	89 5e 08             	mov    %ebx,0x8(%esi)
 804a1bb:	83 7e 04 00          	cmpl   $0x0,0x4(%esi)
 804a1bf:	7e c3                	jle    804a184 <rio_read+0x14>
 804a1c1:	8b 5d 10             	mov    0x10(%ebp),%ebx
 804a1c4:	8b 46 04             	mov    0x4(%esi),%eax
 804a1c7:	39 d8                	cmp    %ebx,%eax
 804a1c9:	73 02                	jae    804a1cd <rio_read+0x5d>
 804a1cb:	89 c3                	mov    %eax,%ebx
 804a1cd:	8b 46 08             	mov    0x8(%esi),%eax
 804a1d0:	83 c4 fc             	add    $0xfffffffc,%esp
 804a1d3:	53                   	push   %ebx
 804a1d4:	50                   	push   %eax
 804a1d5:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a1d8:	50                   	push   %eax
 804a1d9:	e8 02 f0 ff ff       	call   80491e0 <memcpy@plt>
 804a1de:	01 5e 08             	add    %ebx,0x8(%esi)
 804a1e1:	29 5e 04             	sub    %ebx,0x4(%esi)
 804a1e4:	89 d8                	mov    %ebx,%eax
 804a1e6:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 804a1e9:	5b                   	pop    %ebx
 804a1ea:	5e                   	pop    %esi
 804a1eb:	89 ec                	mov    %ebp,%esp
 804a1ed:	5d                   	pop    %ebp
 804a1ee:	c3                   	ret    
 804a1ef:	90                   	nop    

0804a1f0 <rio_readinitb>:
 804a1f0:	55                   	push   %ebp
 804a1f1:	89 e5                	mov    %esp,%ebp
 804a1f3:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1f6:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a1f9:	89 10                	mov    %edx,(%eax)
 804a1fb:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804a202:	8d 50 0c             	lea    0xc(%eax),%edx
 804a205:	89 50 08             	mov    %edx,0x8(%eax)
 804a208:	89 ec                	mov    %ebp,%esp
 804a20a:	5d                   	pop    %ebp
 804a20b:	c3                   	ret    

0804a20c <rio_readnb>:
 804a20c:	55                   	push   %ebp
 804a20d:	89 e5                	mov    %esp,%ebp
 804a20f:	83 ec 0c             	sub    $0xc,%esp
 804a212:	57                   	push   %edi
 804a213:	56                   	push   %esi
 804a214:	53                   	push   %ebx
 804a215:	8b 7d 10             	mov    0x10(%ebp),%edi
 804a218:	8b 75 0c             	mov    0xc(%ebp),%esi
 804a21b:	89 fb                	mov    %edi,%ebx
 804a21d:	eb 05                	jmp    804a224 <rio_readnb+0x18>
 804a21f:	90                   	nop    
 804a220:	29 c3                	sub    %eax,%ebx
 804a222:	01 c6                	add    %eax,%esi
 804a224:	85 db                	test   %ebx,%ebx
 804a226:	74 33                	je     804a25b <rio_readnb+0x4f>
 804a228:	83 c4 fc             	add    $0xfffffffc,%esp
 804a22b:	53                   	push   %ebx
 804a22c:	56                   	push   %esi
 804a22d:	8b 45 08             	mov    0x8(%ebp),%eax
 804a230:	50                   	push   %eax
 804a231:	e8 3a ff ff ff       	call   804a170 <rio_read>
 804a236:	83 c4 10             	add    $0x10,%esp
 804a239:	85 c0                	test   %eax,%eax
 804a23b:	7d 1a                	jge    804a257 <rio_readnb+0x4b>
 804a23d:	e8 ae ed ff ff       	call   8048ff0 <__errno_location@plt>
 804a242:	83 38 04             	cmpl   $0x4,(%eax)
 804a245:	75 09                	jne    804a250 <rio_readnb+0x44>
 804a247:	31 c0                	xor    %eax,%eax
 804a249:	eb d5                	jmp    804a220 <rio_readnb+0x14>
 804a24b:	90                   	nop    
 804a24c:	8d 74 26 00          	lea    0x0(%esi),%esi
 804a250:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a255:	eb 08                	jmp    804a25f <rio_readnb+0x53>
 804a257:	85 c0                	test   %eax,%eax
 804a259:	75 c5                	jne    804a220 <rio_readnb+0x14>
 804a25b:	29 df                	sub    %ebx,%edi
 804a25d:	89 f8                	mov    %edi,%eax
 804a25f:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 804a262:	5b                   	pop    %ebx
 804a263:	5e                   	pop    %esi
 804a264:	5f                   	pop    %edi
 804a265:	89 ec                	mov    %ebp,%esp
 804a267:	5d                   	pop    %ebp
 804a268:	c3                   	ret    
 804a269:	8d 76 00             	lea    0x0(%esi),%esi

0804a26c <rio_readlineb>:
 804a26c:	55                   	push   %ebp
 804a26d:	89 e5                	mov    %esp,%ebp
 804a26f:	83 ec 0c             	sub    $0xc,%esp
 804a272:	57                   	push   %edi
 804a273:	56                   	push   %esi
 804a274:	53                   	push   %ebx
 804a275:	8b 7d 10             	mov    0x10(%ebp),%edi
 804a278:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 804a27b:	be 01 00 00 00       	mov    $0x1,%esi
 804a280:	eb 0f                	jmp    804a291 <rio_readlineb+0x25>
 804a282:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a287:	eb 4c                	jmp    804a2d5 <rio_readlineb+0x69>
 804a289:	8d b4 26 00 00 00 00 	lea    0x0(%esi),%esi
 804a290:	46                   	inc    %esi
 804a291:	39 fe                	cmp    %edi,%esi
 804a293:	73 3b                	jae    804a2d0 <rio_readlineb+0x64>
 804a295:	83 c4 fc             	add    $0xfffffffc,%esp
 804a298:	6a 01                	push   $0x1
 804a29a:	8d 45 ff             	lea    0xffffffff(%ebp),%eax
 804a29d:	50                   	push   %eax
 804a29e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a2a1:	50                   	push   %eax
 804a2a2:	e8 c9 fe ff ff       	call   804a170 <rio_read>
 804a2a7:	83 c4 10             	add    $0x10,%esp
 804a2aa:	83 f8 01             	cmp    $0x1,%eax
 804a2ad:	75 11                	jne    804a2c0 <rio_readlineb+0x54>
 804a2af:	8a 45 ff             	mov    0xffffffff(%ebp),%al
 804a2b2:	88 03                	mov    %al,(%ebx)
 804a2b4:	43                   	inc    %ebx
 804a2b5:	3c 0a                	cmp    $0xa,%al
 804a2b7:	74 17                	je     804a2d0 <rio_readlineb+0x64>
 804a2b9:	eb d5                	jmp    804a290 <rio_readlineb+0x24>
 804a2bb:	90                   	nop    
 804a2bc:	8d 74 26 00          	lea    0x0(%esi),%esi
 804a2c0:	85 c0                	test   %eax,%eax
 804a2c2:	75 be                	jne    804a282 <rio_readlineb+0x16>
 804a2c4:	83 fe 01             	cmp    $0x1,%esi
 804a2c7:	75 07                	jne    804a2d0 <rio_readlineb+0x64>
 804a2c9:	31 c0                	xor    %eax,%eax
 804a2cb:	eb 08                	jmp    804a2d5 <rio_readlineb+0x69>
 804a2cd:	8d 76 00             	lea    0x0(%esi),%esi
 804a2d0:	c6 03 00             	movb   $0x0,(%ebx)
 804a2d3:	89 f0                	mov    %esi,%eax
 804a2d5:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 804a2d8:	5b                   	pop    %ebx
 804a2d9:	5e                   	pop    %esi
 804a2da:	5f                   	pop    %edi
 804a2db:	89 ec                	mov    %ebp,%esp
 804a2dd:	5d                   	pop    %ebp
 804a2de:	c3                   	ret    
 804a2df:	90                   	nop    

0804a2e0 <Rio_readn>:
 804a2e0:	55                   	push   %ebp
 804a2e1:	89 e5                	mov    %esp,%ebp
 804a2e3:	83 ec 14             	sub    $0x14,%esp
 804a2e6:	53                   	push   %ebx
 804a2e7:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804a2ea:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a2ed:	8b 45 10             	mov    0x10(%ebp),%eax
 804a2f0:	83 c4 fc             	add    $0xfffffffc,%esp
 804a2f3:	50                   	push   %eax
 804a2f4:	52                   	push   %edx
 804a2f5:	51                   	push   %ecx
 804a2f6:	e8 c5 fd ff ff       	call   804a0c0 <rio_readn>
 804a2fb:	89 c3                	mov    %eax,%ebx
 804a2fd:	83 c4 10             	add    $0x10,%esp
 804a300:	85 db                	test   %ebx,%ebx
 804a302:	7d 0d                	jge    804a311 <Rio_readn+0x31>
 804a304:	83 c4 f4             	add    $0xfffffff4,%esp
 804a307:	68 92 a9 04 08       	push   $0x804a992
 804a30c:	e8 af f1 ff ff       	call   80494c0 <unix_error>
 804a311:	89 d8                	mov    %ebx,%eax
 804a313:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 804a316:	89 ec                	mov    %ebp,%esp
 804a318:	5d                   	pop    %ebp
 804a319:	c3                   	ret    
 804a31a:	89 f6                	mov    %esi,%esi

0804a31c <Rio_writen>:
 804a31c:	55                   	push   %ebp
 804a31d:	89 e5                	mov    %esp,%ebp
 804a31f:	83 ec 14             	sub    $0x14,%esp
 804a322:	53                   	push   %ebx
 804a323:	8b 45 08             	mov    0x8(%ebp),%eax
 804a326:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a329:	8b 5d 10             	mov    0x10(%ebp),%ebx
 804a32c:	83 c4 fc             	add    $0xfffffffc,%esp
 804a32f:	53                   	push   %ebx
 804a330:	52                   	push   %edx
 804a331:	50                   	push   %eax
 804a332:	e8 e5 fd ff ff       	call   804a11c <rio_writen>
 804a337:	83 c4 10             	add    $0x10,%esp
 804a33a:	39 d8                	cmp    %ebx,%eax
 804a33c:	74 0d                	je     804a34b <Rio_writen+0x2f>
 804a33e:	83 c4 f4             	add    $0xfffffff4,%esp
 804a341:	68 a2 a9 04 08       	push   $0x804a9a2
 804a346:	e8 75 f1 ff ff       	call   80494c0 <unix_error>
 804a34b:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 804a34e:	89 ec                	mov    %ebp,%esp
 804a350:	5d                   	pop    %ebp
 804a351:	c3                   	ret    
 804a352:	89 f6                	mov    %esi,%esi

0804a354 <Rio_readinitb>:
 804a354:	55                   	push   %ebp
 804a355:	89 e5                	mov    %esp,%ebp
 804a357:	83 ec 08             	sub    $0x8,%esp
 804a35a:	8b 55 08             	mov    0x8(%ebp),%edx
 804a35d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a360:	83 c4 f8             	add    $0xfffffff8,%esp
 804a363:	50                   	push   %eax
 804a364:	52                   	push   %edx
 804a365:	e8 86 fe ff ff       	call   804a1f0 <rio_readinitb>
 804a36a:	89 ec                	mov    %ebp,%esp
 804a36c:	5d                   	pop    %ebp
 804a36d:	c3                   	ret    
 804a36e:	89 f6                	mov    %esi,%esi

0804a370 <Rio_readnb>:
 804a370:	55                   	push   %ebp
 804a371:	89 e5                	mov    %esp,%ebp
 804a373:	83 ec 14             	sub    $0x14,%esp
 804a376:	53                   	push   %ebx
 804a377:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804a37a:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a37d:	8b 45 10             	mov    0x10(%ebp),%eax
 804a380:	83 c4 fc             	add    $0xfffffffc,%esp
 804a383:	50                   	push   %eax
 804a384:	52                   	push   %edx
 804a385:	51                   	push   %ecx
 804a386:	e8 81 fe ff ff       	call   804a20c <rio_readnb>
 804a38b:	89 c3                	mov    %eax,%ebx
 804a38d:	83 c4 10             	add    $0x10,%esp
 804a390:	85 db                	test   %ebx,%ebx
 804a392:	7d 0d                	jge    804a3a1 <Rio_readnb+0x31>
 804a394:	83 c4 f4             	add    $0xfffffff4,%esp
 804a397:	68 b3 a9 04 08       	push   $0x804a9b3
 804a39c:	e8 1f f1 ff ff       	call   80494c0 <unix_error>
 804a3a1:	89 d8                	mov    %ebx,%eax
 804a3a3:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 804a3a6:	89 ec                	mov    %ebp,%esp
 804a3a8:	5d                   	pop    %ebp
 804a3a9:	c3                   	ret    
 804a3aa:	89 f6                	mov    %esi,%esi

0804a3ac <Rio_readlineb>:
 804a3ac:	55                   	push   %ebp
 804a3ad:	89 e5                	mov    %esp,%ebp
 804a3af:	83 ec 14             	sub    $0x14,%esp
 804a3b2:	53                   	push   %ebx
 804a3b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804a3b6:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a3b9:	8b 45 10             	mov    0x10(%ebp),%eax
 804a3bc:	83 c4 fc             	add    $0xfffffffc,%esp
 804a3bf:	50                   	push   %eax
 804a3c0:	52                   	push   %edx
 804a3c1:	51                   	push   %ecx
 804a3c2:	e8 a5 fe ff ff       	call   804a26c <rio_readlineb>
 804a3c7:	89 c3                	mov    %eax,%ebx
 804a3c9:	83 c4 10             	add    $0x10,%esp
 804a3cc:	85 db                	test   %ebx,%ebx
 804a3ce:	7d 0d                	jge    804a3dd <Rio_readlineb+0x31>
 804a3d0:	83 c4 f4             	add    $0xfffffff4,%esp
 804a3d3:	68 c4 a9 04 08       	push   $0x804a9c4
 804a3d8:	e8 e3 f0 ff ff       	call   80494c0 <unix_error>
 804a3dd:	89 d8                	mov    %ebx,%eax
 804a3df:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 804a3e2:	89 ec                	mov    %ebp,%esp
 804a3e4:	5d                   	pop    %ebp
 804a3e5:	c3                   	ret    
 804a3e6:	89 f6                	mov    %esi,%esi

0804a3e8 <open_clientfd>:
 804a3e8:	55                   	push   %ebp
 804a3e9:	89 e5                	mov    %esp,%ebp
 804a3eb:	83 ec 1c             	sub    $0x1c,%esp
 804a3ee:	57                   	push   %edi
 804a3ef:	56                   	push   %esi
 804a3f0:	53                   	push   %ebx
 804a3f1:	83 c4 fc             	add    $0xfffffffc,%esp
 804a3f4:	6a 00                	push   $0x0
 804a3f6:	6a 01                	push   $0x1
 804a3f8:	6a 02                	push   $0x2
 804a3fa:	e8 d1 ee ff ff       	call   80492d0 <socket@plt>
 804a3ff:	89 c7                	mov    %eax,%edi
 804a401:	83 c4 10             	add    $0x10,%esp
 804a404:	85 ff                	test   %edi,%edi
 804a406:	7c 68                	jl     804a470 <open_clientfd+0x88>
 804a408:	8b 45 08             	mov    0x8(%ebp),%eax
 804a40b:	83 c4 f4             	add    $0xfffffff4,%esp
 804a40e:	50                   	push   %eax
 804a40f:	e8 fc ed ff ff       	call   8049210 <gethostbyname@plt>
 804a414:	89 c6                	mov    %eax,%esi
 804a416:	83 c4 10             	add    $0x10,%esp
 804a419:	85 f6                	test   %esi,%esi
 804a41b:	75 07                	jne    804a424 <open_clientfd+0x3c>
 804a41d:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
 804a422:	eb 51                	jmp    804a475 <open_clientfd+0x8d>
 804a424:	83 c4 f8             	add    $0xfffffff8,%esp
 804a427:	6a 10                	push   $0x10
 804a429:	8d 5d f0             	lea    0xfffffff0(%ebp),%ebx
 804a42c:	53                   	push   %ebx
 804a42d:	e8 0e ee ff ff       	call   8049240 <bzero@plt>
 804a432:	66 c7 45 f0 02 00    	movw   $0x2,0xfffffff0(%ebp)
 804a438:	8b 46 0c             	mov    0xc(%esi),%eax
 804a43b:	83 c4 fc             	add    $0xfffffffc,%esp
 804a43e:	50                   	push   %eax
 804a43f:	8d 45 f4             	lea    0xfffffff4(%ebp),%eax
 804a442:	50                   	push   %eax
 804a443:	8b 46 10             	mov    0x10(%esi),%eax
 804a446:	8b 00                	mov    (%eax),%eax
 804a448:	50                   	push   %eax
 804a449:	e8 92 eb ff ff       	call   8048fe0 <bcopy@plt>
 804a44e:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a451:	83 c4 20             	add    $0x20,%esp
 804a454:	66 c1 c8 08          	ror    $0x8,%ax
 804a458:	66 89 45 f2          	mov    %ax,0xfffffff2(%ebp)
 804a45c:	83 c4 fc             	add    $0xfffffffc,%esp
 804a45f:	6a 10                	push   $0x10
 804a461:	53                   	push   %ebx
 804a462:	57                   	push   %edi
 804a463:	e8 28 ee ff ff       	call   8049290 <connect@plt>
 804a468:	85 c0                	test   %eax,%eax
 804a46a:	7c 04                	jl     804a470 <open_clientfd+0x88>
 804a46c:	89 f8                	mov    %edi,%eax
 804a46e:	eb 05                	jmp    804a475 <open_clientfd+0x8d>
 804a470:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a475:	8d 65 d8             	lea    0xffffffd8(%ebp),%esp
 804a478:	5b                   	pop    %ebx
 804a479:	5e                   	pop    %esi
 804a47a:	5f                   	pop    %edi
 804a47b:	89 ec                	mov    %ebp,%esp
 804a47d:	5d                   	pop    %ebp
 804a47e:	c3                   	ret    
 804a47f:	90                   	nop    

0804a480 <open_listenfd>:
 804a480:	55                   	push   %ebp
 804a481:	89 e5                	mov    %esp,%ebp
 804a483:	83 ec 20             	sub    $0x20,%esp
 804a486:	56                   	push   %esi
 804a487:	53                   	push   %ebx
 804a488:	c7 45 ec 01 00 00 00 	movl   $0x1,0xffffffec(%ebp)
 804a48f:	83 c4 fc             	add    $0xfffffffc,%esp
 804a492:	6a 00                	push   $0x0
 804a494:	6a 01                	push   $0x1
 804a496:	6a 02                	push   $0x2
 804a498:	e8 33 ee ff ff       	call   80492d0 <socket@plt>
 804a49d:	89 c6                	mov    %eax,%esi
 804a49f:	83 c4 10             	add    $0x10,%esp
 804a4a2:	85 f6                	test   %esi,%esi
 804a4a4:	7c 6c                	jl     804a512 <open_listenfd+0x92>
 804a4a6:	83 c4 f4             	add    $0xfffffff4,%esp
 804a4a9:	6a 04                	push   $0x4
 804a4ab:	8d 45 ec             	lea    0xffffffec(%ebp),%eax
 804a4ae:	50                   	push   %eax
 804a4af:	6a 02                	push   $0x2
 804a4b1:	6a 01                	push   $0x1
 804a4b3:	56                   	push   %esi
 804a4b4:	e8 f7 eb ff ff       	call   80490b0 <setsockopt@plt>
 804a4b9:	83 c4 20             	add    $0x20,%esp
 804a4bc:	85 c0                	test   %eax,%eax
 804a4be:	7c 52                	jl     804a512 <open_listenfd+0x92>
 804a4c0:	83 c4 f8             	add    $0xfffffff8,%esp
 804a4c3:	6a 10                	push   $0x10
 804a4c5:	8d 5d f0             	lea    0xfffffff0(%ebp),%ebx
 804a4c8:	53                   	push   %ebx
 804a4c9:	e8 72 ed ff ff       	call   8049240 <bzero@plt>
 804a4ce:	8b 45 08             	mov    0x8(%ebp),%eax
 804a4d1:	66 c7 45 f0 02 00    	movw   $0x2,0xfffffff0(%ebp)
 804a4d7:	83 c4 10             	add    $0x10,%esp
 804a4da:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
 804a4e1:	66 c1 c8 08          	ror    $0x8,%ax
 804a4e5:	66 89 45 f2          	mov    %ax,0xfffffff2(%ebp)
 804a4e9:	83 c4 fc             	add    $0xfffffffc,%esp
 804a4ec:	6a 10                	push   $0x10
 804a4ee:	53                   	push   %ebx
 804a4ef:	56                   	push   %esi
 804a4f0:	e8 cb ec ff ff       	call   80491c0 <bind@plt>
 804a4f5:	83 c4 10             	add    $0x10,%esp
 804a4f8:	85 c0                	test   %eax,%eax
 804a4fa:	7c 16                	jl     804a512 <open_listenfd+0x92>
 804a4fc:	83 c4 f8             	add    $0xfffffff8,%esp
 804a4ff:	68 00 04 00 00       	push   $0x400
 804a504:	56                   	push   %esi
 804a505:	e8 16 eb ff ff       	call   8049020 <listen@plt>
 804a50a:	85 c0                	test   %eax,%eax
 804a50c:	7c 04                	jl     804a512 <open_listenfd+0x92>
 804a50e:	89 f0                	mov    %esi,%eax
 804a510:	eb 05                	jmp    804a517 <open_listenfd+0x97>
 804a512:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a517:	8d 65 d8             	lea    0xffffffd8(%ebp),%esp
 804a51a:	5b                   	pop    %ebx
 804a51b:	5e                   	pop    %esi
 804a51c:	89 ec                	mov    %ebp,%esp
 804a51e:	5d                   	pop    %ebp
 804a51f:	c3                   	ret    

0804a520 <Open_clientfd>:
 804a520:	55                   	push   %ebp
 804a521:	89 e5                	mov    %esp,%ebp
 804a523:	83 ec 14             	sub    $0x14,%esp
 804a526:	53                   	push   %ebx
 804a527:	8b 55 08             	mov    0x8(%ebp),%edx
 804a52a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a52d:	83 c4 f8             	add    $0xfffffff8,%esp
 804a530:	50                   	push   %eax
 804a531:	52                   	push   %edx
 804a532:	e8 b1 fe ff ff       	call   804a3e8 <open_clientfd>
 804a537:	89 c3                	mov    %eax,%ebx
 804a539:	83 c4 10             	add    $0x10,%esp
 804a53c:	85 db                	test   %ebx,%ebx
 804a53e:	7d 21                	jge    804a561 <Open_clientfd+0x41>
 804a540:	83 fb ff             	cmp    $0xffffffff,%ebx
 804a543:	75 0f                	jne    804a554 <Open_clientfd+0x34>
 804a545:	83 c4 f4             	add    $0xfffffff4,%esp
 804a548:	68 d8 a9 04 08       	push   $0x804a9d8
 804a54d:	e8 6e ef ff ff       	call   80494c0 <unix_error>
 804a552:	eb 0d                	jmp    804a561 <Open_clientfd+0x41>
 804a554:	83 c4 f4             	add    $0xfffffff4,%esp
 804a557:	68 f1 a9 04 08       	push   $0x804a9f1
 804a55c:	e8 d3 ef ff ff       	call   8049534 <dns_error>
 804a561:	89 d8                	mov    %ebx,%eax
 804a563:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 804a566:	89 ec                	mov    %ebp,%esp
 804a568:	5d                   	pop    %ebp
 804a569:	c3                   	ret    
 804a56a:	89 f6                	mov    %esi,%esi

0804a56c <Open_listenfd>:
 804a56c:	55                   	push   %ebp
 804a56d:	89 e5                	mov    %esp,%ebp
 804a56f:	83 ec 14             	sub    $0x14,%esp
 804a572:	53                   	push   %ebx
 804a573:	8b 45 08             	mov    0x8(%ebp),%eax
 804a576:	83 c4 f4             	add    $0xfffffff4,%esp
 804a579:	50                   	push   %eax
 804a57a:	e8 01 ff ff ff       	call   804a480 <open_listenfd>
 804a57f:	89 c3                	mov    %eax,%ebx
 804a581:	83 c4 10             	add    $0x10,%esp
 804a584:	85 db                	test   %ebx,%ebx
 804a586:	7d 0d                	jge    804a595 <Open_listenfd+0x29>
 804a588:	83 c4 f4             	add    $0xfffffff4,%esp
 804a58b:	68 09 aa 04 08       	push   $0x804aa09
 804a590:	e8 2b ef ff ff       	call   80494c0 <unix_error>
 804a595:	89 d8                	mov    %ebx,%eax
 804a597:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 804a59a:	89 ec                	mov    %ebp,%esp
 804a59c:	5d                   	pop    %ebp
 804a59d:	c3                   	ret    
 804a59e:	90                   	nop    
 804a59f:	90                   	nop    

0804a5a0 <__do_global_ctors_aux>:
 804a5a0:	55                   	push   %ebp
 804a5a1:	89 e5                	mov    %esp,%ebp
 804a5a3:	83 ec 14             	sub    $0x14,%esp
 804a5a6:	53                   	push   %ebx
 804a5a7:	bb 38 ba 04 08       	mov    $0x804ba38,%ebx
 804a5ac:	83 3d 38 ba 04 08 ff 	cmpl   $0xffffffff,0x804ba38
 804a5b3:	74 0c                	je     804a5c1 <__do_global_ctors_aux+0x21>
 804a5b5:	8b 03                	mov    (%ebx),%eax
 804a5b7:	ff d0                	call   *%eax
 804a5b9:	83 c3 fc             	add    $0xfffffffc,%ebx
 804a5bc:	83 3b ff             	cmpl   $0xffffffff,(%ebx)
 804a5bf:	75 f4                	jne    804a5b5 <__do_global_ctors_aux+0x15>
 804a5c1:	5b                   	pop    %ebx
 804a5c2:	89 ec                	mov    %ebp,%esp
 804a5c4:	5d                   	pop    %ebp
 804a5c5:	c3                   	ret    
 804a5c6:	89 f6                	mov    %esi,%esi

0804a5c8 <init_dummy>:
 804a5c8:	55                   	push   %ebp
 804a5c9:	89 e5                	mov    %esp,%ebp
 804a5cb:	83 ec 08             	sub    $0x8,%esp
 804a5ce:	89 ec                	mov    %ebp,%esp
 804a5d0:	5d                   	pop    %ebp
 804a5d1:	c3                   	ret    
 804a5d2:	90                   	nop    
 804a5d3:	90                   	nop    
Disassembly of section .fini:

0804a5d4 <_fini>:
 804a5d4:	55                   	push   %ebp
 804a5d5:	89 e5                	mov    %esp,%ebp
 804a5d7:	53                   	push   %ebx
 804a5d8:	e8 00 00 00 00       	call   804a5dd <_etext+0x9>
 804a5dd:	5b                   	pop    %ebx
 804a5de:	81 c3 6b 14 00 00    	add    $0x146b,%ebx
 804a5e4:	e8 77 ed ff ff       	call   8049360 <__do_global_dtors_aux>
 804a5e9:	8b 5d fc             	mov    0xfffffffc(%ebp),%ebx
 804a5ec:	c9                   	leave  
 804a5ed:	c3                   	ret    
