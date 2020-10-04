
restart:     file format elf32-i386

Disassembly of section .init:

08048e64 <_init>:
 8048e64:	55                   	push   %ebp
 8048e65:	89 e5                	mov    %esp,%ebp
 8048e67:	53                   	push   %ebx
 8048e68:	e8 00 00 00 00       	call   8048e6d <_init+0x9>
 8048e6d:	5b                   	pop    %ebx
 8048e6e:	81 c3 ff 2a 00 00    	add    $0x2aff,%ebx
 8048e74:	83 bb 30 01 00 00 00 	cmpl   $0x0,0x130(%ebx)
 8048e7b:	74 05                	je     8048e82 <_init+0x1e>
 8048e7d:	e8 a2 04 00 00       	call   8049324 <__gmon_start__@plt>
 8048e82:	89 f6                	mov    %esi,%esi
 8048e84:	e8 47 05 00 00       	call   80493d0 <frame_dummy>
 8048e89:	e8 e2 16 00 00       	call   804a570 <__do_global_ctors_aux>
 8048e8e:	8b 5d fc             	mov    0xfffffffc(%ebp),%ebx
 8048e91:	c9                   	leave  
 8048e92:	c3                   	ret    
Disassembly of section .plt:

08048e94 <pthread_detach@plt-0x10>:
 8048e94:	ff 35 70 b9 04 08    	pushl  0x804b970
 8048e9a:	ff 25 74 b9 04 08    	jmp    *0x804b974
 8048ea0:	00 00                	add    %al,(%eax)
	...

08048ea4 <pthread_detach@plt>:
 8048ea4:	ff 25 78 b9 04 08    	jmp    *0x804b978
 8048eaa:	68 00 00 00 00       	push   $0x0
 8048eaf:	e9 e0 ff ff ff       	jmp    8048e94 <_init+0x30>

08048eb4 <sigfillset@plt>:
 8048eb4:	ff 25 7c b9 04 08    	jmp    *0x804b97c
 8048eba:	68 08 00 00 00       	push   $0x8
 8048ebf:	e9 d0 ff ff ff       	jmp    8048e94 <_init+0x30>

08048ec4 <sem_wait@plt>:
 8048ec4:	ff 25 80 b9 04 08    	jmp    *0x804b980
 8048eca:	68 10 00 00 00       	push   $0x10
 8048ecf:	e9 c0 ff ff ff       	jmp    8048e94 <_init+0x30>

08048ed4 <ferror@plt>:
 8048ed4:	ff 25 84 b9 04 08    	jmp    *0x804b984
 8048eda:	68 18 00 00 00       	push   $0x18
 8048edf:	e9 b0 ff ff ff       	jmp    8048e94 <_init+0x30>

08048ee4 <sigaction@plt>:
 8048ee4:	ff 25 88 b9 04 08    	jmp    *0x804b988
 8048eea:	68 20 00 00 00       	push   $0x20
 8048eef:	e9 a0 ff ff ff       	jmp    8048e94 <_init+0x30>

08048ef4 <sigismember@plt>:
 8048ef4:	ff 25 8c b9 04 08    	jmp    *0x804b98c
 8048efa:	68 28 00 00 00       	push   $0x28
 8048eff:	e9 90 ff ff ff       	jmp    8048e94 <_init+0x30>

08048f04 <fdopen@plt>:
 8048f04:	ff 25 90 b9 04 08    	jmp    *0x804b990
 8048f0a:	68 30 00 00 00       	push   $0x30
 8048f0f:	e9 80 ff ff ff       	jmp    8048e94 <_init+0x30>

08048f14 <siglongjmp@plt>:
 8048f14:	ff 25 94 b9 04 08    	jmp    *0x804b994
 8048f1a:	68 38 00 00 00       	push   $0x38
 8048f1f:	e9 70 ff ff ff       	jmp    8048e94 <_init+0x30>

08048f24 <getpgrp@plt>:
 8048f24:	ff 25 98 b9 04 08    	jmp    *0x804b998
 8048f2a:	68 40 00 00 00       	push   $0x40
 8048f2f:	e9 60 ff ff ff       	jmp    8048e94 <_init+0x30>

08048f34 <__register_frame_info@plt>:
 8048f34:	ff 25 9c b9 04 08    	jmp    *0x804b99c
 8048f3a:	68 48 00 00 00       	push   $0x48
 8048f3f:	e9 50 ff ff ff       	jmp    8048e94 <_init+0x30>

08048f44 <write@plt>:
 8048f44:	ff 25 a0 b9 04 08    	jmp    *0x804b9a0
 8048f4a:	68 50 00 00 00       	push   $0x50
 8048f4f:	e9 40 ff ff ff       	jmp    8048e94 <_init+0x30>

08048f54 <close@plt>:
 8048f54:	ff 25 a4 b9 04 08    	jmp    *0x804b9a4
 8048f5a:	68 58 00 00 00       	push   $0x58
 8048f5f:	e9 30 ff ff ff       	jmp    8048e94 <_init+0x30>

08048f64 <sem_init@plt>:
 8048f64:	ff 25 a8 b9 04 08    	jmp    *0x804b9a8
 8048f6a:	68 60 00 00 00       	push   $0x60
 8048f6f:	e9 20 ff ff ff       	jmp    8048e94 <_init+0x30>

08048f74 <fprintf@plt>:
 8048f74:	ff 25 ac b9 04 08    	jmp    *0x804b9ac
 8048f7a:	68 68 00 00 00       	push   $0x68
 8048f7f:	e9 10 ff ff ff       	jmp    8048e94 <_init+0x30>

08048f84 <fork@plt>:
 8048f84:	ff 25 b0 b9 04 08    	jmp    *0x804b9b0
 8048f8a:	68 70 00 00 00       	push   $0x70
 8048f8f:	e9 00 ff ff ff       	jmp    8048e94 <_init+0x30>

08048f94 <pthread_create@plt>:
 8048f94:	ff 25 b4 b9 04 08    	jmp    *0x804b9b4
 8048f9a:	68 78 00 00 00       	push   $0x78
 8048f9f:	e9 f0 fe ff ff       	jmp    8048e94 <_init+0x30>

08048fa4 <select@plt>:
 8048fa4:	ff 25 b8 b9 04 08    	jmp    *0x804b9b8
 8048faa:	68 80 00 00 00       	push   $0x80
 8048faf:	e9 e0 fe ff ff       	jmp    8048e94 <_init+0x30>

08048fb4 <strerror@plt>:
 8048fb4:	ff 25 bc b9 04 08    	jmp    *0x804b9bc
 8048fba:	68 88 00 00 00       	push   $0x88
 8048fbf:	e9 d0 fe ff ff       	jmp    8048e94 <_init+0x30>

08048fc4 <pthread_cancel@plt>:
 8048fc4:	ff 25 c0 b9 04 08    	jmp    *0x804b9c0
 8048fca:	68 90 00 00 00       	push   $0x90
 8048fcf:	e9 c0 fe ff ff       	jmp    8048e94 <_init+0x30>

08048fd4 <mmap@plt>:
 8048fd4:	ff 25 c4 b9 04 08    	jmp    *0x804b9c4
 8048fda:	68 98 00 00 00       	push   $0x98
 8048fdf:	e9 b0 fe ff ff       	jmp    8048e94 <_init+0x30>

08048fe4 <execve@plt>:
 8048fe4:	ff 25 c8 b9 04 08    	jmp    *0x804b9c8
 8048fea:	68 a0 00 00 00       	push   $0xa0
 8048fef:	e9 a0 fe ff ff       	jmp    8048e94 <_init+0x30>

08048ff4 <bcopy@plt>:
 8048ff4:	ff 25 cc b9 04 08    	jmp    *0x804b9cc
 8048ffa:	68 a8 00 00 00       	push   $0xa8
 8048fff:	e9 90 fe ff ff       	jmp    8048e94 <_init+0x30>

08049004 <__errno_location@plt>:
 8049004:	ff 25 d0 b9 04 08    	jmp    *0x804b9d0
 804900a:	68 b0 00 00 00       	push   $0xb0
 804900f:	e9 80 fe ff ff       	jmp    8048e94 <_init+0x30>

08049014 <accept@plt>:
 8049014:	ff 25 d4 b9 04 08    	jmp    *0x804b9d4
 804901a:	68 b8 00 00 00       	push   $0xb8
 804901f:	e9 70 fe ff ff       	jmp    8048e94 <_init+0x30>

08049024 <gethostbyaddr@plt>:
 8049024:	ff 25 d8 b9 04 08    	jmp    *0x804b9d8
 804902a:	68 c0 00 00 00       	push   $0xc0
 804902f:	e9 60 fe ff ff       	jmp    8048e94 <_init+0x30>

08049034 <listen@plt>:
 8049034:	ff 25 dc b9 04 08    	jmp    *0x804b9dc
 804903a:	68 c8 00 00 00       	push   $0xc8
 804903f:	e9 50 fe ff ff       	jmp    8048e94 <_init+0x30>

08049044 <malloc@plt>:
 8049044:	ff 25 e0 b9 04 08    	jmp    *0x804b9e0
 804904a:	68 d0 00 00 00       	push   $0xd0
 804904f:	e9 40 fe ff ff       	jmp    8048e94 <_init+0x30>

08049054 <munmap@plt>:
 8049054:	ff 25 e4 b9 04 08    	jmp    *0x804b9e4
 804905a:	68 d8 00 00 00       	push   $0xd8
 804905f:	e9 30 fe ff ff       	jmp    8048e94 <_init+0x30>

08049064 <fread@plt>:
 8049064:	ff 25 e8 b9 04 08    	jmp    *0x804b9e8
 804906a:	68 e0 00 00 00       	push   $0xe0
 804906f:	e9 20 fe ff ff       	jmp    8048e94 <_init+0x30>

08049074 <__deregister_frame_info@plt>:
 8049074:	ff 25 ec b9 04 08    	jmp    *0x804b9ec
 804907a:	68 e8 00 00 00       	push   $0xe8
 804907f:	e9 10 fe ff ff       	jmp    8048e94 <_init+0x30>

08049084 <__h_errno_location@plt>:
 8049084:	ff 25 f0 b9 04 08    	jmp    *0x804b9f0
 804908a:	68 f0 00 00 00       	push   $0xf0
 804908f:	e9 00 fe ff ff       	jmp    8048e94 <_init+0x30>

08049094 <sem_post@plt>:
 8049094:	ff 25 f4 b9 04 08    	jmp    *0x804b9f4
 804909a:	68 f8 00 00 00       	push   $0xf8
 804909f:	e9 f0 fd ff ff       	jmp    8048e94 <_init+0x30>

080490a4 <__sigsetjmp@plt>:
 80490a4:	ff 25 f8 b9 04 08    	jmp    *0x804b9f8
 80490aa:	68 00 01 00 00       	push   $0x100
 80490af:	e9 e0 fd ff ff       	jmp    8048e94 <_init+0x30>

080490b4 <__xstat@plt>:
 80490b4:	ff 25 fc b9 04 08    	jmp    *0x804b9fc
 80490ba:	68 08 01 00 00       	push   $0x108
 80490bf:	e9 d0 fd ff ff       	jmp    8048e94 <_init+0x30>

080490c4 <setsockopt@plt>:
 80490c4:	ff 25 00 ba 04 08    	jmp    *0x804ba00
 80490ca:	68 10 01 00 00       	push   $0x110
 80490cf:	e9 c0 fd ff ff       	jmp    8048e94 <_init+0x30>

080490d4 <pthread_once@plt>:
 80490d4:	ff 25 04 ba 04 08    	jmp    *0x804ba04
 80490da:	68 18 01 00 00       	push   $0x118
 80490df:	e9 b0 fd ff ff       	jmp    8048e94 <_init+0x30>

080490e4 <waitpid@plt>:
 80490e4:	ff 25 08 ba 04 08    	jmp    *0x804ba08
 80490ea:	68 20 01 00 00       	push   $0x120
 80490ef:	e9 a0 fd ff ff       	jmp    8048e94 <_init+0x30>

080490f4 <fgets@plt>:
 80490f4:	ff 25 0c ba 04 08    	jmp    *0x804ba0c
 80490fa:	68 28 01 00 00       	push   $0x128
 80490ff:	e9 90 fd ff ff       	jmp    8048e94 <_init+0x30>

08049104 <__fxstat@plt>:
 8049104:	ff 25 10 ba 04 08    	jmp    *0x804ba10
 804910a:	68 30 01 00 00       	push   $0x130
 804910f:	e9 80 fd ff ff       	jmp    8048e94 <_init+0x30>

08049114 <fputs@plt>:
 8049114:	ff 25 14 ba 04 08    	jmp    *0x804ba14
 804911a:	68 38 01 00 00       	push   $0x138
 804911f:	e9 70 fd ff ff       	jmp    8048e94 <_init+0x30>

08049124 <sleep@plt>:
 8049124:	ff 25 18 ba 04 08    	jmp    *0x804ba18
 804912a:	68 40 01 00 00       	push   $0x140
 804912f:	e9 60 fd ff ff       	jmp    8048e94 <_init+0x30>

08049134 <sigaddset@plt>:
 8049134:	ff 25 1c ba 04 08    	jmp    *0x804ba1c
 804913a:	68 48 01 00 00       	push   $0x148
 804913f:	e9 50 fd ff ff       	jmp    8048e94 <_init+0x30>

08049144 <sigprocmask@plt>:
 8049144:	ff 25 20 ba 04 08    	jmp    *0x804ba20
 804914a:	68 50 01 00 00       	push   $0x150
 804914f:	e9 40 fd ff ff       	jmp    8048e94 <_init+0x30>

08049154 <pause@plt>:
 8049154:	ff 25 24 ba 04 08    	jmp    *0x804ba24
 804915a:	68 58 01 00 00       	push   $0x158
 804915f:	e9 30 fd ff ff       	jmp    8048e94 <_init+0x30>

08049164 <pthread_self@plt>:
 8049164:	ff 25 28 ba 04 08    	jmp    *0x804ba28
 804916a:	68 60 01 00 00       	push   $0x160
 804916f:	e9 20 fd ff ff       	jmp    8048e94 <_init+0x30>

08049174 <setpgid@plt>:
 8049174:	ff 25 2c ba 04 08    	jmp    *0x804ba2c
 804917a:	68 68 01 00 00       	push   $0x168
 804917f:	e9 10 fd ff ff       	jmp    8048e94 <_init+0x30>

08049184 <__libc_start_main@plt>:
 8049184:	ff 25 30 ba 04 08    	jmp    *0x804ba30
 804918a:	68 70 01 00 00       	push   $0x170
 804918f:	e9 00 fd ff ff       	jmp    8048e94 <_init+0x30>

08049194 <dup2@plt>:
 8049194:	ff 25 34 ba 04 08    	jmp    *0x804ba34
 804919a:	68 78 01 00 00       	push   $0x178
 804919f:	e9 f0 fc ff ff       	jmp    8048e94 <_init+0x30>

080491a4 <realloc@plt>:
 80491a4:	ff 25 38 ba 04 08    	jmp    *0x804ba38
 80491aa:	68 80 01 00 00       	push   $0x180
 80491af:	e9 e0 fc ff ff       	jmp    8048e94 <_init+0x30>

080491b4 <printf@plt>:
 80491b4:	ff 25 3c ba 04 08    	jmp    *0x804ba3c
 80491ba:	68 88 01 00 00       	push   $0x188
 80491bf:	e9 d0 fc ff ff       	jmp    8048e94 <_init+0x30>

080491c4 <bind@plt>:
 80491c4:	ff 25 40 ba 04 08    	jmp    *0x804ba40
 80491ca:	68 90 01 00 00       	push   $0x190
 80491cf:	e9 c0 fc ff ff       	jmp    8048e94 <_init+0x30>

080491d4 <lseek@plt>:
 80491d4:	ff 25 44 ba 04 08    	jmp    *0x804ba44
 80491da:	68 98 01 00 00       	push   $0x198
 80491df:	e9 b0 fc ff ff       	jmp    8048e94 <_init+0x30>

080491e4 <memcpy@plt>:
 80491e4:	ff 25 48 ba 04 08    	jmp    *0x804ba48
 80491ea:	68 a0 01 00 00       	push   $0x1a0
 80491ef:	e9 a0 fc ff ff       	jmp    8048e94 <_init+0x30>

080491f4 <fclose@plt>:
 80491f4:	ff 25 4c ba 04 08    	jmp    *0x804ba4c
 80491fa:	68 a8 01 00 00       	push   $0x1a8
 80491ff:	e9 90 fc ff ff       	jmp    8048e94 <_init+0x30>

08049204 <open@plt>:
 8049204:	ff 25 50 ba 04 08    	jmp    *0x804ba50
 804920a:	68 b0 01 00 00       	push   $0x1b0
 804920f:	e9 80 fc ff ff       	jmp    8048e94 <_init+0x30>

08049214 <gethostbyname@plt>:
 8049214:	ff 25 54 ba 04 08    	jmp    *0x804ba54
 804921a:	68 b8 01 00 00       	push   $0x1b8
 804921f:	e9 70 fc ff ff       	jmp    8048e94 <_init+0x30>

08049224 <sigemptyset@plt>:
 8049224:	ff 25 58 ba 04 08    	jmp    *0x804ba58
 804922a:	68 c0 01 00 00       	push   $0x1c0
 804922f:	e9 60 fc ff ff       	jmp    8048e94 <_init+0x30>

08049234 <pthread_join@plt>:
 8049234:	ff 25 5c ba 04 08    	jmp    *0x804ba5c
 804923a:	68 c8 01 00 00       	push   $0x1c8
 804923f:	e9 50 fc ff ff       	jmp    8048e94 <_init+0x30>

08049244 <bzero@plt>:
 8049244:	ff 25 60 ba 04 08    	jmp    *0x804ba60
 804924a:	68 d0 01 00 00       	push   $0x1d0
 804924f:	e9 40 fc ff ff       	jmp    8048e94 <_init+0x30>

08049254 <pthread_exit@plt>:
 8049254:	ff 25 64 ba 04 08    	jmp    *0x804ba64
 804925a:	68 d8 01 00 00       	push   $0x1d8
 804925f:	e9 30 fc ff ff       	jmp    8048e94 <_init+0x30>

08049264 <exit@plt>:
 8049264:	ff 25 68 ba 04 08    	jmp    *0x804ba68
 804926a:	68 e0 01 00 00       	push   $0x1e0
 804926f:	e9 20 fc ff ff       	jmp    8048e94 <_init+0x30>

08049274 <calloc@plt>:
 8049274:	ff 25 6c ba 04 08    	jmp    *0x804ba6c
 804927a:	68 e8 01 00 00       	push   $0x1e8
 804927f:	e9 10 fc ff ff       	jmp    8048e94 <_init+0x30>

08049284 <free@plt>:
 8049284:	ff 25 70 ba 04 08    	jmp    *0x804ba70
 804928a:	68 f0 01 00 00       	push   $0x1f0
 804928f:	e9 00 fc ff ff       	jmp    8048e94 <_init+0x30>

08049294 <connect@plt>:
 8049294:	ff 25 74 ba 04 08    	jmp    *0x804ba74
 804929a:	68 f8 01 00 00       	push   $0x1f8
 804929f:	e9 f0 fb ff ff       	jmp    8048e94 <_init+0x30>

080492a4 <fopen@plt>:
 80492a4:	ff 25 78 ba 04 08    	jmp    *0x804ba78
 80492aa:	68 00 02 00 00       	push   $0x200
 80492af:	e9 e0 fb ff ff       	jmp    8048e94 <_init+0x30>

080492b4 <kill@plt>:
 80492b4:	ff 25 7c ba 04 08    	jmp    *0x804ba7c
 80492ba:	68 08 02 00 00       	push   $0x208
 80492bf:	e9 d0 fb ff ff       	jmp    8048e94 <_init+0x30>

080492c4 <fwrite@plt>:
 80492c4:	ff 25 80 ba 04 08    	jmp    *0x804ba80
 80492ca:	68 10 02 00 00       	push   $0x210
 80492cf:	e9 c0 fb ff ff       	jmp    8048e94 <_init+0x30>

080492d4 <socket@plt>:
 80492d4:	ff 25 84 ba 04 08    	jmp    *0x804ba84
 80492da:	68 18 02 00 00       	push   $0x218
 80492df:	e9 b0 fb ff ff       	jmp    8048e94 <_init+0x30>

080492e4 <sigdelset@plt>:
 80492e4:	ff 25 88 ba 04 08    	jmp    *0x804ba88
 80492ea:	68 20 02 00 00       	push   $0x220
 80492ef:	e9 a0 fb ff ff       	jmp    8048e94 <_init+0x30>

080492f4 <read@plt>:
 80492f4:	ff 25 8c ba 04 08    	jmp    *0x804ba8c
 80492fa:	68 28 02 00 00       	push   $0x228
 80492ff:	e9 90 fb ff ff       	jmp    8048e94 <_init+0x30>

08049304 <alarm@plt>:
 8049304:	ff 25 90 ba 04 08    	jmp    *0x804ba90
 804930a:	68 30 02 00 00       	push   $0x230
 804930f:	e9 80 fb ff ff       	jmp    8048e94 <_init+0x30>

08049314 <wait@plt>:
 8049314:	ff 25 94 ba 04 08    	jmp    *0x804ba94
 804931a:	68 38 02 00 00       	push   $0x238
 804931f:	e9 70 fb ff ff       	jmp    8048e94 <_init+0x30>

08049324 <__gmon_start__@plt>:
 8049324:	ff 25 98 ba 04 08    	jmp    *0x804ba98
 804932a:	68 40 02 00 00       	push   $0x240
 804932f:	e9 60 fb ff ff       	jmp    8048e94 <_init+0x30>
Disassembly of section .text:

08049340 <_start>:
 8049340:	31 ed                	xor    %ebp,%ebp
 8049342:	5e                   	pop    %esi
 8049343:	89 e1                	mov    %esp,%ecx
 8049345:	83 e4 f8             	and    $0xfffffff8,%esp
 8049348:	50                   	push   %eax
 8049349:	54                   	push   %esp
 804934a:	52                   	push   %edx
 804934b:	68 a4 a5 04 08       	push   $0x804a5a4
 8049350:	68 64 8e 04 08       	push   $0x8048e64
 8049355:	51                   	push   %ecx
 8049356:	56                   	push   %esi
 8049357:	68 28 94 04 08       	push   $0x8049428
 804935c:	e8 23 fe ff ff       	call   8049184 <__libc_start_main@plt>
 8049361:	f4                   	hlt    
 8049362:	90                   	nop    
 8049363:	90                   	nop    

08049364 <gcc2_compiled.>:
 8049364:	90 90 90 90 90 90 90 90 90 90 90 90                 ............

08049370 <__do_global_dtors_aux>:
 8049370:	55                   	push   %ebp
 8049371:	89 e5                	mov    %esp,%ebp
 8049373:	83 ec 08             	sub    $0x8,%esp
 8049376:	83 3d 54 b9 04 08 00 	cmpl   $0x0,0x804b954
 804937d:	75 3e                	jne    80493bd <__do_global_dtors_aux+0x4d>
 804937f:	eb 12                	jmp    8049393 <__do_global_dtors_aux+0x23>
 8049381:	a1 50 b9 04 08       	mov    0x804b950,%eax
 8049386:	8d 50 04             	lea    0x4(%eax),%edx
 8049389:	89 15 50 b9 04 08    	mov    %edx,0x804b950
 804938f:	8b 00                	mov    (%eax),%eax
 8049391:	ff d0                	call   *%eax
 8049393:	a1 50 b9 04 08       	mov    0x804b950,%eax
 8049398:	83 38 00             	cmpl   $0x0,(%eax)
 804939b:	75 e4                	jne    8049381 <__do_global_dtors_aux+0x11>
 804939d:	b8 74 90 04 08       	mov    $0x8049074,%eax
 80493a2:	85 c0                	test   %eax,%eax
 80493a4:	74 0d                	je     80493b3 <__do_global_dtors_aux+0x43>
 80493a6:	83 c4 f4             	add    $0xfffffff4,%esp
 80493a9:	68 58 b9 04 08       	push   $0x804b958
 80493ae:	e8 c1 fc ff ff       	call   8049074 <__deregister_frame_info@plt>
 80493b3:	c7 05 54 b9 04 08 01 	movl   $0x1,0x804b954
 80493ba:	00 00 00 
 80493bd:	89 ec                	mov    %ebp,%esp
 80493bf:	5d                   	pop    %ebp
 80493c0:	c3                   	ret    
 80493c1:	8d 76 00             	lea    0x0(%esi),%esi

080493c4 <fini_dummy>:
 80493c4:	55                   	push   %ebp
 80493c5:	89 e5                	mov    %esp,%ebp
 80493c7:	83 ec 08             	sub    $0x8,%esp
 80493ca:	89 ec                	mov    %ebp,%esp
 80493cc:	5d                   	pop    %ebp
 80493cd:	c3                   	ret    
 80493ce:	89 f6                	mov    %esi,%esi

080493d0 <frame_dummy>:
 80493d0:	55                   	push   %ebp
 80493d1:	89 e5                	mov    %esp,%ebp
 80493d3:	83 ec 08             	sub    $0x8,%esp
 80493d6:	b8 34 8f 04 08       	mov    $0x8048f34,%eax
 80493db:	85 c0                	test   %eax,%eax
 80493dd:	74 12                	je     80493f1 <frame_dummy+0x21>
 80493df:	83 c4 f8             	add    $0xfffffff8,%esp
 80493e2:	68 64 bb 04 08       	push   $0x804bb64
 80493e7:	68 58 b9 04 08       	push   $0x804b958
 80493ec:	e8 43 fb ff ff       	call   8048f34 <__register_frame_info@plt>
 80493f1:	89 ec                	mov    %ebp,%esp
 80493f3:	5d                   	pop    %ebp
 80493f4:	c3                   	ret    
 80493f5:	8d 76 00             	lea    0x0(%esi),%esi

080493f8 <init_dummy>:
 80493f8:	55                   	push   %ebp
 80493f9:	89 e5                	mov    %esp,%ebp
 80493fb:	83 ec 08             	sub    $0x8,%esp
 80493fe:	89 ec                	mov    %ebp,%esp
 8049400:	5d                   	pop    %ebp
 8049401:	c3                   	ret    
 8049402:	90                   	nop    
 8049403:	90                   	nop    
 8049404:	90                   	nop    
 8049405:	90                   	nop    
 8049406:	90                   	nop    
 8049407:	90                   	nop    
 8049408:	90                   	nop    
 8049409:	90                   	nop    
 804940a:	90                   	nop    
 804940b:	90                   	nop    
 804940c:	90                   	nop    
 804940d:	90                   	nop    
 804940e:	90                   	nop    
 804940f:	90                   	nop    

08049410 <handler>:
 8049410:	55                   	push   %ebp
 8049411:	89 e5                	mov    %esp,%ebp
 8049413:	83 ec 08             	sub    $0x8,%esp
 8049416:	83 c4 f8             	add    $0xfffffff8,%esp
 8049419:	6a 01                	push   $0x1
 804941b:	68 80 bb 04 08       	push   $0x804bb80
 8049420:	e8 ef fa ff ff       	call   8048f14 <siglongjmp@plt>
 8049425:	8d 76 00             	lea    0x0(%esi),%esi

08049428 <main>:
 8049428:	55                   	push   %ebp
 8049429:	89 e5                	mov    %esp,%ebp
 804942b:	83 ec 08             	sub    $0x8,%esp
 804942e:	83 c4 f8             	add    $0xfffffff8,%esp
 8049431:	68 10 94 04 08       	push   $0x8049410
 8049436:	6a 02                	push   $0x2
 8049438:	e8 9b 02 00 00       	call   80496d8 <Signal>
 804943d:	83 c4 f8             	add    $0xfffffff8,%esp
 8049440:	6a 01                	push   $0x1
 8049442:	68 80 bb 04 08       	push   $0x804bb80
 8049447:	e8 58 fc ff ff       	call   80490a4 <__sigsetjmp@plt>
 804944c:	83 c4 20             	add    $0x20,%esp
 804944f:	85 c0                	test   %eax,%eax
 8049451:	75 0d                	jne    8049460 <main+0x38>
 8049453:	83 c4 f4             	add    $0xfffffff4,%esp
 8049456:	68 c8 a5 04 08       	push   $0x804a5c8
 804945b:	eb 0b                	jmp    8049468 <main+0x40>
 804945d:	8d 76 00             	lea    0x0(%esi),%esi
 8049460:	83 c4 f4             	add    $0xfffffff4,%esp
 8049463:	68 d2 a5 04 08       	push   $0x804a5d2
 8049468:	e8 47 fd ff ff       	call   80491b4 <printf@plt>
 804946d:	83 c4 10             	add    $0x10,%esp
 8049470:	83 c4 f4             	add    $0xfffffff4,%esp
 8049473:	6a 01                	push   $0x1
 8049475:	e8 ee 01 00 00       	call   8049668 <Sleep>
 804947a:	83 c4 f4             	add    $0xfffffff4,%esp
 804947d:	68 de a5 04 08       	push   $0x804a5de
 8049482:	e8 2d fd ff ff       	call   80491b4 <printf@plt>
 8049487:	83 c4 20             	add    $0x20,%esp
 804948a:	eb e4                	jmp    8049470 <main+0x48>
 804948c:	90                   	nop    
 804948d:	90                   	nop    
 804948e:	90                   	nop    
 804948f:	90                   	nop    

08049490 <unix_error>:
 8049490:	55                   	push   %ebp
 8049491:	89 e5                	mov    %esp,%ebp
 8049493:	83 ec 14             	sub    $0x14,%esp
 8049496:	53                   	push   %ebx
 8049497:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804949a:	83 c4 f4             	add    $0xfffffff4,%esp
 804949d:	e8 62 fb ff ff       	call   8049004 <__errno_location@plt>
 80494a2:	8b 00                	mov    (%eax),%eax
 80494a4:	50                   	push   %eax
 80494a5:	e8 0a fb ff ff       	call   8048fb4 <strerror@plt>
 80494aa:	50                   	push   %eax
 80494ab:	a1 60 bb 04 08       	mov    0x804bb60,%eax
 80494b0:	53                   	push   %ebx
 80494b1:	68 ed a5 04 08       	push   $0x804a5ed
 80494b6:	50                   	push   %eax
 80494b7:	e8 b8 fa ff ff       	call   8048f74 <fprintf@plt>
 80494bc:	83 c4 20             	add    $0x20,%esp
 80494bf:	83 c4 f4             	add    $0xfffffff4,%esp
 80494c2:	6a 00                	push   $0x0
 80494c4:	e8 9b fd ff ff       	call   8049264 <exit@plt>
 80494c9:	8d 76 00             	lea    0x0(%esi),%esi

080494cc <posix_error>:
 80494cc:	55                   	push   %ebp
 80494cd:	89 e5                	mov    %esp,%ebp
 80494cf:	83 ec 14             	sub    $0x14,%esp
 80494d2:	53                   	push   %ebx
 80494d3:	8b 45 08             	mov    0x8(%ebp),%eax
 80494d6:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 80494d9:	83 c4 f4             	add    $0xfffffff4,%esp
 80494dc:	50                   	push   %eax
 80494dd:	e8 d2 fa ff ff       	call   8048fb4 <strerror@plt>
 80494e2:	50                   	push   %eax
 80494e3:	a1 60 bb 04 08       	mov    0x804bb60,%eax
 80494e8:	53                   	push   %ebx
 80494e9:	68 ed a5 04 08       	push   $0x804a5ed
 80494ee:	50                   	push   %eax
 80494ef:	e8 80 fa ff ff       	call   8048f74 <fprintf@plt>
 80494f4:	83 c4 20             	add    $0x20,%esp
 80494f7:	83 c4 f4             	add    $0xfffffff4,%esp
 80494fa:	6a 00                	push   $0x0
 80494fc:	e8 63 fd ff ff       	call   8049264 <exit@plt>
 8049501:	8d 76 00             	lea    0x0(%esi),%esi

08049504 <dns_error>:
 8049504:	55                   	push   %ebp
 8049505:	89 e5                	mov    %esp,%ebp
 8049507:	83 ec 14             	sub    $0x14,%esp
 804950a:	53                   	push   %ebx
 804950b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804950e:	e8 71 fb ff ff       	call   8049084 <__h_errno_location@plt>
 8049513:	8b 00                	mov    (%eax),%eax
 8049515:	50                   	push   %eax
 8049516:	a1 60 bb 04 08       	mov    0x804bb60,%eax
 804951b:	53                   	push   %ebx
 804951c:	68 f5 a5 04 08       	push   $0x804a5f5
 8049521:	50                   	push   %eax
 8049522:	e8 4d fa ff ff       	call   8048f74 <fprintf@plt>
 8049527:	83 c4 f4             	add    $0xfffffff4,%esp
 804952a:	6a 00                	push   $0x0
 804952c:	e8 33 fd ff ff       	call   8049264 <exit@plt>
 8049531:	8d 76 00             	lea    0x0(%esi),%esi

08049534 <app_error>:
 8049534:	55                   	push   %ebp
 8049535:	89 e5                	mov    %esp,%ebp
 8049537:	83 ec 08             	sub    $0x8,%esp
 804953a:	8b 45 08             	mov    0x8(%ebp),%eax
 804953d:	83 c4 fc             	add    $0xfffffffc,%esp
 8049540:	50                   	push   %eax
 8049541:	a1 60 bb 04 08       	mov    0x804bb60,%eax
 8049546:	68 07 a6 04 08       	push   $0x804a607
 804954b:	50                   	push   %eax
 804954c:	e8 23 fa ff ff       	call   8048f74 <fprintf@plt>
 8049551:	83 c4 f4             	add    $0xfffffff4,%esp
 8049554:	6a 00                	push   $0x0
 8049556:	e8 09 fd ff ff       	call   8049264 <exit@plt>
 804955b:	90                   	nop    

0804955c <Fork>:
 804955c:	55                   	push   %ebp
 804955d:	89 e5                	mov    %esp,%ebp
 804955f:	83 ec 14             	sub    $0x14,%esp
 8049562:	53                   	push   %ebx
 8049563:	e8 1c fa ff ff       	call   8048f84 <fork@plt>
 8049568:	89 c3                	mov    %eax,%ebx
 804956a:	85 db                	test   %ebx,%ebx
 804956c:	7d 0d                	jge    804957b <Fork+0x1f>
 804956e:	83 c4 f4             	add    $0xfffffff4,%esp
 8049571:	68 0b a6 04 08       	push   $0x804a60b
 8049576:	e8 15 ff ff ff       	call   8049490 <unix_error>
 804957b:	89 d8                	mov    %ebx,%eax
 804957d:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049580:	89 ec                	mov    %ebp,%esp
 8049582:	5d                   	pop    %ebp
 8049583:	c3                   	ret    

08049584 <Execve>:
 8049584:	55                   	push   %ebp
 8049585:	89 e5                	mov    %esp,%ebp
 8049587:	83 ec 08             	sub    $0x8,%esp
 804958a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804958d:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049590:	8b 45 10             	mov    0x10(%ebp),%eax
 8049593:	83 c4 fc             	add    $0xfffffffc,%esp
 8049596:	50                   	push   %eax
 8049597:	52                   	push   %edx
 8049598:	51                   	push   %ecx
 8049599:	e8 46 fa ff ff       	call   8048fe4 <execve@plt>
 804959e:	83 c4 10             	add    $0x10,%esp
 80495a1:	85 c0                	test   %eax,%eax
 80495a3:	7d 0d                	jge    80495b2 <Execve+0x2e>
 80495a5:	83 c4 f4             	add    $0xfffffff4,%esp
 80495a8:	68 16 a6 04 08       	push   $0x804a616
 80495ad:	e8 de fe ff ff       	call   8049490 <unix_error>
 80495b2:	89 ec                	mov    %ebp,%esp
 80495b4:	5d                   	pop    %ebp
 80495b5:	c3                   	ret    
 80495b6:	89 f6                	mov    %esi,%esi

080495b8 <Wait>:
 80495b8:	55                   	push   %ebp
 80495b9:	89 e5                	mov    %esp,%ebp
 80495bb:	83 ec 14             	sub    $0x14,%esp
 80495be:	53                   	push   %ebx
 80495bf:	8b 45 08             	mov    0x8(%ebp),%eax
 80495c2:	83 c4 f4             	add    $0xfffffff4,%esp
 80495c5:	50                   	push   %eax
 80495c6:	e8 49 fd ff ff       	call   8049314 <wait@plt>
 80495cb:	89 c3                	mov    %eax,%ebx
 80495cd:	83 c4 10             	add    $0x10,%esp
 80495d0:	85 db                	test   %ebx,%ebx
 80495d2:	7d 0d                	jge    80495e1 <Wait+0x29>
 80495d4:	83 c4 f4             	add    $0xfffffff4,%esp
 80495d7:	68 23 a6 04 08       	push   $0x804a623
 80495dc:	e8 af fe ff ff       	call   8049490 <unix_error>
 80495e1:	89 d8                	mov    %ebx,%eax
 80495e3:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 80495e6:	89 ec                	mov    %ebp,%esp
 80495e8:	5d                   	pop    %ebp
 80495e9:	c3                   	ret    
 80495ea:	89 f6                	mov    %esi,%esi

080495ec <Waitpid>:
 80495ec:	55                   	push   %ebp
 80495ed:	89 e5                	mov    %esp,%ebp
 80495ef:	83 ec 14             	sub    $0x14,%esp
 80495f2:	53                   	push   %ebx
 80495f3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 80495f6:	8b 55 0c             	mov    0xc(%ebp),%edx
 80495f9:	8b 45 10             	mov    0x10(%ebp),%eax
 80495fc:	83 c4 fc             	add    $0xfffffffc,%esp
 80495ff:	50                   	push   %eax
 8049600:	52                   	push   %edx
 8049601:	51                   	push   %ecx
 8049602:	e8 dd fa ff ff       	call   80490e4 <waitpid@plt>
 8049607:	89 c3                	mov    %eax,%ebx
 8049609:	83 c4 10             	add    $0x10,%esp
 804960c:	85 db                	test   %ebx,%ebx
 804960e:	7d 0d                	jge    804961d <Waitpid+0x31>
 8049610:	83 c4 f4             	add    $0xfffffff4,%esp
 8049613:	68 2e a6 04 08       	push   $0x804a62e
 8049618:	e8 73 fe ff ff       	call   8049490 <unix_error>
 804961d:	89 d8                	mov    %ebx,%eax
 804961f:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049622:	89 ec                	mov    %ebp,%esp
 8049624:	5d                   	pop    %ebp
 8049625:	c3                   	ret    
 8049626:	89 f6                	mov    %esi,%esi

08049628 <Kill>:
 8049628:	55                   	push   %ebp
 8049629:	89 e5                	mov    %esp,%ebp
 804962b:	83 ec 08             	sub    $0x8,%esp
 804962e:	8b 55 08             	mov    0x8(%ebp),%edx
 8049631:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049634:	83 c4 f8             	add    $0xfffffff8,%esp
 8049637:	50                   	push   %eax
 8049638:	52                   	push   %edx
 8049639:	e8 76 fc ff ff       	call   80492b4 <kill@plt>
 804963e:	83 c4 10             	add    $0x10,%esp
 8049641:	85 c0                	test   %eax,%eax
 8049643:	7d 0d                	jge    8049652 <Kill+0x2a>
 8049645:	83 c4 f4             	add    $0xfffffff4,%esp
 8049648:	68 3c a6 04 08       	push   $0x804a63c
 804964d:	e8 3e fe ff ff       	call   8049490 <unix_error>
 8049652:	89 ec                	mov    %ebp,%esp
 8049654:	5d                   	pop    %ebp
 8049655:	c3                   	ret    
 8049656:	89 f6                	mov    %esi,%esi

08049658 <Pause>:
 8049658:	55                   	push   %ebp
 8049659:	89 e5                	mov    %esp,%ebp
 804965b:	83 ec 08             	sub    $0x8,%esp
 804965e:	e8 f1 fa ff ff       	call   8049154 <pause@plt>
 8049663:	89 ec                	mov    %ebp,%esp
 8049665:	5d                   	pop    %ebp
 8049666:	c3                   	ret    
 8049667:	90                   	nop    

08049668 <Sleep>:
 8049668:	55                   	push   %ebp
 8049669:	89 e5                	mov    %esp,%ebp
 804966b:	83 ec 08             	sub    $0x8,%esp
 804966e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049671:	83 c4 f4             	add    $0xfffffff4,%esp
 8049674:	50                   	push   %eax
 8049675:	e8 aa fa ff ff       	call   8049124 <sleep@plt>
 804967a:	89 ec                	mov    %ebp,%esp
 804967c:	5d                   	pop    %ebp
 804967d:	c3                   	ret    
 804967e:	89 f6                	mov    %esi,%esi

08049680 <Alarm>:
 8049680:	55                   	push   %ebp
 8049681:	89 e5                	mov    %esp,%ebp
 8049683:	83 ec 08             	sub    $0x8,%esp
 8049686:	8b 45 08             	mov    0x8(%ebp),%eax
 8049689:	83 c4 f4             	add    $0xfffffff4,%esp
 804968c:	50                   	push   %eax
 804968d:	e8 72 fc ff ff       	call   8049304 <alarm@plt>
 8049692:	89 ec                	mov    %ebp,%esp
 8049694:	5d                   	pop    %ebp
 8049695:	c3                   	ret    
 8049696:	89 f6                	mov    %esi,%esi

08049698 <Setpgid>:
 8049698:	55                   	push   %ebp
 8049699:	89 e5                	mov    %esp,%ebp
 804969b:	83 ec 08             	sub    $0x8,%esp
 804969e:	8b 55 08             	mov    0x8(%ebp),%edx
 80496a1:	8b 45 0c             	mov    0xc(%ebp),%eax
 80496a4:	83 c4 f8             	add    $0xfffffff8,%esp
 80496a7:	50                   	push   %eax
 80496a8:	52                   	push   %edx
 80496a9:	e8 c6 fa ff ff       	call   8049174 <setpgid@plt>
 80496ae:	83 c4 10             	add    $0x10,%esp
 80496b1:	85 c0                	test   %eax,%eax
 80496b3:	7d 0d                	jge    80496c2 <Setpgid+0x2a>
 80496b5:	83 c4 f4             	add    $0xfffffff4,%esp
 80496b8:	68 53 a6 04 08       	push   $0x804a653
 80496bd:	e8 ce fd ff ff       	call   8049490 <unix_error>
 80496c2:	89 ec                	mov    %ebp,%esp
 80496c4:	5d                   	pop    %ebp
 80496c5:	c3                   	ret    
 80496c6:	89 f6                	mov    %esi,%esi

080496c8 <Getpgrp>:
 80496c8:	55                   	push   %ebp
 80496c9:	89 e5                	mov    %esp,%ebp
 80496cb:	83 ec 08             	sub    $0x8,%esp
 80496ce:	e8 51 f8 ff ff       	call   8048f24 <getpgrp@plt>
 80496d3:	89 ec                	mov    %ebp,%esp
 80496d5:	5d                   	pop    %ebp
 80496d6:	c3                   	ret    
 80496d7:	90                   	nop    

080496d8 <Signal>:
 80496d8:	55                   	push   %ebp
 80496d9:	89 e5                	mov    %esp,%ebp
 80496db:	81 ec 20 01 00 00    	sub    $0x120,%esp
 80496e1:	56                   	push   %esi
 80496e2:	53                   	push   %ebx
 80496e3:	8b 75 08             	mov    0x8(%ebp),%esi
 80496e6:	8b 45 0c             	mov    0xc(%ebp),%eax
 80496e9:	89 85 74 ff ff ff    	mov    %eax,0xffffff74(%ebp)
 80496ef:	83 c4 f4             	add    $0xfffffff4,%esp
 80496f2:	8d 9d 74 ff ff ff    	lea    0xffffff74(%ebp),%ebx
 80496f8:	8d 85 78 ff ff ff    	lea    0xffffff78(%ebp),%eax
 80496fe:	50                   	push   %eax
 80496ff:	e8 20 fb ff ff       	call   8049224 <sigemptyset@plt>
 8049704:	c7 45 f8 00 00 00 10 	movl   $0x10000000,0xfffffff8(%ebp)
 804970b:	83 c4 fc             	add    $0xfffffffc,%esp
 804970e:	8d 85 e8 fe ff ff    	lea    0xfffffee8(%ebp),%eax
 8049714:	50                   	push   %eax
 8049715:	53                   	push   %ebx
 8049716:	56                   	push   %esi
 8049717:	e8 c8 f7 ff ff       	call   8048ee4 <sigaction@plt>
 804971c:	83 c4 20             	add    $0x20,%esp
 804971f:	85 c0                	test   %eax,%eax
 8049721:	7d 0d                	jge    8049730 <Signal+0x58>
 8049723:	83 c4 f4             	add    $0xfffffff4,%esp
 8049726:	68 61 a6 04 08       	push   $0x804a661
 804972b:	e8 60 fd ff ff       	call   8049490 <unix_error>
 8049730:	8b 85 e8 fe ff ff    	mov    0xfffffee8(%ebp),%eax
 8049736:	8d a5 d8 fe ff ff    	lea    0xfffffed8(%ebp),%esp
 804973c:	5b                   	pop    %ebx
 804973d:	5e                   	pop    %esi
 804973e:	89 ec                	mov    %ebp,%esp
 8049740:	5d                   	pop    %ebp
 8049741:	c3                   	ret    
 8049742:	89 f6                	mov    %esi,%esi

08049744 <Sigprocmask>:
 8049744:	55                   	push   %ebp
 8049745:	89 e5                	mov    %esp,%ebp
 8049747:	83 ec 08             	sub    $0x8,%esp
 804974a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804974d:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049750:	8b 45 10             	mov    0x10(%ebp),%eax
 8049753:	83 c4 fc             	add    $0xfffffffc,%esp
 8049756:	50                   	push   %eax
 8049757:	52                   	push   %edx
 8049758:	51                   	push   %ecx
 8049759:	e8 e6 f9 ff ff       	call   8049144 <sigprocmask@plt>
 804975e:	83 c4 10             	add    $0x10,%esp
 8049761:	85 c0                	test   %eax,%eax
 8049763:	7d 0d                	jge    8049772 <Sigprocmask+0x2e>
 8049765:	83 c4 f4             	add    $0xfffffff4,%esp
 8049768:	68 6e a6 04 08       	push   $0x804a66e
 804976d:	e8 1e fd ff ff       	call   8049490 <unix_error>
 8049772:	89 ec                	mov    %ebp,%esp
 8049774:	5d                   	pop    %ebp
 8049775:	c3                   	ret    
 8049776:	89 f6                	mov    %esi,%esi

08049778 <Sigemptyset>:
 8049778:	55                   	push   %ebp
 8049779:	89 e5                	mov    %esp,%ebp
 804977b:	83 ec 08             	sub    $0x8,%esp
 804977e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049781:	83 c4 f4             	add    $0xfffffff4,%esp
 8049784:	50                   	push   %eax
 8049785:	e8 9a fa ff ff       	call   8049224 <sigemptyset@plt>
 804978a:	83 c4 10             	add    $0x10,%esp
 804978d:	85 c0                	test   %eax,%eax
 804978f:	7d 0d                	jge    804979e <Sigemptyset+0x26>
 8049791:	83 c4 f4             	add    $0xfffffff4,%esp
 8049794:	68 80 a6 04 08       	push   $0x804a680
 8049799:	e8 f2 fc ff ff       	call   8049490 <unix_error>
 804979e:	89 ec                	mov    %ebp,%esp
 80497a0:	5d                   	pop    %ebp
 80497a1:	c3                   	ret    
 80497a2:	89 f6                	mov    %esi,%esi

080497a4 <Sigfillset>:
 80497a4:	55                   	push   %ebp
 80497a5:	89 e5                	mov    %esp,%ebp
 80497a7:	83 ec 08             	sub    $0x8,%esp
 80497aa:	8b 45 08             	mov    0x8(%ebp),%eax
 80497ad:	83 c4 f4             	add    $0xfffffff4,%esp
 80497b0:	50                   	push   %eax
 80497b1:	e8 fe f6 ff ff       	call   8048eb4 <sigfillset@plt>
 80497b6:	83 c4 10             	add    $0x10,%esp
 80497b9:	85 c0                	test   %eax,%eax
 80497bb:	7d 0d                	jge    80497ca <Sigfillset+0x26>
 80497bd:	83 c4 f4             	add    $0xfffffff4,%esp
 80497c0:	68 92 a6 04 08       	push   $0x804a692
 80497c5:	e8 c6 fc ff ff       	call   8049490 <unix_error>
 80497ca:	89 ec                	mov    %ebp,%esp
 80497cc:	5d                   	pop    %ebp
 80497cd:	c3                   	ret    
 80497ce:	89 f6                	mov    %esi,%esi

080497d0 <Sigaddset>:
 80497d0:	55                   	push   %ebp
 80497d1:	89 e5                	mov    %esp,%ebp
 80497d3:	83 ec 08             	sub    $0x8,%esp
 80497d6:	8b 55 08             	mov    0x8(%ebp),%edx
 80497d9:	8b 45 0c             	mov    0xc(%ebp),%eax
 80497dc:	83 c4 f8             	add    $0xfffffff8,%esp
 80497df:	50                   	push   %eax
 80497e0:	52                   	push   %edx
 80497e1:	e8 4e f9 ff ff       	call   8049134 <sigaddset@plt>
 80497e6:	83 c4 10             	add    $0x10,%esp
 80497e9:	85 c0                	test   %eax,%eax
 80497eb:	7d 0d                	jge    80497fa <Sigaddset+0x2a>
 80497ed:	83 c4 f4             	add    $0xfffffff4,%esp
 80497f0:	68 a3 a6 04 08       	push   $0x804a6a3
 80497f5:	e8 96 fc ff ff       	call   8049490 <unix_error>
 80497fa:	89 ec                	mov    %ebp,%esp
 80497fc:	5d                   	pop    %ebp
 80497fd:	c3                   	ret    
 80497fe:	89 f6                	mov    %esi,%esi

08049800 <Sigdelset>:
 8049800:	55                   	push   %ebp
 8049801:	89 e5                	mov    %esp,%ebp
 8049803:	83 ec 08             	sub    $0x8,%esp
 8049806:	8b 55 08             	mov    0x8(%ebp),%edx
 8049809:	8b 45 0c             	mov    0xc(%ebp),%eax
 804980c:	83 c4 f8             	add    $0xfffffff8,%esp
 804980f:	50                   	push   %eax
 8049810:	52                   	push   %edx
 8049811:	e8 ce fa ff ff       	call   80492e4 <sigdelset@plt>
 8049816:	83 c4 10             	add    $0x10,%esp
 8049819:	85 c0                	test   %eax,%eax
 804981b:	7d 0d                	jge    804982a <Sigdelset+0x2a>
 804981d:	83 c4 f4             	add    $0xfffffff4,%esp
 8049820:	68 b3 a6 04 08       	push   $0x804a6b3
 8049825:	e8 66 fc ff ff       	call   8049490 <unix_error>
 804982a:	89 ec                	mov    %ebp,%esp
 804982c:	5d                   	pop    %ebp
 804982d:	c3                   	ret    
 804982e:	89 f6                	mov    %esi,%esi

08049830 <Sigismember>:
 8049830:	55                   	push   %ebp
 8049831:	89 e5                	mov    %esp,%ebp
 8049833:	83 ec 14             	sub    $0x14,%esp
 8049836:	53                   	push   %ebx
 8049837:	8b 55 08             	mov    0x8(%ebp),%edx
 804983a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804983d:	83 c4 f8             	add    $0xfffffff8,%esp
 8049840:	50                   	push   %eax
 8049841:	52                   	push   %edx
 8049842:	e8 ad f6 ff ff       	call   8048ef4 <sigismember@plt>
 8049847:	89 c3                	mov    %eax,%ebx
 8049849:	83 c4 10             	add    $0x10,%esp
 804984c:	85 db                	test   %ebx,%ebx
 804984e:	7d 0d                	jge    804985d <Sigismember+0x2d>
 8049850:	83 c4 f4             	add    $0xfffffff4,%esp
 8049853:	68 c3 a6 04 08       	push   $0x804a6c3
 8049858:	e8 33 fc ff ff       	call   8049490 <unix_error>
 804985d:	89 d8                	mov    %ebx,%eax
 804985f:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049862:	89 ec                	mov    %ebp,%esp
 8049864:	5d                   	pop    %ebp
 8049865:	c3                   	ret    
 8049866:	89 f6                	mov    %esi,%esi

08049868 <Open>:
 8049868:	55                   	push   %ebp
 8049869:	89 e5                	mov    %esp,%ebp
 804986b:	83 ec 14             	sub    $0x14,%esp
 804986e:	53                   	push   %ebx
 804986f:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049872:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049875:	8b 45 10             	mov    0x10(%ebp),%eax
 8049878:	83 c4 fc             	add    $0xfffffffc,%esp
 804987b:	50                   	push   %eax
 804987c:	52                   	push   %edx
 804987d:	51                   	push   %ecx
 804987e:	e8 81 f9 ff ff       	call   8049204 <open@plt>
 8049883:	89 c3                	mov    %eax,%ebx
 8049885:	83 c4 10             	add    $0x10,%esp
 8049888:	85 db                	test   %ebx,%ebx
 804988a:	7d 0d                	jge    8049899 <Open+0x31>
 804988c:	83 c4 f4             	add    $0xfffffff4,%esp
 804988f:	68 d5 a6 04 08       	push   $0x804a6d5
 8049894:	e8 f7 fb ff ff       	call   8049490 <unix_error>
 8049899:	89 d8                	mov    %ebx,%eax
 804989b:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 804989e:	89 ec                	mov    %ebp,%esp
 80498a0:	5d                   	pop    %ebp
 80498a1:	c3                   	ret    
 80498a2:	89 f6                	mov    %esi,%esi

080498a4 <Read>:
 80498a4:	55                   	push   %ebp
 80498a5:	89 e5                	mov    %esp,%ebp
 80498a7:	83 ec 14             	sub    $0x14,%esp
 80498aa:	53                   	push   %ebx
 80498ab:	8b 4d 08             	mov    0x8(%ebp),%ecx
 80498ae:	8b 55 0c             	mov    0xc(%ebp),%edx
 80498b1:	8b 45 10             	mov    0x10(%ebp),%eax
 80498b4:	83 c4 fc             	add    $0xfffffffc,%esp
 80498b7:	50                   	push   %eax
 80498b8:	52                   	push   %edx
 80498b9:	51                   	push   %ecx
 80498ba:	e8 35 fa ff ff       	call   80492f4 <read@plt>
 80498bf:	89 c3                	mov    %eax,%ebx
 80498c1:	83 c4 10             	add    $0x10,%esp
 80498c4:	85 db                	test   %ebx,%ebx
 80498c6:	7d 0d                	jge    80498d5 <Read+0x31>
 80498c8:	83 c4 f4             	add    $0xfffffff4,%esp
 80498cb:	68 e0 a6 04 08       	push   $0x804a6e0
 80498d0:	e8 bb fb ff ff       	call   8049490 <unix_error>
 80498d5:	89 d8                	mov    %ebx,%eax
 80498d7:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 80498da:	89 ec                	mov    %ebp,%esp
 80498dc:	5d                   	pop    %ebp
 80498dd:	c3                   	ret    
 80498de:	89 f6                	mov    %esi,%esi

080498e0 <Write>:
 80498e0:	55                   	push   %ebp
 80498e1:	89 e5                	mov    %esp,%ebp
 80498e3:	83 ec 14             	sub    $0x14,%esp
 80498e6:	53                   	push   %ebx
 80498e7:	8b 4d 08             	mov    0x8(%ebp),%ecx
 80498ea:	8b 55 0c             	mov    0xc(%ebp),%edx
 80498ed:	8b 45 10             	mov    0x10(%ebp),%eax
 80498f0:	83 c4 fc             	add    $0xfffffffc,%esp
 80498f3:	50                   	push   %eax
 80498f4:	52                   	push   %edx
 80498f5:	51                   	push   %ecx
 80498f6:	e8 49 f6 ff ff       	call   8048f44 <write@plt>
 80498fb:	89 c3                	mov    %eax,%ebx
 80498fd:	83 c4 10             	add    $0x10,%esp
 8049900:	85 db                	test   %ebx,%ebx
 8049902:	7d 0d                	jge    8049911 <Write+0x31>
 8049904:	83 c4 f4             	add    $0xfffffff4,%esp
 8049907:	68 eb a6 04 08       	push   $0x804a6eb
 804990c:	e8 7f fb ff ff       	call   8049490 <unix_error>
 8049911:	89 d8                	mov    %ebx,%eax
 8049913:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049916:	89 ec                	mov    %ebp,%esp
 8049918:	5d                   	pop    %ebp
 8049919:	c3                   	ret    
 804991a:	89 f6                	mov    %esi,%esi

0804991c <Lseek>:
 804991c:	55                   	push   %ebp
 804991d:	89 e5                	mov    %esp,%ebp
 804991f:	83 ec 14             	sub    $0x14,%esp
 8049922:	53                   	push   %ebx
 8049923:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049926:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049929:	8b 45 10             	mov    0x10(%ebp),%eax
 804992c:	83 c4 fc             	add    $0xfffffffc,%esp
 804992f:	50                   	push   %eax
 8049930:	52                   	push   %edx
 8049931:	51                   	push   %ecx
 8049932:	e8 9d f8 ff ff       	call   80491d4 <lseek@plt>
 8049937:	89 c3                	mov    %eax,%ebx
 8049939:	83 c4 10             	add    $0x10,%esp
 804993c:	85 db                	test   %ebx,%ebx
 804993e:	7d 0d                	jge    804994d <Lseek+0x31>
 8049940:	83 c4 f4             	add    $0xfffffff4,%esp
 8049943:	68 f7 a6 04 08       	push   $0x804a6f7
 8049948:	e8 43 fb ff ff       	call   8049490 <unix_error>
 804994d:	89 d8                	mov    %ebx,%eax
 804994f:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049952:	89 ec                	mov    %ebp,%esp
 8049954:	5d                   	pop    %ebp
 8049955:	c3                   	ret    
 8049956:	89 f6                	mov    %esi,%esi

08049958 <Close>:
 8049958:	55                   	push   %ebp
 8049959:	89 e5                	mov    %esp,%ebp
 804995b:	83 ec 08             	sub    $0x8,%esp
 804995e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049961:	83 c4 f4             	add    $0xfffffff4,%esp
 8049964:	50                   	push   %eax
 8049965:	e8 ea f5 ff ff       	call   8048f54 <close@plt>
 804996a:	83 c4 10             	add    $0x10,%esp
 804996d:	85 c0                	test   %eax,%eax
 804996f:	7d 0d                	jge    804997e <Close+0x26>
 8049971:	83 c4 f4             	add    $0xfffffff4,%esp
 8049974:	68 03 a7 04 08       	push   $0x804a703
 8049979:	e8 12 fb ff ff       	call   8049490 <unix_error>
 804997e:	89 ec                	mov    %ebp,%esp
 8049980:	5d                   	pop    %ebp
 8049981:	c3                   	ret    
 8049982:	89 f6                	mov    %esi,%esi

08049984 <Select>:
 8049984:	55                   	push   %ebp
 8049985:	89 e5                	mov    %esp,%ebp
 8049987:	83 ec 10             	sub    $0x10,%esp
 804998a:	56                   	push   %esi
 804998b:	53                   	push   %ebx
 804998c:	8b 75 08             	mov    0x8(%ebp),%esi
 804998f:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8049992:	8b 4d 10             	mov    0x10(%ebp),%ecx
 8049995:	8b 55 14             	mov    0x14(%ebp),%edx
 8049998:	8b 45 18             	mov    0x18(%ebp),%eax
 804999b:	83 c4 f4             	add    $0xfffffff4,%esp
 804999e:	50                   	push   %eax
 804999f:	52                   	push   %edx
 80499a0:	51                   	push   %ecx
 80499a1:	53                   	push   %ebx
 80499a2:	56                   	push   %esi
 80499a3:	e8 fc f5 ff ff       	call   8048fa4 <select@plt>
 80499a8:	89 c3                	mov    %eax,%ebx
 80499aa:	83 c4 20             	add    $0x20,%esp
 80499ad:	85 db                	test   %ebx,%ebx
 80499af:	7d 0d                	jge    80499be <Select+0x3a>
 80499b1:	83 c4 f4             	add    $0xfffffff4,%esp
 80499b4:	68 0f a7 04 08       	push   $0x804a70f
 80499b9:	e8 d2 fa ff ff       	call   8049490 <unix_error>
 80499be:	89 d8                	mov    %ebx,%eax
 80499c0:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 80499c3:	5b                   	pop    %ebx
 80499c4:	5e                   	pop    %esi
 80499c5:	89 ec                	mov    %ebp,%esp
 80499c7:	5d                   	pop    %ebp
 80499c8:	c3                   	ret    
 80499c9:	8d 76 00             	lea    0x0(%esi),%esi

080499cc <Dup2>:
 80499cc:	55                   	push   %ebp
 80499cd:	89 e5                	mov    %esp,%ebp
 80499cf:	83 ec 14             	sub    $0x14,%esp
 80499d2:	53                   	push   %ebx
 80499d3:	8b 55 08             	mov    0x8(%ebp),%edx
 80499d6:	8b 45 0c             	mov    0xc(%ebp),%eax
 80499d9:	83 c4 f8             	add    $0xfffffff8,%esp
 80499dc:	50                   	push   %eax
 80499dd:	52                   	push   %edx
 80499de:	e8 b1 f7 ff ff       	call   8049194 <dup2@plt>
 80499e3:	89 c3                	mov    %eax,%ebx
 80499e5:	83 c4 10             	add    $0x10,%esp
 80499e8:	85 db                	test   %ebx,%ebx
 80499ea:	7d 0d                	jge    80499f9 <Dup2+0x2d>
 80499ec:	83 c4 f4             	add    $0xfffffff4,%esp
 80499ef:	68 1c a7 04 08       	push   $0x804a71c
 80499f4:	e8 97 fa ff ff       	call   8049490 <unix_error>
 80499f9:	89 d8                	mov    %ebx,%eax
 80499fb:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 80499fe:	89 ec                	mov    %ebp,%esp
 8049a00:	5d                   	pop    %ebp
 8049a01:	c3                   	ret    
 8049a02:	89 f6                	mov    %esi,%esi

08049a04 <Stat>:
 8049a04:	55                   	push   %ebp
 8049a05:	89 e5                	mov    %esp,%ebp
 8049a07:	83 ec 08             	sub    $0x8,%esp
 8049a0a:	8b 55 08             	mov    0x8(%ebp),%edx
 8049a0d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049a10:	83 c4 fc             	add    $0xfffffffc,%esp
 8049a13:	50                   	push   %eax
 8049a14:	52                   	push   %edx
 8049a15:	6a 03                	push   $0x3
 8049a17:	e8 98 f6 ff ff       	call   80490b4 <__xstat@plt>
 8049a1c:	83 c4 10             	add    $0x10,%esp
 8049a1f:	85 c0                	test   %eax,%eax
 8049a21:	7d 0d                	jge    8049a30 <Stat+0x2c>
 8049a23:	83 c4 f4             	add    $0xfffffff4,%esp
 8049a26:	68 27 a7 04 08       	push   $0x804a727
 8049a2b:	e8 60 fa ff ff       	call   8049490 <unix_error>
 8049a30:	89 ec                	mov    %ebp,%esp
 8049a32:	5d                   	pop    %ebp
 8049a33:	c3                   	ret    

08049a34 <Fstat>:
 8049a34:	55                   	push   %ebp
 8049a35:	89 e5                	mov    %esp,%ebp
 8049a37:	83 ec 08             	sub    $0x8,%esp
 8049a3a:	8b 55 08             	mov    0x8(%ebp),%edx
 8049a3d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049a40:	83 c4 fc             	add    $0xfffffffc,%esp
 8049a43:	50                   	push   %eax
 8049a44:	52                   	push   %edx
 8049a45:	6a 03                	push   $0x3
 8049a47:	e8 b8 f6 ff ff       	call   8049104 <__fxstat@plt>
 8049a4c:	83 c4 10             	add    $0x10,%esp
 8049a4f:	85 c0                	test   %eax,%eax
 8049a51:	7d 0d                	jge    8049a60 <Fstat+0x2c>
 8049a53:	83 c4 f4             	add    $0xfffffff4,%esp
 8049a56:	68 32 a7 04 08       	push   $0x804a732
 8049a5b:	e8 30 fa ff ff       	call   8049490 <unix_error>
 8049a60:	89 ec                	mov    %ebp,%esp
 8049a62:	5d                   	pop    %ebp
 8049a63:	c3                   	ret    

08049a64 <Mmap>:
 8049a64:	55                   	push   %ebp
 8049a65:	89 e5                	mov    %esp,%ebp
 8049a67:	83 ec 0c             	sub    $0xc,%esp
 8049a6a:	57                   	push   %edi
 8049a6b:	56                   	push   %esi
 8049a6c:	53                   	push   %ebx
 8049a6d:	8b 7d 08             	mov    0x8(%ebp),%edi
 8049a70:	8b 75 0c             	mov    0xc(%ebp),%esi
 8049a73:	8b 5d 10             	mov    0x10(%ebp),%ebx
 8049a76:	8b 4d 14             	mov    0x14(%ebp),%ecx
 8049a79:	8b 55 18             	mov    0x18(%ebp),%edx
 8049a7c:	8b 45 1c             	mov    0x1c(%ebp),%eax
 8049a7f:	83 c4 f8             	add    $0xfffffff8,%esp
 8049a82:	50                   	push   %eax
 8049a83:	52                   	push   %edx
 8049a84:	51                   	push   %ecx
 8049a85:	53                   	push   %ebx
 8049a86:	56                   	push   %esi
 8049a87:	57                   	push   %edi
 8049a88:	e8 47 f5 ff ff       	call   8048fd4 <mmap@plt>
 8049a8d:	89 c3                	mov    %eax,%ebx
 8049a8f:	83 c4 20             	add    $0x20,%esp
 8049a92:	83 fb ff             	cmp    $0xffffffff,%ebx
 8049a95:	75 0d                	jne    8049aa4 <Mmap+0x40>
 8049a97:	83 c4 f4             	add    $0xfffffff4,%esp
 8049a9a:	68 3e a7 04 08       	push   $0x804a73e
 8049a9f:	e8 ec f9 ff ff       	call   8049490 <unix_error>
 8049aa4:	89 d8                	mov    %ebx,%eax
 8049aa6:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 8049aa9:	5b                   	pop    %ebx
 8049aaa:	5e                   	pop    %esi
 8049aab:	5f                   	pop    %edi
 8049aac:	89 ec                	mov    %ebp,%esp
 8049aae:	5d                   	pop    %ebp
 8049aaf:	c3                   	ret    

08049ab0 <Munmap>:
 8049ab0:	55                   	push   %ebp
 8049ab1:	89 e5                	mov    %esp,%ebp
 8049ab3:	83 ec 08             	sub    $0x8,%esp
 8049ab6:	8b 55 08             	mov    0x8(%ebp),%edx
 8049ab9:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049abc:	83 c4 f8             	add    $0xfffffff8,%esp
 8049abf:	50                   	push   %eax
 8049ac0:	52                   	push   %edx
 8049ac1:	e8 8e f5 ff ff       	call   8049054 <munmap@plt>
 8049ac6:	83 c4 10             	add    $0x10,%esp
 8049ac9:	85 c0                	test   %eax,%eax
 8049acb:	7d 0d                	jge    8049ada <Munmap+0x2a>
 8049acd:	83 c4 f4             	add    $0xfffffff4,%esp
 8049ad0:	68 49 a7 04 08       	push   $0x804a749
 8049ad5:	e8 b6 f9 ff ff       	call   8049490 <unix_error>
 8049ada:	89 ec                	mov    %ebp,%esp
 8049adc:	5d                   	pop    %ebp
 8049add:	c3                   	ret    
 8049ade:	89 f6                	mov    %esi,%esi

08049ae0 <Malloc>:
 8049ae0:	55                   	push   %ebp
 8049ae1:	89 e5                	mov    %esp,%ebp
 8049ae3:	83 ec 14             	sub    $0x14,%esp
 8049ae6:	53                   	push   %ebx
 8049ae7:	8b 45 08             	mov    0x8(%ebp),%eax
 8049aea:	83 c4 f4             	add    $0xfffffff4,%esp
 8049aed:	50                   	push   %eax
 8049aee:	e8 51 f5 ff ff       	call   8049044 <malloc@plt>
 8049af3:	89 c3                	mov    %eax,%ebx
 8049af5:	83 c4 10             	add    $0x10,%esp
 8049af8:	85 db                	test   %ebx,%ebx
 8049afa:	75 0d                	jne    8049b09 <Malloc+0x29>
 8049afc:	83 c4 f4             	add    $0xfffffff4,%esp
 8049aff:	68 56 a7 04 08       	push   $0x804a756
 8049b04:	e8 87 f9 ff ff       	call   8049490 <unix_error>
 8049b09:	89 d8                	mov    %ebx,%eax
 8049b0b:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049b0e:	89 ec                	mov    %ebp,%esp
 8049b10:	5d                   	pop    %ebp
 8049b11:	c3                   	ret    
 8049b12:	89 f6                	mov    %esi,%esi

08049b14 <Realloc>:
 8049b14:	55                   	push   %ebp
 8049b15:	89 e5                	mov    %esp,%ebp
 8049b17:	83 ec 14             	sub    $0x14,%esp
 8049b1a:	53                   	push   %ebx
 8049b1b:	8b 55 08             	mov    0x8(%ebp),%edx
 8049b1e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b21:	83 c4 f8             	add    $0xfffffff8,%esp
 8049b24:	50                   	push   %eax
 8049b25:	52                   	push   %edx
 8049b26:	e8 79 f6 ff ff       	call   80491a4 <realloc@plt>
 8049b2b:	89 c3                	mov    %eax,%ebx
 8049b2d:	83 c4 10             	add    $0x10,%esp
 8049b30:	85 db                	test   %ebx,%ebx
 8049b32:	75 0d                	jne    8049b41 <Realloc+0x2d>
 8049b34:	83 c4 f4             	add    $0xfffffff4,%esp
 8049b37:	68 63 a7 04 08       	push   $0x804a763
 8049b3c:	e8 4f f9 ff ff       	call   8049490 <unix_error>
 8049b41:	89 d8                	mov    %ebx,%eax
 8049b43:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049b46:	89 ec                	mov    %ebp,%esp
 8049b48:	5d                   	pop    %ebp
 8049b49:	c3                   	ret    
 8049b4a:	89 f6                	mov    %esi,%esi

08049b4c <Calloc>:
 8049b4c:	55                   	push   %ebp
 8049b4d:	89 e5                	mov    %esp,%ebp
 8049b4f:	83 ec 14             	sub    $0x14,%esp
 8049b52:	53                   	push   %ebx
 8049b53:	8b 55 08             	mov    0x8(%ebp),%edx
 8049b56:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b59:	83 c4 f8             	add    $0xfffffff8,%esp
 8049b5c:	50                   	push   %eax
 8049b5d:	52                   	push   %edx
 8049b5e:	e8 11 f7 ff ff       	call   8049274 <calloc@plt>
 8049b63:	89 c3                	mov    %eax,%ebx
 8049b65:	83 c4 10             	add    $0x10,%esp
 8049b68:	85 db                	test   %ebx,%ebx
 8049b6a:	75 0d                	jne    8049b79 <Calloc+0x2d>
 8049b6c:	83 c4 f4             	add    $0xfffffff4,%esp
 8049b6f:	68 71 a7 04 08       	push   $0x804a771
 8049b74:	e8 17 f9 ff ff       	call   8049490 <unix_error>
 8049b79:	89 d8                	mov    %ebx,%eax
 8049b7b:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049b7e:	89 ec                	mov    %ebp,%esp
 8049b80:	5d                   	pop    %ebp
 8049b81:	c3                   	ret    
 8049b82:	89 f6                	mov    %esi,%esi

08049b84 <Free>:
 8049b84:	55                   	push   %ebp
 8049b85:	89 e5                	mov    %esp,%ebp
 8049b87:	83 ec 08             	sub    $0x8,%esp
 8049b8a:	8b 45 08             	mov    0x8(%ebp),%eax
 8049b8d:	83 c4 f4             	add    $0xfffffff4,%esp
 8049b90:	50                   	push   %eax
 8049b91:	e8 ee f6 ff ff       	call   8049284 <free@plt>
 8049b96:	89 ec                	mov    %ebp,%esp
 8049b98:	5d                   	pop    %ebp
 8049b99:	c3                   	ret    
 8049b9a:	89 f6                	mov    %esi,%esi

08049b9c <Fclose>:
 8049b9c:	55                   	push   %ebp
 8049b9d:	89 e5                	mov    %esp,%ebp
 8049b9f:	83 ec 08             	sub    $0x8,%esp
 8049ba2:	8b 45 08             	mov    0x8(%ebp),%eax
 8049ba5:	83 c4 f4             	add    $0xfffffff4,%esp
 8049ba8:	50                   	push   %eax
 8049ba9:	e8 46 f6 ff ff       	call   80491f4 <fclose@plt>
 8049bae:	83 c4 10             	add    $0x10,%esp
 8049bb1:	85 c0                	test   %eax,%eax
 8049bb3:	74 0d                	je     8049bc2 <Fclose+0x26>
 8049bb5:	83 c4 f4             	add    $0xfffffff4,%esp
 8049bb8:	68 7e a7 04 08       	push   $0x804a77e
 8049bbd:	e8 ce f8 ff ff       	call   8049490 <unix_error>
 8049bc2:	89 ec                	mov    %ebp,%esp
 8049bc4:	5d                   	pop    %ebp
 8049bc5:	c3                   	ret    
 8049bc6:	89 f6                	mov    %esi,%esi

08049bc8 <Fdopen>:
 8049bc8:	55                   	push   %ebp
 8049bc9:	89 e5                	mov    %esp,%ebp
 8049bcb:	83 ec 14             	sub    $0x14,%esp
 8049bce:	53                   	push   %ebx
 8049bcf:	8b 55 08             	mov    0x8(%ebp),%edx
 8049bd2:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049bd5:	83 c4 f8             	add    $0xfffffff8,%esp
 8049bd8:	50                   	push   %eax
 8049bd9:	52                   	push   %edx
 8049bda:	e8 25 f3 ff ff       	call   8048f04 <fdopen@plt>
 8049bdf:	89 c3                	mov    %eax,%ebx
 8049be1:	83 c4 10             	add    $0x10,%esp
 8049be4:	85 db                	test   %ebx,%ebx
 8049be6:	75 0d                	jne    8049bf5 <Fdopen+0x2d>
 8049be8:	83 c4 f4             	add    $0xfffffff4,%esp
 8049beb:	68 8b a7 04 08       	push   $0x804a78b
 8049bf0:	e8 9b f8 ff ff       	call   8049490 <unix_error>
 8049bf5:	89 d8                	mov    %ebx,%eax
 8049bf7:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049bfa:	89 ec                	mov    %ebp,%esp
 8049bfc:	5d                   	pop    %ebp
 8049bfd:	c3                   	ret    
 8049bfe:	89 f6                	mov    %esi,%esi

08049c00 <Fgets>:
 8049c00:	55                   	push   %ebp
 8049c01:	89 e5                	mov    %esp,%ebp
 8049c03:	83 ec 10             	sub    $0x10,%esp
 8049c06:	56                   	push   %esi
 8049c07:	53                   	push   %ebx
 8049c08:	8b 55 08             	mov    0x8(%ebp),%edx
 8049c0b:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c0e:	8b 75 10             	mov    0x10(%ebp),%esi
 8049c11:	83 c4 fc             	add    $0xfffffffc,%esp
 8049c14:	56                   	push   %esi
 8049c15:	50                   	push   %eax
 8049c16:	52                   	push   %edx
 8049c17:	e8 d8 f4 ff ff       	call   80490f4 <fgets@plt>
 8049c1c:	89 c3                	mov    %eax,%ebx
 8049c1e:	83 c4 10             	add    $0x10,%esp
 8049c21:	85 db                	test   %ebx,%ebx
 8049c23:	75 1d                	jne    8049c42 <Fgets+0x42>
 8049c25:	83 c4 f4             	add    $0xfffffff4,%esp
 8049c28:	56                   	push   %esi
 8049c29:	e8 a6 f2 ff ff       	call   8048ed4 <ferror@plt>
 8049c2e:	83 c4 10             	add    $0x10,%esp
 8049c31:	85 c0                	test   %eax,%eax
 8049c33:	74 0d                	je     8049c42 <Fgets+0x42>
 8049c35:	83 c4 f4             	add    $0xfffffff4,%esp
 8049c38:	68 98 a7 04 08       	push   $0x804a798
 8049c3d:	e8 f2 f8 ff ff       	call   8049534 <app_error>
 8049c42:	89 d8                	mov    %ebx,%eax
 8049c44:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 8049c47:	5b                   	pop    %ebx
 8049c48:	5e                   	pop    %esi
 8049c49:	89 ec                	mov    %ebp,%esp
 8049c4b:	5d                   	pop    %ebp
 8049c4c:	c3                   	ret    
 8049c4d:	8d 76 00             	lea    0x0(%esi),%esi

08049c50 <Fopen>:
 8049c50:	55                   	push   %ebp
 8049c51:	89 e5                	mov    %esp,%ebp
 8049c53:	83 ec 14             	sub    $0x14,%esp
 8049c56:	53                   	push   %ebx
 8049c57:	8b 55 08             	mov    0x8(%ebp),%edx
 8049c5a:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c5d:	83 c4 f8             	add    $0xfffffff8,%esp
 8049c60:	50                   	push   %eax
 8049c61:	52                   	push   %edx
 8049c62:	e8 3d f6 ff ff       	call   80492a4 <fopen@plt>
 8049c67:	89 c3                	mov    %eax,%ebx
 8049c69:	83 c4 10             	add    $0x10,%esp
 8049c6c:	85 db                	test   %ebx,%ebx
 8049c6e:	75 0d                	jne    8049c7d <Fopen+0x2d>
 8049c70:	83 c4 f4             	add    $0xfffffff4,%esp
 8049c73:	68 a4 a7 04 08       	push   $0x804a7a4
 8049c78:	e8 13 f8 ff ff       	call   8049490 <unix_error>
 8049c7d:	89 d8                	mov    %ebx,%eax
 8049c7f:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049c82:	89 ec                	mov    %ebp,%esp
 8049c84:	5d                   	pop    %ebp
 8049c85:	c3                   	ret    
 8049c86:	89 f6                	mov    %esi,%esi

08049c88 <Fputs>:
 8049c88:	55                   	push   %ebp
 8049c89:	89 e5                	mov    %esp,%ebp
 8049c8b:	83 ec 08             	sub    $0x8,%esp
 8049c8e:	8b 55 08             	mov    0x8(%ebp),%edx
 8049c91:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c94:	83 c4 f8             	add    $0xfffffff8,%esp
 8049c97:	50                   	push   %eax
 8049c98:	52                   	push   %edx
 8049c99:	e8 76 f4 ff ff       	call   8049114 <fputs@plt>
 8049c9e:	83 c4 10             	add    $0x10,%esp
 8049ca1:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049ca4:	75 0d                	jne    8049cb3 <Fputs+0x2b>
 8049ca6:	83 c4 f4             	add    $0xfffffff4,%esp
 8049ca9:	68 b0 a7 04 08       	push   $0x804a7b0
 8049cae:	e8 dd f7 ff ff       	call   8049490 <unix_error>
 8049cb3:	89 ec                	mov    %ebp,%esp
 8049cb5:	5d                   	pop    %ebp
 8049cb6:	c3                   	ret    
 8049cb7:	90                   	nop    

08049cb8 <Fread>:
 8049cb8:	55                   	push   %ebp
 8049cb9:	89 e5                	mov    %esp,%ebp
 8049cbb:	83 ec 0c             	sub    $0xc,%esp
 8049cbe:	57                   	push   %edi
 8049cbf:	56                   	push   %esi
 8049cc0:	53                   	push   %ebx
 8049cc1:	8b 45 08             	mov    0x8(%ebp),%eax
 8049cc4:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049cc7:	8b 5d 10             	mov    0x10(%ebp),%ebx
 8049cca:	8b 7d 14             	mov    0x14(%ebp),%edi
 8049ccd:	57                   	push   %edi
 8049cce:	53                   	push   %ebx
 8049ccf:	52                   	push   %edx
 8049cd0:	50                   	push   %eax
 8049cd1:	e8 8e f3 ff ff       	call   8049064 <fread@plt>
 8049cd6:	89 c6                	mov    %eax,%esi
 8049cd8:	83 c4 10             	add    $0x10,%esp
 8049cdb:	39 de                	cmp    %ebx,%esi
 8049cdd:	73 1d                	jae    8049cfc <Fread+0x44>
 8049cdf:	83 c4 f4             	add    $0xfffffff4,%esp
 8049ce2:	57                   	push   %edi
 8049ce3:	e8 ec f1 ff ff       	call   8048ed4 <ferror@plt>
 8049ce8:	83 c4 10             	add    $0x10,%esp
 8049ceb:	85 c0                	test   %eax,%eax
 8049ced:	74 0d                	je     8049cfc <Fread+0x44>
 8049cef:	83 c4 f4             	add    $0xfffffff4,%esp
 8049cf2:	68 bc a7 04 08       	push   $0x804a7bc
 8049cf7:	e8 94 f7 ff ff       	call   8049490 <unix_error>
 8049cfc:	89 f0                	mov    %esi,%eax
 8049cfe:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 8049d01:	5b                   	pop    %ebx
 8049d02:	5e                   	pop    %esi
 8049d03:	5f                   	pop    %edi
 8049d04:	89 ec                	mov    %ebp,%esp
 8049d06:	5d                   	pop    %ebp
 8049d07:	c3                   	ret    

08049d08 <Fwrite>:
 8049d08:	55                   	push   %ebp
 8049d09:	89 e5                	mov    %esp,%ebp
 8049d0b:	83 ec 14             	sub    $0x14,%esp
 8049d0e:	53                   	push   %ebx
 8049d0f:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049d12:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049d15:	8b 5d 10             	mov    0x10(%ebp),%ebx
 8049d18:	8b 45 14             	mov    0x14(%ebp),%eax
 8049d1b:	50                   	push   %eax
 8049d1c:	53                   	push   %ebx
 8049d1d:	52                   	push   %edx
 8049d1e:	51                   	push   %ecx
 8049d1f:	e8 a0 f5 ff ff       	call   80492c4 <fwrite@plt>
 8049d24:	83 c4 10             	add    $0x10,%esp
 8049d27:	39 d8                	cmp    %ebx,%eax
 8049d29:	73 0d                	jae    8049d38 <Fwrite+0x30>
 8049d2b:	83 c4 f4             	add    $0xfffffff4,%esp
 8049d2e:	68 c8 a7 04 08       	push   $0x804a7c8
 8049d33:	e8 58 f7 ff ff       	call   8049490 <unix_error>
 8049d38:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049d3b:	89 ec                	mov    %ebp,%esp
 8049d3d:	5d                   	pop    %ebp
 8049d3e:	c3                   	ret    
 8049d3f:	90                   	nop    

08049d40 <Socket>:
 8049d40:	55                   	push   %ebp
 8049d41:	89 e5                	mov    %esp,%ebp
 8049d43:	83 ec 14             	sub    $0x14,%esp
 8049d46:	53                   	push   %ebx
 8049d47:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049d4a:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049d4d:	8b 45 10             	mov    0x10(%ebp),%eax
 8049d50:	83 c4 fc             	add    $0xfffffffc,%esp
 8049d53:	50                   	push   %eax
 8049d54:	52                   	push   %edx
 8049d55:	51                   	push   %ecx
 8049d56:	e8 79 f5 ff ff       	call   80492d4 <socket@plt>
 8049d5b:	89 c3                	mov    %eax,%ebx
 8049d5d:	83 c4 10             	add    $0x10,%esp
 8049d60:	85 db                	test   %ebx,%ebx
 8049d62:	7d 0d                	jge    8049d71 <Socket+0x31>
 8049d64:	83 c4 f4             	add    $0xfffffff4,%esp
 8049d67:	68 d5 a7 04 08       	push   $0x804a7d5
 8049d6c:	e8 1f f7 ff ff       	call   8049490 <unix_error>
 8049d71:	89 d8                	mov    %ebx,%eax
 8049d73:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049d76:	89 ec                	mov    %ebp,%esp
 8049d78:	5d                   	pop    %ebp
 8049d79:	c3                   	ret    
 8049d7a:	89 f6                	mov    %esi,%esi

08049d7c <Setsockopt>:
 8049d7c:	55                   	push   %ebp
 8049d7d:	89 e5                	mov    %esp,%ebp
 8049d7f:	83 ec 10             	sub    $0x10,%esp
 8049d82:	56                   	push   %esi
 8049d83:	53                   	push   %ebx
 8049d84:	8b 75 08             	mov    0x8(%ebp),%esi
 8049d87:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8049d8a:	8b 4d 10             	mov    0x10(%ebp),%ecx
 8049d8d:	8b 55 14             	mov    0x14(%ebp),%edx
 8049d90:	8b 45 18             	mov    0x18(%ebp),%eax
 8049d93:	83 c4 f4             	add    $0xfffffff4,%esp
 8049d96:	50                   	push   %eax
 8049d97:	52                   	push   %edx
 8049d98:	51                   	push   %ecx
 8049d99:	53                   	push   %ebx
 8049d9a:	56                   	push   %esi
 8049d9b:	e8 24 f3 ff ff       	call   80490c4 <setsockopt@plt>
 8049da0:	83 c4 20             	add    $0x20,%esp
 8049da3:	85 c0                	test   %eax,%eax
 8049da5:	7d 0d                	jge    8049db4 <Setsockopt+0x38>
 8049da7:	83 c4 f4             	add    $0xfffffff4,%esp
 8049daa:	68 e2 a7 04 08       	push   $0x804a7e2
 8049daf:	e8 dc f6 ff ff       	call   8049490 <unix_error>
 8049db4:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 8049db7:	5b                   	pop    %ebx
 8049db8:	5e                   	pop    %esi
 8049db9:	89 ec                	mov    %ebp,%esp
 8049dbb:	5d                   	pop    %ebp
 8049dbc:	c3                   	ret    
 8049dbd:	8d 76 00             	lea    0x0(%esi),%esi

08049dc0 <Bind>:
 8049dc0:	55                   	push   %ebp
 8049dc1:	89 e5                	mov    %esp,%ebp
 8049dc3:	83 ec 08             	sub    $0x8,%esp
 8049dc6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049dc9:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049dcc:	8b 45 10             	mov    0x10(%ebp),%eax
 8049dcf:	83 c4 fc             	add    $0xfffffffc,%esp
 8049dd2:	50                   	push   %eax
 8049dd3:	52                   	push   %edx
 8049dd4:	51                   	push   %ecx
 8049dd5:	e8 ea f3 ff ff       	call   80491c4 <bind@plt>
 8049dda:	83 c4 10             	add    $0x10,%esp
 8049ddd:	85 c0                	test   %eax,%eax
 8049ddf:	7d 0d                	jge    8049dee <Bind+0x2e>
 8049de1:	83 c4 f4             	add    $0xfffffff4,%esp
 8049de4:	68 f3 a7 04 08       	push   $0x804a7f3
 8049de9:	e8 a2 f6 ff ff       	call   8049490 <unix_error>
 8049dee:	89 ec                	mov    %ebp,%esp
 8049df0:	5d                   	pop    %ebp
 8049df1:	c3                   	ret    
 8049df2:	89 f6                	mov    %esi,%esi

08049df4 <Listen>:
 8049df4:	55                   	push   %ebp
 8049df5:	89 e5                	mov    %esp,%ebp
 8049df7:	83 ec 08             	sub    $0x8,%esp
 8049dfa:	8b 55 08             	mov    0x8(%ebp),%edx
 8049dfd:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049e00:	83 c4 f8             	add    $0xfffffff8,%esp
 8049e03:	50                   	push   %eax
 8049e04:	52                   	push   %edx
 8049e05:	e8 2a f2 ff ff       	call   8049034 <listen@plt>
 8049e0a:	83 c4 10             	add    $0x10,%esp
 8049e0d:	85 c0                	test   %eax,%eax
 8049e0f:	7d 0d                	jge    8049e1e <Listen+0x2a>
 8049e11:	83 c4 f4             	add    $0xfffffff4,%esp
 8049e14:	68 fe a7 04 08       	push   $0x804a7fe
 8049e19:	e8 72 f6 ff ff       	call   8049490 <unix_error>
 8049e1e:	89 ec                	mov    %ebp,%esp
 8049e20:	5d                   	pop    %ebp
 8049e21:	c3                   	ret    
 8049e22:	89 f6                	mov    %esi,%esi

08049e24 <Accept>:
 8049e24:	55                   	push   %ebp
 8049e25:	89 e5                	mov    %esp,%ebp
 8049e27:	83 ec 14             	sub    $0x14,%esp
 8049e2a:	53                   	push   %ebx
 8049e2b:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049e2e:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049e31:	8b 45 10             	mov    0x10(%ebp),%eax
 8049e34:	83 c4 fc             	add    $0xfffffffc,%esp
 8049e37:	50                   	push   %eax
 8049e38:	52                   	push   %edx
 8049e39:	51                   	push   %ecx
 8049e3a:	e8 d5 f1 ff ff       	call   8049014 <accept@plt>
 8049e3f:	89 c3                	mov    %eax,%ebx
 8049e41:	83 c4 10             	add    $0x10,%esp
 8049e44:	85 db                	test   %ebx,%ebx
 8049e46:	7d 0d                	jge    8049e55 <Accept+0x31>
 8049e48:	83 c4 f4             	add    $0xfffffff4,%esp
 8049e4b:	68 0b a8 04 08       	push   $0x804a80b
 8049e50:	e8 3b f6 ff ff       	call   8049490 <unix_error>
 8049e55:	89 d8                	mov    %ebx,%eax
 8049e57:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049e5a:	89 ec                	mov    %ebp,%esp
 8049e5c:	5d                   	pop    %ebp
 8049e5d:	c3                   	ret    
 8049e5e:	89 f6                	mov    %esi,%esi

08049e60 <Connect>:
 8049e60:	55                   	push   %ebp
 8049e61:	89 e5                	mov    %esp,%ebp
 8049e63:	83 ec 08             	sub    $0x8,%esp
 8049e66:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049e69:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049e6c:	8b 45 10             	mov    0x10(%ebp),%eax
 8049e6f:	83 c4 fc             	add    $0xfffffffc,%esp
 8049e72:	50                   	push   %eax
 8049e73:	52                   	push   %edx
 8049e74:	51                   	push   %ecx
 8049e75:	e8 1a f4 ff ff       	call   8049294 <connect@plt>
 8049e7a:	83 c4 10             	add    $0x10,%esp
 8049e7d:	85 c0                	test   %eax,%eax
 8049e7f:	7d 0d                	jge    8049e8e <Connect+0x2e>
 8049e81:	83 c4 f4             	add    $0xfffffff4,%esp
 8049e84:	68 18 a8 04 08       	push   $0x804a818
 8049e89:	e8 02 f6 ff ff       	call   8049490 <unix_error>
 8049e8e:	89 ec                	mov    %ebp,%esp
 8049e90:	5d                   	pop    %ebp
 8049e91:	c3                   	ret    
 8049e92:	89 f6                	mov    %esi,%esi

08049e94 <Gethostbyname>:
 8049e94:	55                   	push   %ebp
 8049e95:	89 e5                	mov    %esp,%ebp
 8049e97:	83 ec 14             	sub    $0x14,%esp
 8049e9a:	53                   	push   %ebx
 8049e9b:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e9e:	83 c4 f4             	add    $0xfffffff4,%esp
 8049ea1:	50                   	push   %eax
 8049ea2:	e8 6d f3 ff ff       	call   8049214 <gethostbyname@plt>
 8049ea7:	89 c3                	mov    %eax,%ebx
 8049ea9:	83 c4 10             	add    $0x10,%esp
 8049eac:	85 db                	test   %ebx,%ebx
 8049eae:	75 0d                	jne    8049ebd <Gethostbyname+0x29>
 8049eb0:	83 c4 f4             	add    $0xfffffff4,%esp
 8049eb3:	68 26 a8 04 08       	push   $0x804a826
 8049eb8:	e8 47 f6 ff ff       	call   8049504 <dns_error>
 8049ebd:	89 d8                	mov    %ebx,%eax
 8049ebf:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049ec2:	89 ec                	mov    %ebp,%esp
 8049ec4:	5d                   	pop    %ebp
 8049ec5:	c3                   	ret    
 8049ec6:	89 f6                	mov    %esi,%esi

08049ec8 <Gethostbyaddr>:
 8049ec8:	55                   	push   %ebp
 8049ec9:	89 e5                	mov    %esp,%ebp
 8049ecb:	83 ec 14             	sub    $0x14,%esp
 8049ece:	53                   	push   %ebx
 8049ecf:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049ed2:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049ed5:	8b 45 10             	mov    0x10(%ebp),%eax
 8049ed8:	83 c4 fc             	add    $0xfffffffc,%esp
 8049edb:	50                   	push   %eax
 8049edc:	52                   	push   %edx
 8049edd:	51                   	push   %ecx
 8049ede:	e8 41 f1 ff ff       	call   8049024 <gethostbyaddr@plt>
 8049ee3:	89 c3                	mov    %eax,%ebx
 8049ee5:	83 c4 10             	add    $0x10,%esp
 8049ee8:	85 db                	test   %ebx,%ebx
 8049eea:	75 0d                	jne    8049ef9 <Gethostbyaddr+0x31>
 8049eec:	83 c4 f4             	add    $0xfffffff4,%esp
 8049eef:	68 3a a8 04 08       	push   $0x804a83a
 8049ef4:	e8 0b f6 ff ff       	call   8049504 <dns_error>
 8049ef9:	89 d8                	mov    %ebx,%eax
 8049efb:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049efe:	89 ec                	mov    %ebp,%esp
 8049f00:	5d                   	pop    %ebp
 8049f01:	c3                   	ret    
 8049f02:	89 f6                	mov    %esi,%esi

08049f04 <Pthread_create>:
 8049f04:	55                   	push   %ebp
 8049f05:	89 e5                	mov    %esp,%ebp
 8049f07:	83 ec 14             	sub    $0x14,%esp
 8049f0a:	53                   	push   %ebx
 8049f0b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8049f0e:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8049f11:	8b 55 10             	mov    0x10(%ebp),%edx
 8049f14:	8b 45 14             	mov    0x14(%ebp),%eax
 8049f17:	50                   	push   %eax
 8049f18:	52                   	push   %edx
 8049f19:	51                   	push   %ecx
 8049f1a:	53                   	push   %ebx
 8049f1b:	e8 74 f0 ff ff       	call   8048f94 <pthread_create@plt>
 8049f20:	83 c4 10             	add    $0x10,%esp
 8049f23:	85 c0                	test   %eax,%eax
 8049f25:	74 0e                	je     8049f35 <Pthread_create+0x31>
 8049f27:	83 c4 f8             	add    $0xfffffff8,%esp
 8049f2a:	68 4e a8 04 08       	push   $0x804a84e
 8049f2f:	50                   	push   %eax
 8049f30:	e8 97 f5 ff ff       	call   80494cc <posix_error>
 8049f35:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 8049f38:	89 ec                	mov    %ebp,%esp
 8049f3a:	5d                   	pop    %ebp
 8049f3b:	c3                   	ret    

08049f3c <Pthread_cancel>:
 8049f3c:	55                   	push   %ebp
 8049f3d:	89 e5                	mov    %esp,%ebp
 8049f3f:	83 ec 08             	sub    $0x8,%esp
 8049f42:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f45:	83 c4 f4             	add    $0xfffffff4,%esp
 8049f48:	50                   	push   %eax
 8049f49:	e8 76 f0 ff ff       	call   8048fc4 <pthread_cancel@plt>
 8049f4e:	83 c4 10             	add    $0x10,%esp
 8049f51:	85 c0                	test   %eax,%eax
 8049f53:	74 0e                	je     8049f63 <Pthread_cancel+0x27>
 8049f55:	83 c4 f8             	add    $0xfffffff8,%esp
 8049f58:	68 63 a8 04 08       	push   $0x804a863
 8049f5d:	50                   	push   %eax
 8049f5e:	e8 69 f5 ff ff       	call   80494cc <posix_error>
 8049f63:	89 ec                	mov    %ebp,%esp
 8049f65:	5d                   	pop    %ebp
 8049f66:	c3                   	ret    
 8049f67:	90                   	nop    

08049f68 <Pthread_join>:
 8049f68:	55                   	push   %ebp
 8049f69:	89 e5                	mov    %esp,%ebp
 8049f6b:	83 ec 08             	sub    $0x8,%esp
 8049f6e:	8b 55 08             	mov    0x8(%ebp),%edx
 8049f71:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049f74:	83 c4 f8             	add    $0xfffffff8,%esp
 8049f77:	50                   	push   %eax
 8049f78:	52                   	push   %edx
 8049f79:	e8 b6 f2 ff ff       	call   8049234 <pthread_join@plt>
 8049f7e:	83 c4 10             	add    $0x10,%esp
 8049f81:	85 c0                	test   %eax,%eax
 8049f83:	74 0e                	je     8049f93 <Pthread_join+0x2b>
 8049f85:	83 c4 f8             	add    $0xfffffff8,%esp
 8049f88:	68 78 a8 04 08       	push   $0x804a878
 8049f8d:	50                   	push   %eax
 8049f8e:	e8 39 f5 ff ff       	call   80494cc <posix_error>
 8049f93:	89 ec                	mov    %ebp,%esp
 8049f95:	5d                   	pop    %ebp
 8049f96:	c3                   	ret    
 8049f97:	90                   	nop    

08049f98 <Pthread_detach>:
 8049f98:	55                   	push   %ebp
 8049f99:	89 e5                	mov    %esp,%ebp
 8049f9b:	83 ec 08             	sub    $0x8,%esp
 8049f9e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fa1:	83 c4 f4             	add    $0xfffffff4,%esp
 8049fa4:	50                   	push   %eax
 8049fa5:	e8 fa ee ff ff       	call   8048ea4 <pthread_detach@plt>
 8049faa:	83 c4 10             	add    $0x10,%esp
 8049fad:	85 c0                	test   %eax,%eax
 8049faf:	74 0e                	je     8049fbf <Pthread_detach+0x27>
 8049fb1:	83 c4 f8             	add    $0xfffffff8,%esp
 8049fb4:	68 8b a8 04 08       	push   $0x804a88b
 8049fb9:	50                   	push   %eax
 8049fba:	e8 0d f5 ff ff       	call   80494cc <posix_error>
 8049fbf:	89 ec                	mov    %ebp,%esp
 8049fc1:	5d                   	pop    %ebp
 8049fc2:	c3                   	ret    
 8049fc3:	90                   	nop    

08049fc4 <Pthread_exit>:
 8049fc4:	55                   	push   %ebp
 8049fc5:	89 e5                	mov    %esp,%ebp
 8049fc7:	83 ec 08             	sub    $0x8,%esp
 8049fca:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fcd:	83 c4 f4             	add    $0xfffffff4,%esp
 8049fd0:	50                   	push   %eax
 8049fd1:	e8 7e f2 ff ff       	call   8049254 <pthread_exit@plt>
 8049fd6:	89 f6                	mov    %esi,%esi

08049fd8 <Pthread_self>:
 8049fd8:	55                   	push   %ebp
 8049fd9:	89 e5                	mov    %esp,%ebp
 8049fdb:	83 ec 08             	sub    $0x8,%esp
 8049fde:	e8 81 f1 ff ff       	call   8049164 <pthread_self@plt>
 8049fe3:	89 ec                	mov    %ebp,%esp
 8049fe5:	5d                   	pop    %ebp
 8049fe6:	c3                   	ret    
 8049fe7:	90                   	nop    

08049fe8 <Pthread_once>:
 8049fe8:	55                   	push   %ebp
 8049fe9:	89 e5                	mov    %esp,%ebp
 8049feb:	83 ec 08             	sub    $0x8,%esp
 8049fee:	8b 55 08             	mov    0x8(%ebp),%edx
 8049ff1:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049ff4:	83 c4 f8             	add    $0xfffffff8,%esp
 8049ff7:	50                   	push   %eax
 8049ff8:	52                   	push   %edx
 8049ff9:	e8 d6 f0 ff ff       	call   80490d4 <pthread_once@plt>
 8049ffe:	89 ec                	mov    %ebp,%esp
 804a000:	5d                   	pop    %ebp
 804a001:	c3                   	ret    
 804a002:	89 f6                	mov    %esi,%esi

0804a004 <Sem_init>:
 804a004:	55                   	push   %ebp
 804a005:	89 e5                	mov    %esp,%ebp
 804a007:	83 ec 08             	sub    $0x8,%esp
 804a00a:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804a00d:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a010:	8b 45 10             	mov    0x10(%ebp),%eax
 804a013:	83 c4 fc             	add    $0xfffffffc,%esp
 804a016:	50                   	push   %eax
 804a017:	52                   	push   %edx
 804a018:	51                   	push   %ecx
 804a019:	e8 46 ef ff ff       	call   8048f64 <sem_init@plt>
 804a01e:	83 c4 10             	add    $0x10,%esp
 804a021:	85 c0                	test   %eax,%eax
 804a023:	7d 0d                	jge    804a032 <Sem_init+0x2e>
 804a025:	83 c4 f4             	add    $0xfffffff4,%esp
 804a028:	68 a0 a8 04 08       	push   $0x804a8a0
 804a02d:	e8 5e f4 ff ff       	call   8049490 <unix_error>
 804a032:	89 ec                	mov    %ebp,%esp
 804a034:	5d                   	pop    %ebp
 804a035:	c3                   	ret    
 804a036:	89 f6                	mov    %esi,%esi

0804a038 <P>:
 804a038:	55                   	push   %ebp
 804a039:	89 e5                	mov    %esp,%ebp
 804a03b:	83 ec 08             	sub    $0x8,%esp
 804a03e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a041:	83 c4 f4             	add    $0xfffffff4,%esp
 804a044:	50                   	push   %eax
 804a045:	e8 7a ee ff ff       	call   8048ec4 <sem_wait@plt>
 804a04a:	83 c4 10             	add    $0x10,%esp
 804a04d:	85 c0                	test   %eax,%eax
 804a04f:	7d 0d                	jge    804a05e <P+0x26>
 804a051:	83 c4 f4             	add    $0xfffffff4,%esp
 804a054:	68 af a8 04 08       	push   $0x804a8af
 804a059:	e8 32 f4 ff ff       	call   8049490 <unix_error>
 804a05e:	89 ec                	mov    %ebp,%esp
 804a060:	5d                   	pop    %ebp
 804a061:	c3                   	ret    
 804a062:	89 f6                	mov    %esi,%esi

0804a064 <V>:
 804a064:	55                   	push   %ebp
 804a065:	89 e5                	mov    %esp,%ebp
 804a067:	83 ec 08             	sub    $0x8,%esp
 804a06a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a06d:	83 c4 f4             	add    $0xfffffff4,%esp
 804a070:	50                   	push   %eax
 804a071:	e8 1e f0 ff ff       	call   8049094 <sem_post@plt>
 804a076:	83 c4 10             	add    $0x10,%esp
 804a079:	85 c0                	test   %eax,%eax
 804a07b:	7d 0d                	jge    804a08a <V+0x26>
 804a07d:	83 c4 f4             	add    $0xfffffff4,%esp
 804a080:	68 b7 a8 04 08       	push   $0x804a8b7
 804a085:	e8 06 f4 ff ff       	call   8049490 <unix_error>
 804a08a:	89 ec                	mov    %ebp,%esp
 804a08c:	5d                   	pop    %ebp
 804a08d:	c3                   	ret    
 804a08e:	89 f6                	mov    %esi,%esi

0804a090 <rio_readn>:
 804a090:	55                   	push   %ebp
 804a091:	89 e5                	mov    %esp,%ebp
 804a093:	83 ec 0c             	sub    $0xc,%esp
 804a096:	57                   	push   %edi
 804a097:	56                   	push   %esi
 804a098:	53                   	push   %ebx
 804a099:	8b 7d 10             	mov    0x10(%ebp),%edi
 804a09c:	8b 75 0c             	mov    0xc(%ebp),%esi
 804a09f:	89 fb                	mov    %edi,%ebx
 804a0a1:	eb 04                	jmp    804a0a7 <rio_readn+0x17>
 804a0a3:	29 c3                	sub    %eax,%ebx
 804a0a5:	01 c6                	add    %eax,%esi
 804a0a7:	85 db                	test   %ebx,%ebx
 804a0a9:	74 30                	je     804a0db <rio_readn+0x4b>
 804a0ab:	83 c4 fc             	add    $0xfffffffc,%esp
 804a0ae:	53                   	push   %ebx
 804a0af:	56                   	push   %esi
 804a0b0:	8b 45 08             	mov    0x8(%ebp),%eax
 804a0b3:	50                   	push   %eax
 804a0b4:	e8 3b f2 ff ff       	call   80492f4 <read@plt>
 804a0b9:	83 c4 10             	add    $0x10,%esp
 804a0bc:	85 c0                	test   %eax,%eax
 804a0be:	7d 17                	jge    804a0d7 <rio_readn+0x47>
 804a0c0:	e8 3f ef ff ff       	call   8049004 <__errno_location@plt>
 804a0c5:	83 38 04             	cmpl   $0x4,(%eax)
 804a0c8:	75 06                	jne    804a0d0 <rio_readn+0x40>
 804a0ca:	31 c0                	xor    %eax,%eax
 804a0cc:	eb d5                	jmp    804a0a3 <rio_readn+0x13>
 804a0ce:	89 f6                	mov    %esi,%esi
 804a0d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a0d5:	eb 08                	jmp    804a0df <rio_readn+0x4f>
 804a0d7:	85 c0                	test   %eax,%eax
 804a0d9:	75 c8                	jne    804a0a3 <rio_readn+0x13>
 804a0db:	29 df                	sub    %ebx,%edi
 804a0dd:	89 f8                	mov    %edi,%eax
 804a0df:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 804a0e2:	5b                   	pop    %ebx
 804a0e3:	5e                   	pop    %esi
 804a0e4:	5f                   	pop    %edi
 804a0e5:	89 ec                	mov    %ebp,%esp
 804a0e7:	5d                   	pop    %ebp
 804a0e8:	c3                   	ret    
 804a0e9:	8d 76 00             	lea    0x0(%esi),%esi

0804a0ec <rio_writen>:
 804a0ec:	55                   	push   %ebp
 804a0ed:	89 e5                	mov    %esp,%ebp
 804a0ef:	83 ec 0c             	sub    $0xc,%esp
 804a0f2:	57                   	push   %edi
 804a0f3:	56                   	push   %esi
 804a0f4:	53                   	push   %ebx
 804a0f5:	8b 7d 10             	mov    0x10(%ebp),%edi
 804a0f8:	8b 75 0c             	mov    0xc(%ebp),%esi
 804a0fb:	89 fb                	mov    %edi,%ebx
 804a0fd:	85 ff                	test   %edi,%edi
 804a0ff:	74 30                	je     804a131 <rio_writen+0x45>
 804a101:	83 c4 fc             	add    $0xfffffffc,%esp
 804a104:	53                   	push   %ebx
 804a105:	56                   	push   %esi
 804a106:	8b 45 08             	mov    0x8(%ebp),%eax
 804a109:	50                   	push   %eax
 804a10a:	e8 35 ee ff ff       	call   8048f44 <write@plt>
 804a10f:	83 c4 10             	add    $0x10,%esp
 804a112:	85 c0                	test   %eax,%eax
 804a114:	7f 13                	jg     804a129 <rio_writen+0x3d>
 804a116:	e8 e9 ee ff ff       	call   8049004 <__errno_location@plt>
 804a11b:	83 38 04             	cmpl   $0x4,(%eax)
 804a11e:	74 07                	je     804a127 <rio_writen+0x3b>
 804a120:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a125:	eb 0c                	jmp    804a133 <rio_writen+0x47>
 804a127:	31 c0                	xor    %eax,%eax
 804a129:	29 c3                	sub    %eax,%ebx
 804a12b:	01 c6                	add    %eax,%esi
 804a12d:	85 db                	test   %ebx,%ebx
 804a12f:	75 d0                	jne    804a101 <rio_writen+0x15>
 804a131:	89 f8                	mov    %edi,%eax
 804a133:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 804a136:	5b                   	pop    %ebx
 804a137:	5e                   	pop    %esi
 804a138:	5f                   	pop    %edi
 804a139:	89 ec                	mov    %ebp,%esp
 804a13b:	5d                   	pop    %ebp
 804a13c:	c3                   	ret    
 804a13d:	8d 76 00             	lea    0x0(%esi),%esi

0804a140 <rio_read>:
 804a140:	55                   	push   %ebp
 804a141:	89 e5                	mov    %esp,%ebp
 804a143:	83 ec 10             	sub    $0x10,%esp
 804a146:	56                   	push   %esi
 804a147:	53                   	push   %ebx
 804a148:	8b 75 08             	mov    0x8(%ebp),%esi
 804a14b:	83 7e 04 00          	cmpl   $0x0,0x4(%esi)
 804a14f:	7f 40                	jg     804a191 <rio_read+0x51>
 804a151:	8d 5e 0c             	lea    0xc(%esi),%ebx
 804a154:	83 c4 fc             	add    $0xfffffffc,%esp
 804a157:	68 00 20 00 00       	push   $0x2000
 804a15c:	53                   	push   %ebx
 804a15d:	8b 06                	mov    (%esi),%eax
 804a15f:	50                   	push   %eax
 804a160:	e8 8f f1 ff ff       	call   80492f4 <read@plt>
 804a165:	89 46 04             	mov    %eax,0x4(%esi)
 804a168:	83 c4 10             	add    $0x10,%esp
 804a16b:	85 c0                	test   %eax,%eax
 804a16d:	7d 11                	jge    804a180 <rio_read+0x40>
 804a16f:	e8 90 ee ff ff       	call   8049004 <__errno_location@plt>
 804a174:	83 38 04             	cmpl   $0x4,(%eax)
 804a177:	74 12                	je     804a18b <rio_read+0x4b>
 804a179:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a17e:	eb 36                	jmp    804a1b6 <rio_read+0x76>
 804a180:	85 c0                	test   %eax,%eax
 804a182:	75 04                	jne    804a188 <rio_read+0x48>
 804a184:	31 c0                	xor    %eax,%eax
 804a186:	eb 2e                	jmp    804a1b6 <rio_read+0x76>
 804a188:	89 5e 08             	mov    %ebx,0x8(%esi)
 804a18b:	83 7e 04 00          	cmpl   $0x0,0x4(%esi)
 804a18f:	7e c3                	jle    804a154 <rio_read+0x14>
 804a191:	8b 5d 10             	mov    0x10(%ebp),%ebx
 804a194:	8b 46 04             	mov    0x4(%esi),%eax
 804a197:	39 d8                	cmp    %ebx,%eax
 804a199:	73 02                	jae    804a19d <rio_read+0x5d>
 804a19b:	89 c3                	mov    %eax,%ebx
 804a19d:	8b 46 08             	mov    0x8(%esi),%eax
 804a1a0:	83 c4 fc             	add    $0xfffffffc,%esp
 804a1a3:	53                   	push   %ebx
 804a1a4:	50                   	push   %eax
 804a1a5:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a1a8:	50                   	push   %eax
 804a1a9:	e8 36 f0 ff ff       	call   80491e4 <memcpy@plt>
 804a1ae:	01 5e 08             	add    %ebx,0x8(%esi)
 804a1b1:	29 5e 04             	sub    %ebx,0x4(%esi)
 804a1b4:	89 d8                	mov    %ebx,%eax
 804a1b6:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 804a1b9:	5b                   	pop    %ebx
 804a1ba:	5e                   	pop    %esi
 804a1bb:	89 ec                	mov    %ebp,%esp
 804a1bd:	5d                   	pop    %ebp
 804a1be:	c3                   	ret    
 804a1bf:	90                   	nop    

0804a1c0 <rio_readinitb>:
 804a1c0:	55                   	push   %ebp
 804a1c1:	89 e5                	mov    %esp,%ebp
 804a1c3:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1c6:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a1c9:	89 10                	mov    %edx,(%eax)
 804a1cb:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804a1d2:	8d 50 0c             	lea    0xc(%eax),%edx
 804a1d5:	89 50 08             	mov    %edx,0x8(%eax)
 804a1d8:	89 ec                	mov    %ebp,%esp
 804a1da:	5d                   	pop    %ebp
 804a1db:	c3                   	ret    

0804a1dc <rio_readnb>:
 804a1dc:	55                   	push   %ebp
 804a1dd:	89 e5                	mov    %esp,%ebp
 804a1df:	83 ec 0c             	sub    $0xc,%esp
 804a1e2:	57                   	push   %edi
 804a1e3:	56                   	push   %esi
 804a1e4:	53                   	push   %ebx
 804a1e5:	8b 7d 10             	mov    0x10(%ebp),%edi
 804a1e8:	8b 75 0c             	mov    0xc(%ebp),%esi
 804a1eb:	89 fb                	mov    %edi,%ebx
 804a1ed:	eb 05                	jmp    804a1f4 <rio_readnb+0x18>
 804a1ef:	90                   	nop    
 804a1f0:	29 c3                	sub    %eax,%ebx
 804a1f2:	01 c6                	add    %eax,%esi
 804a1f4:	85 db                	test   %ebx,%ebx
 804a1f6:	74 33                	je     804a22b <rio_readnb+0x4f>
 804a1f8:	83 c4 fc             	add    $0xfffffffc,%esp
 804a1fb:	53                   	push   %ebx
 804a1fc:	56                   	push   %esi
 804a1fd:	8b 45 08             	mov    0x8(%ebp),%eax
 804a200:	50                   	push   %eax
 804a201:	e8 3a ff ff ff       	call   804a140 <rio_read>
 804a206:	83 c4 10             	add    $0x10,%esp
 804a209:	85 c0                	test   %eax,%eax
 804a20b:	7d 1a                	jge    804a227 <rio_readnb+0x4b>
 804a20d:	e8 f2 ed ff ff       	call   8049004 <__errno_location@plt>
 804a212:	83 38 04             	cmpl   $0x4,(%eax)
 804a215:	75 09                	jne    804a220 <rio_readnb+0x44>
 804a217:	31 c0                	xor    %eax,%eax
 804a219:	eb d5                	jmp    804a1f0 <rio_readnb+0x14>
 804a21b:	90                   	nop    
 804a21c:	8d 74 26 00          	lea    0x0(%esi),%esi
 804a220:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a225:	eb 08                	jmp    804a22f <rio_readnb+0x53>
 804a227:	85 c0                	test   %eax,%eax
 804a229:	75 c5                	jne    804a1f0 <rio_readnb+0x14>
 804a22b:	29 df                	sub    %ebx,%edi
 804a22d:	89 f8                	mov    %edi,%eax
 804a22f:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 804a232:	5b                   	pop    %ebx
 804a233:	5e                   	pop    %esi
 804a234:	5f                   	pop    %edi
 804a235:	89 ec                	mov    %ebp,%esp
 804a237:	5d                   	pop    %ebp
 804a238:	c3                   	ret    
 804a239:	8d 76 00             	lea    0x0(%esi),%esi

0804a23c <rio_readlineb>:
 804a23c:	55                   	push   %ebp
 804a23d:	89 e5                	mov    %esp,%ebp
 804a23f:	83 ec 0c             	sub    $0xc,%esp
 804a242:	57                   	push   %edi
 804a243:	56                   	push   %esi
 804a244:	53                   	push   %ebx
 804a245:	8b 7d 10             	mov    0x10(%ebp),%edi
 804a248:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 804a24b:	be 01 00 00 00       	mov    $0x1,%esi
 804a250:	eb 0f                	jmp    804a261 <rio_readlineb+0x25>
 804a252:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a257:	eb 4c                	jmp    804a2a5 <rio_readlineb+0x69>
 804a259:	8d b4 26 00 00 00 00 	lea    0x0(%esi),%esi
 804a260:	46                   	inc    %esi
 804a261:	39 fe                	cmp    %edi,%esi
 804a263:	73 3b                	jae    804a2a0 <rio_readlineb+0x64>
 804a265:	83 c4 fc             	add    $0xfffffffc,%esp
 804a268:	6a 01                	push   $0x1
 804a26a:	8d 45 ff             	lea    0xffffffff(%ebp),%eax
 804a26d:	50                   	push   %eax
 804a26e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a271:	50                   	push   %eax
 804a272:	e8 c9 fe ff ff       	call   804a140 <rio_read>
 804a277:	83 c4 10             	add    $0x10,%esp
 804a27a:	83 f8 01             	cmp    $0x1,%eax
 804a27d:	75 11                	jne    804a290 <rio_readlineb+0x54>
 804a27f:	8a 45 ff             	mov    0xffffffff(%ebp),%al
 804a282:	88 03                	mov    %al,(%ebx)
 804a284:	43                   	inc    %ebx
 804a285:	3c 0a                	cmp    $0xa,%al
 804a287:	74 17                	je     804a2a0 <rio_readlineb+0x64>
 804a289:	eb d5                	jmp    804a260 <rio_readlineb+0x24>
 804a28b:	90                   	nop    
 804a28c:	8d 74 26 00          	lea    0x0(%esi),%esi
 804a290:	85 c0                	test   %eax,%eax
 804a292:	75 be                	jne    804a252 <rio_readlineb+0x16>
 804a294:	83 fe 01             	cmp    $0x1,%esi
 804a297:	75 07                	jne    804a2a0 <rio_readlineb+0x64>
 804a299:	31 c0                	xor    %eax,%eax
 804a29b:	eb 08                	jmp    804a2a5 <rio_readlineb+0x69>
 804a29d:	8d 76 00             	lea    0x0(%esi),%esi
 804a2a0:	c6 03 00             	movb   $0x0,(%ebx)
 804a2a3:	89 f0                	mov    %esi,%eax
 804a2a5:	8d 65 e8             	lea    0xffffffe8(%ebp),%esp
 804a2a8:	5b                   	pop    %ebx
 804a2a9:	5e                   	pop    %esi
 804a2aa:	5f                   	pop    %edi
 804a2ab:	89 ec                	mov    %ebp,%esp
 804a2ad:	5d                   	pop    %ebp
 804a2ae:	c3                   	ret    
 804a2af:	90                   	nop    

0804a2b0 <Rio_readn>:
 804a2b0:	55                   	push   %ebp
 804a2b1:	89 e5                	mov    %esp,%ebp
 804a2b3:	83 ec 14             	sub    $0x14,%esp
 804a2b6:	53                   	push   %ebx
 804a2b7:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804a2ba:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a2bd:	8b 45 10             	mov    0x10(%ebp),%eax
 804a2c0:	83 c4 fc             	add    $0xfffffffc,%esp
 804a2c3:	50                   	push   %eax
 804a2c4:	52                   	push   %edx
 804a2c5:	51                   	push   %ecx
 804a2c6:	e8 c5 fd ff ff       	call   804a090 <rio_readn>
 804a2cb:	89 c3                	mov    %eax,%ebx
 804a2cd:	83 c4 10             	add    $0x10,%esp
 804a2d0:	85 db                	test   %ebx,%ebx
 804a2d2:	7d 0d                	jge    804a2e1 <Rio_readn+0x31>
 804a2d4:	83 c4 f4             	add    $0xfffffff4,%esp
 804a2d7:	68 bf a8 04 08       	push   $0x804a8bf
 804a2dc:	e8 af f1 ff ff       	call   8049490 <unix_error>
 804a2e1:	89 d8                	mov    %ebx,%eax
 804a2e3:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 804a2e6:	89 ec                	mov    %ebp,%esp
 804a2e8:	5d                   	pop    %ebp
 804a2e9:	c3                   	ret    
 804a2ea:	89 f6                	mov    %esi,%esi

0804a2ec <Rio_writen>:
 804a2ec:	55                   	push   %ebp
 804a2ed:	89 e5                	mov    %esp,%ebp
 804a2ef:	83 ec 14             	sub    $0x14,%esp
 804a2f2:	53                   	push   %ebx
 804a2f3:	8b 45 08             	mov    0x8(%ebp),%eax
 804a2f6:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a2f9:	8b 5d 10             	mov    0x10(%ebp),%ebx
 804a2fc:	83 c4 fc             	add    $0xfffffffc,%esp
 804a2ff:	53                   	push   %ebx
 804a300:	52                   	push   %edx
 804a301:	50                   	push   %eax
 804a302:	e8 e5 fd ff ff       	call   804a0ec <rio_writen>
 804a307:	83 c4 10             	add    $0x10,%esp
 804a30a:	39 d8                	cmp    %ebx,%eax
 804a30c:	74 0d                	je     804a31b <Rio_writen+0x2f>
 804a30e:	83 c4 f4             	add    $0xfffffff4,%esp
 804a311:	68 cf a8 04 08       	push   $0x804a8cf
 804a316:	e8 75 f1 ff ff       	call   8049490 <unix_error>
 804a31b:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 804a31e:	89 ec                	mov    %ebp,%esp
 804a320:	5d                   	pop    %ebp
 804a321:	c3                   	ret    
 804a322:	89 f6                	mov    %esi,%esi

0804a324 <Rio_readinitb>:
 804a324:	55                   	push   %ebp
 804a325:	89 e5                	mov    %esp,%ebp
 804a327:	83 ec 08             	sub    $0x8,%esp
 804a32a:	8b 55 08             	mov    0x8(%ebp),%edx
 804a32d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a330:	83 c4 f8             	add    $0xfffffff8,%esp
 804a333:	50                   	push   %eax
 804a334:	52                   	push   %edx
 804a335:	e8 86 fe ff ff       	call   804a1c0 <rio_readinitb>
 804a33a:	89 ec                	mov    %ebp,%esp
 804a33c:	5d                   	pop    %ebp
 804a33d:	c3                   	ret    
 804a33e:	89 f6                	mov    %esi,%esi

0804a340 <Rio_readnb>:
 804a340:	55                   	push   %ebp
 804a341:	89 e5                	mov    %esp,%ebp
 804a343:	83 ec 14             	sub    $0x14,%esp
 804a346:	53                   	push   %ebx
 804a347:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804a34a:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a34d:	8b 45 10             	mov    0x10(%ebp),%eax
 804a350:	83 c4 fc             	add    $0xfffffffc,%esp
 804a353:	50                   	push   %eax
 804a354:	52                   	push   %edx
 804a355:	51                   	push   %ecx
 804a356:	e8 81 fe ff ff       	call   804a1dc <rio_readnb>
 804a35b:	89 c3                	mov    %eax,%ebx
 804a35d:	83 c4 10             	add    $0x10,%esp
 804a360:	85 db                	test   %ebx,%ebx
 804a362:	7d 0d                	jge    804a371 <Rio_readnb+0x31>
 804a364:	83 c4 f4             	add    $0xfffffff4,%esp
 804a367:	68 e0 a8 04 08       	push   $0x804a8e0
 804a36c:	e8 1f f1 ff ff       	call   8049490 <unix_error>
 804a371:	89 d8                	mov    %ebx,%eax
 804a373:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 804a376:	89 ec                	mov    %ebp,%esp
 804a378:	5d                   	pop    %ebp
 804a379:	c3                   	ret    
 804a37a:	89 f6                	mov    %esi,%esi

0804a37c <Rio_readlineb>:
 804a37c:	55                   	push   %ebp
 804a37d:	89 e5                	mov    %esp,%ebp
 804a37f:	83 ec 14             	sub    $0x14,%esp
 804a382:	53                   	push   %ebx
 804a383:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804a386:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a389:	8b 45 10             	mov    0x10(%ebp),%eax
 804a38c:	83 c4 fc             	add    $0xfffffffc,%esp
 804a38f:	50                   	push   %eax
 804a390:	52                   	push   %edx
 804a391:	51                   	push   %ecx
 804a392:	e8 a5 fe ff ff       	call   804a23c <rio_readlineb>
 804a397:	89 c3                	mov    %eax,%ebx
 804a399:	83 c4 10             	add    $0x10,%esp
 804a39c:	85 db                	test   %ebx,%ebx
 804a39e:	7d 0d                	jge    804a3ad <Rio_readlineb+0x31>
 804a3a0:	83 c4 f4             	add    $0xfffffff4,%esp
 804a3a3:	68 f1 a8 04 08       	push   $0x804a8f1
 804a3a8:	e8 e3 f0 ff ff       	call   8049490 <unix_error>
 804a3ad:	89 d8                	mov    %ebx,%eax
 804a3af:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 804a3b2:	89 ec                	mov    %ebp,%esp
 804a3b4:	5d                   	pop    %ebp
 804a3b5:	c3                   	ret    
 804a3b6:	89 f6                	mov    %esi,%esi

0804a3b8 <open_clientfd>:
 804a3b8:	55                   	push   %ebp
 804a3b9:	89 e5                	mov    %esp,%ebp
 804a3bb:	83 ec 1c             	sub    $0x1c,%esp
 804a3be:	57                   	push   %edi
 804a3bf:	56                   	push   %esi
 804a3c0:	53                   	push   %ebx
 804a3c1:	83 c4 fc             	add    $0xfffffffc,%esp
 804a3c4:	6a 00                	push   $0x0
 804a3c6:	6a 01                	push   $0x1
 804a3c8:	6a 02                	push   $0x2
 804a3ca:	e8 05 ef ff ff       	call   80492d4 <socket@plt>
 804a3cf:	89 c7                	mov    %eax,%edi
 804a3d1:	83 c4 10             	add    $0x10,%esp
 804a3d4:	85 ff                	test   %edi,%edi
 804a3d6:	7c 68                	jl     804a440 <open_clientfd+0x88>
 804a3d8:	8b 45 08             	mov    0x8(%ebp),%eax
 804a3db:	83 c4 f4             	add    $0xfffffff4,%esp
 804a3de:	50                   	push   %eax
 804a3df:	e8 30 ee ff ff       	call   8049214 <gethostbyname@plt>
 804a3e4:	89 c6                	mov    %eax,%esi
 804a3e6:	83 c4 10             	add    $0x10,%esp
 804a3e9:	85 f6                	test   %esi,%esi
 804a3eb:	75 07                	jne    804a3f4 <open_clientfd+0x3c>
 804a3ed:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
 804a3f2:	eb 51                	jmp    804a445 <open_clientfd+0x8d>
 804a3f4:	83 c4 f8             	add    $0xfffffff8,%esp
 804a3f7:	6a 10                	push   $0x10
 804a3f9:	8d 5d f0             	lea    0xfffffff0(%ebp),%ebx
 804a3fc:	53                   	push   %ebx
 804a3fd:	e8 42 ee ff ff       	call   8049244 <bzero@plt>
 804a402:	66 c7 45 f0 02 00    	movw   $0x2,0xfffffff0(%ebp)
 804a408:	8b 46 0c             	mov    0xc(%esi),%eax
 804a40b:	83 c4 fc             	add    $0xfffffffc,%esp
 804a40e:	50                   	push   %eax
 804a40f:	8d 45 f4             	lea    0xfffffff4(%ebp),%eax
 804a412:	50                   	push   %eax
 804a413:	8b 46 10             	mov    0x10(%esi),%eax
 804a416:	8b 00                	mov    (%eax),%eax
 804a418:	50                   	push   %eax
 804a419:	e8 d6 eb ff ff       	call   8048ff4 <bcopy@plt>
 804a41e:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a421:	83 c4 20             	add    $0x20,%esp
 804a424:	66 c1 c8 08          	ror    $0x8,%ax
 804a428:	66 89 45 f2          	mov    %ax,0xfffffff2(%ebp)
 804a42c:	83 c4 fc             	add    $0xfffffffc,%esp
 804a42f:	6a 10                	push   $0x10
 804a431:	53                   	push   %ebx
 804a432:	57                   	push   %edi
 804a433:	e8 5c ee ff ff       	call   8049294 <connect@plt>
 804a438:	85 c0                	test   %eax,%eax
 804a43a:	7c 04                	jl     804a440 <open_clientfd+0x88>
 804a43c:	89 f8                	mov    %edi,%eax
 804a43e:	eb 05                	jmp    804a445 <open_clientfd+0x8d>
 804a440:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a445:	8d 65 d8             	lea    0xffffffd8(%ebp),%esp
 804a448:	5b                   	pop    %ebx
 804a449:	5e                   	pop    %esi
 804a44a:	5f                   	pop    %edi
 804a44b:	89 ec                	mov    %ebp,%esp
 804a44d:	5d                   	pop    %ebp
 804a44e:	c3                   	ret    
 804a44f:	90                   	nop    

0804a450 <open_listenfd>:
 804a450:	55                   	push   %ebp
 804a451:	89 e5                	mov    %esp,%ebp
 804a453:	83 ec 20             	sub    $0x20,%esp
 804a456:	56                   	push   %esi
 804a457:	53                   	push   %ebx
 804a458:	c7 45 ec 01 00 00 00 	movl   $0x1,0xffffffec(%ebp)
 804a45f:	83 c4 fc             	add    $0xfffffffc,%esp
 804a462:	6a 00                	push   $0x0
 804a464:	6a 01                	push   $0x1
 804a466:	6a 02                	push   $0x2
 804a468:	e8 67 ee ff ff       	call   80492d4 <socket@plt>
 804a46d:	89 c6                	mov    %eax,%esi
 804a46f:	83 c4 10             	add    $0x10,%esp
 804a472:	85 f6                	test   %esi,%esi
 804a474:	7c 6c                	jl     804a4e2 <open_listenfd+0x92>
 804a476:	83 c4 f4             	add    $0xfffffff4,%esp
 804a479:	6a 04                	push   $0x4
 804a47b:	8d 45 ec             	lea    0xffffffec(%ebp),%eax
 804a47e:	50                   	push   %eax
 804a47f:	6a 02                	push   $0x2
 804a481:	6a 01                	push   $0x1
 804a483:	56                   	push   %esi
 804a484:	e8 3b ec ff ff       	call   80490c4 <setsockopt@plt>
 804a489:	83 c4 20             	add    $0x20,%esp
 804a48c:	85 c0                	test   %eax,%eax
 804a48e:	7c 52                	jl     804a4e2 <open_listenfd+0x92>
 804a490:	83 c4 f8             	add    $0xfffffff8,%esp
 804a493:	6a 10                	push   $0x10
 804a495:	8d 5d f0             	lea    0xfffffff0(%ebp),%ebx
 804a498:	53                   	push   %ebx
 804a499:	e8 a6 ed ff ff       	call   8049244 <bzero@plt>
 804a49e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a4a1:	66 c7 45 f0 02 00    	movw   $0x2,0xfffffff0(%ebp)
 804a4a7:	83 c4 10             	add    $0x10,%esp
 804a4aa:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
 804a4b1:	66 c1 c8 08          	ror    $0x8,%ax
 804a4b5:	66 89 45 f2          	mov    %ax,0xfffffff2(%ebp)
 804a4b9:	83 c4 fc             	add    $0xfffffffc,%esp
 804a4bc:	6a 10                	push   $0x10
 804a4be:	53                   	push   %ebx
 804a4bf:	56                   	push   %esi
 804a4c0:	e8 ff ec ff ff       	call   80491c4 <bind@plt>
 804a4c5:	83 c4 10             	add    $0x10,%esp
 804a4c8:	85 c0                	test   %eax,%eax
 804a4ca:	7c 16                	jl     804a4e2 <open_listenfd+0x92>
 804a4cc:	83 c4 f8             	add    $0xfffffff8,%esp
 804a4cf:	68 00 04 00 00       	push   $0x400
 804a4d4:	56                   	push   %esi
 804a4d5:	e8 5a eb ff ff       	call   8049034 <listen@plt>
 804a4da:	85 c0                	test   %eax,%eax
 804a4dc:	7c 04                	jl     804a4e2 <open_listenfd+0x92>
 804a4de:	89 f0                	mov    %esi,%eax
 804a4e0:	eb 05                	jmp    804a4e7 <open_listenfd+0x97>
 804a4e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a4e7:	8d 65 d8             	lea    0xffffffd8(%ebp),%esp
 804a4ea:	5b                   	pop    %ebx
 804a4eb:	5e                   	pop    %esi
 804a4ec:	89 ec                	mov    %ebp,%esp
 804a4ee:	5d                   	pop    %ebp
 804a4ef:	c3                   	ret    

0804a4f0 <Open_clientfd>:
 804a4f0:	55                   	push   %ebp
 804a4f1:	89 e5                	mov    %esp,%ebp
 804a4f3:	83 ec 14             	sub    $0x14,%esp
 804a4f6:	53                   	push   %ebx
 804a4f7:	8b 55 08             	mov    0x8(%ebp),%edx
 804a4fa:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a4fd:	83 c4 f8             	add    $0xfffffff8,%esp
 804a500:	50                   	push   %eax
 804a501:	52                   	push   %edx
 804a502:	e8 b1 fe ff ff       	call   804a3b8 <open_clientfd>
 804a507:	89 c3                	mov    %eax,%ebx
 804a509:	83 c4 10             	add    $0x10,%esp
 804a50c:	85 db                	test   %ebx,%ebx
 804a50e:	7d 21                	jge    804a531 <Open_clientfd+0x41>
 804a510:	83 fb ff             	cmp    $0xffffffff,%ebx
 804a513:	75 0f                	jne    804a524 <Open_clientfd+0x34>
 804a515:	83 c4 f4             	add    $0xfffffff4,%esp
 804a518:	68 05 a9 04 08       	push   $0x804a905
 804a51d:	e8 6e ef ff ff       	call   8049490 <unix_error>
 804a522:	eb 0d                	jmp    804a531 <Open_clientfd+0x41>
 804a524:	83 c4 f4             	add    $0xfffffff4,%esp
 804a527:	68 1e a9 04 08       	push   $0x804a91e
 804a52c:	e8 d3 ef ff ff       	call   8049504 <dns_error>
 804a531:	89 d8                	mov    %ebx,%eax
 804a533:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 804a536:	89 ec                	mov    %ebp,%esp
 804a538:	5d                   	pop    %ebp
 804a539:	c3                   	ret    
 804a53a:	89 f6                	mov    %esi,%esi

0804a53c <Open_listenfd>:
 804a53c:	55                   	push   %ebp
 804a53d:	89 e5                	mov    %esp,%ebp
 804a53f:	83 ec 14             	sub    $0x14,%esp
 804a542:	53                   	push   %ebx
 804a543:	8b 45 08             	mov    0x8(%ebp),%eax
 804a546:	83 c4 f4             	add    $0xfffffff4,%esp
 804a549:	50                   	push   %eax
 804a54a:	e8 01 ff ff ff       	call   804a450 <open_listenfd>
 804a54f:	89 c3                	mov    %eax,%ebx
 804a551:	83 c4 10             	add    $0x10,%esp
 804a554:	85 db                	test   %ebx,%ebx
 804a556:	7d 0d                	jge    804a565 <Open_listenfd+0x29>
 804a558:	83 c4 f4             	add    $0xfffffff4,%esp
 804a55b:	68 36 a9 04 08       	push   $0x804a936
 804a560:	e8 2b ef ff ff       	call   8049490 <unix_error>
 804a565:	89 d8                	mov    %ebx,%eax
 804a567:	8b 5d e8             	mov    0xffffffe8(%ebp),%ebx
 804a56a:	89 ec                	mov    %ebp,%esp
 804a56c:	5d                   	pop    %ebp
 804a56d:	c3                   	ret    
 804a56e:	90                   	nop    
 804a56f:	90                   	nop    

0804a570 <__do_global_ctors_aux>:
 804a570:	55                   	push   %ebp
 804a571:	89 e5                	mov    %esp,%ebp
 804a573:	83 ec 14             	sub    $0x14,%esp
 804a576:	53                   	push   %ebx
 804a577:	bb 5c b9 04 08       	mov    $0x804b95c,%ebx
 804a57c:	83 3d 5c b9 04 08 ff 	cmpl   $0xffffffff,0x804b95c
 804a583:	74 0c                	je     804a591 <__do_global_ctors_aux+0x21>
 804a585:	8b 03                	mov    (%ebx),%eax
 804a587:	ff d0                	call   *%eax
 804a589:	83 c3 fc             	add    $0xfffffffc,%ebx
 804a58c:	83 3b ff             	cmpl   $0xffffffff,(%ebx)
 804a58f:	75 f4                	jne    804a585 <__do_global_ctors_aux+0x15>
 804a591:	5b                   	pop    %ebx
 804a592:	89 ec                	mov    %ebp,%esp
 804a594:	5d                   	pop    %ebp
 804a595:	c3                   	ret    
 804a596:	89 f6                	mov    %esi,%esi

0804a598 <init_dummy>:
 804a598:	55                   	push   %ebp
 804a599:	89 e5                	mov    %esp,%ebp
 804a59b:	83 ec 08             	sub    $0x8,%esp
 804a59e:	89 ec                	mov    %ebp,%esp
 804a5a0:	5d                   	pop    %ebp
 804a5a1:	c3                   	ret    
 804a5a2:	90                   	nop    
 804a5a3:	90                   	nop    
Disassembly of section .fini:

0804a5a4 <_fini>:
 804a5a4:	55                   	push   %ebp
 804a5a5:	89 e5                	mov    %esp,%ebp
 804a5a7:	53                   	push   %ebx
 804a5a8:	e8 00 00 00 00       	call   804a5ad <_etext+0x9>
 804a5ad:	5b                   	pop    %ebx
 804a5ae:	81 c3 bf 13 00 00    	add    $0x13bf,%ebx
 804a5b4:	e8 b7 ed ff ff       	call   8049370 <__do_global_dtors_aux>
 804a5b9:	8b 5d fc             	mov    0xfffffffc(%ebp),%ebx
 804a5bc:	c9                   	leave  
 804a5bd:	c3                   	ret    
