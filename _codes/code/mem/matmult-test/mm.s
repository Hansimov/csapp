	.file	"mm.c"
	.text
	.p2align 4,,15
	.globl	ijk
	.type	ijk, @function
ijk:
.LFB39:
	.cfi_startproc
	testl	%ecx, %ecx
	jle	.L11
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leal	-1(%rcx), %r11d
	vxorpd	%xmm2, %xmm2, %xmm2
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	8(%rdi,%r11,8), %r8
	addq	$1, %r11
	imulq	$9704, %r11, %r12
	movq	%rdx, %rbp
	salq	$3, %r11
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	xorl	%edi, %edi
.L3:
	leaq	0(%rbp,%rdi), %r10
	leaq	(%rbx,%rdi), %rdx
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L7:
	leaq	(%rsi,%r9), %rcx
	vmovapd	%xmm2, %xmm0
	movq	%rdx, %rax
	.p2align 4,,10
	.p2align 3
.L6:
	vmovsd	(%rax), %xmm1
	addq	$8, %rax
	addq	$9704, %rcx
	vmulsd	-9704(%rcx), %xmm1, %xmm1
	cmpq	%r8, %rax
	vaddsd	%xmm1, %xmm0, %xmm0
	jne	.L6
	vaddsd	(%r10,%r9), %xmm0, %xmm0
	vmovsd	%xmm0, (%r10,%r9)
	addq	$8, %r9
	cmpq	%r11, %r9
	jne	.L7
	addq	$9704, %rdi
	addq	$9704, %r8
	cmpq	%r12, %rdi
	jne	.L3
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
.L11:
	ret
	.cfi_endproc
.LFE39:
	.size	ijk, .-ijk
	.p2align 4,,15
	.globl	jik
	.type	jik, @function
jik:
.LFB40:
	.cfi_startproc
	testl	%ecx, %ecx
	jle	.L23
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leal	-1(%rcx), %eax
	movq	%rsi, %r9
	vxorpd	%xmm2, %xmm2, %xmm2
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdx, %rbx
	leaq	0(,%rax,8), %rdx
	addq	$1, %rax
	subq	%rbx, %rbp
	imulq	$9704, %rax, %r10
	leaq	8(%rdx,%rbx), %r12
	addq	%rdx, %rbp
.L15:
	leaq	8(%rbp), %r11
	movq	%rbx, %rsi
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L19:
	leaq	(%r11,%rsi), %rcx
	leaq	(%rdi,%r8), %rax
	movq	%r9, %rdx
	vmovapd	%xmm2, %xmm0
	.p2align 4,,10
	.p2align 3
.L18:
	vmovsd	(%rax), %xmm1
	addq	$8, %rax
	addq	$9704, %rdx
	vmulsd	-9704(%rdx), %xmm1, %xmm1
	cmpq	%rcx, %rax
	vaddsd	%xmm1, %xmm0, %xmm0
	jne	.L18
	vaddsd	(%rsi), %xmm0, %xmm0
	addq	$9704, %r8
	addq	$9704, %rsi
	vmovsd	%xmm0, -9704(%rsi)
	cmpq	%r10, %r8
	jne	.L19
	addq	$8, %rbx
	addq	$8, %r9
	subq	$8, %rbp
	cmpq	%r12, %rbx
	jne	.L15
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
.L23:
	ret
	.cfi_endproc
.LFE40:
	.size	jik, .-jik
	.p2align 4,,15
	.globl	ikj
	.type	ikj, @function
ikj:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	addq	$8, %rsp
	testl	%ecx, %ecx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -64(%rsp)
	movq	%rsi, -72(%rsp)
	jle	.L50
	leal	-1(%rcx), %r8d
	movl	%ecx, %r9d
	leaq	32(%rdx), %rsi
	shrl	$2, %r9d
	movq	$0, -48(%rsp)
	addq	$1, %r8
	leal	0(,%r9,4), %r11d
	movq	%rsi, -80(%rsp)
	imulq	$9704, %r8, %rax
	salq	$3, %r8
	movq	%rax, -56(%rsp)
	movslq	%r11d, %rax
	leal	1(%rax), %ebx
	leal	2(%rax), %edi
	movq	%rax, -24(%rsp)
	salq	$3, %rax
	movq	%rax, -88(%rsp)
	movslq	%ebx, %rax
	movl	%ebx, -12(%rsp)
	movq	%rax, -32(%rsp)
	salq	$3, %rax
	movl	%edi, -16(%rsp)
	movq	%rax, -96(%rsp)
	movslq	%edi, %rax
	movq	%rax, -40(%rsp)
	salq	$3, %rax
	movq	%rax, -104(%rsp)
.L26:
	movq	-48(%rsp), %rax
	movq	-64(%rsp), %r15
	xorl	%r10d, %r10d
	movq	-80(%rsp), %r14
	movq	-72(%rsp), %rsi
	addq	%rax, %r15
	addq	%rax, %r14
	movq	-88(%rsp), %rax
	leaq	(%rdx,%rax), %r13
	movq	-96(%rsp), %rax
	leaq	(%rdx,%rax), %r12
	movq	-104(%rsp), %rax
	leaq	(%rdx,%rax), %rbx
	.p2align 4,,10
	.p2align 3
.L37:
	leaq	32(%rsi), %rax
	vmovsd	(%r15,%r10), %xmm2
	cmpq	%rax, %rdx
	setae	%dil
	cmpq	%r14, %rsi
	setae	%al
	orb	%al, %dil
	je	.L27
	cmpl	$5, %ecx
	jbe	.L27
	testl	%r11d, %r11d
	je	.L28
	vbroadcastsd	%xmm2, %ymm3
	xorl	%eax, %eax
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L33:
	vmovupd	(%rsi,%rax), %xmm0
	addl	$1, %edi
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vmulpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	%xmm0, (%rdx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpl	%edi, %r9d
	ja	.L33
	cmpl	%ecx, %r11d
	je	.L34
.L28:
	movq	-24(%rsp), %rax
	cmpl	-12(%rsp), %ecx
	vmulsd	(%rsi,%rax,8), %xmm2, %xmm0
	vaddsd	0(%r13), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13)
	jle	.L34
	movq	-32(%rsp), %rax
	cmpl	-16(%rsp), %ecx
	vmulsd	(%rsi,%rax,8), %xmm2, %xmm0
	vaddsd	(%r12), %xmm0, %xmm0
	vmovsd	%xmm0, (%r12)
	jle	.L34
	movq	-40(%rsp), %rax
	vmulsd	(%rsi,%rax,8), %xmm2, %xmm0
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
.L34:
	addq	$8, %r10
	addq	$9704, %rsi
	cmpq	%r8, %r10
	jne	.L37
	addq	$9704, -48(%rsp)
	addq	$9704, %rdx
	movq	-56(%rsp), %rax
	cmpq	%rax, -48(%rsp)
	jne	.L26
	vzeroupper
.L50:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	.cfi_restore_state
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L35:
	vmulsd	(%rsi,%rax), %xmm2, %xmm0
	vaddsd	(%rdx,%rax), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rax)
	addq	$8, %rax
	cmpq	%r8, %rax
	jne	.L35
	jmp	.L34
	.cfi_endproc
.LFE41:
	.size	ikj, .-ikj
	.p2align 4,,15
	.globl	kij
	.type	kij, @function
kij:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	addq	$8, %rsp
	testl	%ecx, %ecx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -72(%rsp)
	movq	%rdx, -80(%rsp)
	jle	.L78
	movl	%ecx, %r9d
	leal	-1(%rcx), %r12d
	movq	$0, -64(%rsp)
	shrl	$2, %r9d
	leal	0(,%r9,4), %r11d
	addq	$1, %r12
	leaq	0(,%r12,8), %r8
	movslq	%r11d, %r15
	leal	1(%r15), %eax
	leal	2(%r15), %ebx
	imulq	$9704, %r12, %r12
	movl	%eax, -12(%rsp)
	cltq
	movl	%ebx, %edi
	movq	%rax, -32(%rsp)
	salq	$3, %rax
	movl	%ebx, -16(%rsp)
	movq	%rax, -40(%rsp)
	movq	%rdx, %rbx
	movslq	%edi, %rax
	leaq	0(,%r15,8), %rdx
	movq	%rax, -48(%rsp)
	salq	$3, %rax
	addq	$32, %rbx
	movq	%rax, -56(%rsp)
	movq	%rdx, -24(%rsp)
.L54:
	movq	-72(%rsp), %rax
	movq	-64(%rsp), %rdi
	leaq	32(%rsi), %r13
	movq	-80(%rsp), %rdx
	xorl	%r10d, %r10d
	leaq	(%rax,%rdi), %r14
	.p2align 4,,10
	.p2align 3
.L65:
	leaq	(%rbx,%r10), %rax
	vmovsd	(%r14,%r10), %xmm2
	cmpq	%rax, %rsi
	setae	%dil
	cmpq	%r13, %rdx
	setae	%al
	orb	%al, %dil
	je	.L55
	cmpl	$5, %ecx
	jbe	.L55
	testl	%r11d, %r11d
	je	.L56
	vbroadcastsd	%xmm2, %ymm3
	xorl	%eax, %eax
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L61:
	vmovupd	(%rsi,%rax), %xmm0
	addl	$1, %edi
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vmovupd	(%rdx,%rax), %xmm1
	vinsertf128	$0x1, 16(%rdx,%rax), %ymm1, %ymm1
	vmulpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	%xmm0, (%rdx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpl	%edi, %r9d
	ja	.L61
	cmpl	%ecx, %r11d
	je	.L62
.L56:
	vmulsd	(%rsi,%r15,8), %xmm2, %xmm0
	movq	-24(%rsp), %rax
	addq	%rdx, %rax
	cmpl	-12(%rsp), %ecx
	vaddsd	(%rax), %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	jle	.L62
	movq	-32(%rsp), %rdi
	movq	-40(%rsp), %rax
	vmulsd	(%rsi,%rdi,8), %xmm2, %xmm0
	addq	%rdx, %rax
	cmpl	-16(%rsp), %ecx
	vaddsd	(%rax), %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	jle	.L62
	movq	-48(%rsp), %rdi
	movq	-56(%rsp), %rax
	vmulsd	(%rsi,%rdi,8), %xmm2, %xmm0
	addq	%rdx, %rax
	vaddsd	(%rax), %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
.L62:
	addq	$9704, %r10
	addq	$9704, %rdx
	cmpq	%r12, %r10
	jne	.L65
	addq	$8, -64(%rsp)
	addq	$9704, %rsi
	cmpq	%r8, -64(%rsp)
	jne	.L54
	vzeroupper
.L78:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	.cfi_restore_state
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L63:
	vmulsd	(%rsi,%rax), %xmm2, %xmm0
	vaddsd	(%rdx,%rax), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rax)
	addq	$8, %rax
	cmpq	%r8, %rax
	jne	.L63
	jmp	.L62
	.cfi_endproc
.LFE42:
	.size	kij, .-kij
	.p2align 4,,15
	.globl	kji
	.type	kji, @function
kji:
.LFB43:
	.cfi_startproc
	testl	%ecx, %ecx
	jle	.L90
	leal	-1(%rcx), %eax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%r11d, %r11d
	imulq	$-9704, %rax, %rcx
	leaq	8(,%rax,8), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rcx, %r8
	subq	%rdx, %r8
	addq	%r8, %rsi
	imulq	$9704, %rax, %r8
	imulq	$9712, %rax, %rax
	leaq	9704(%rdx,%r8), %rbx
	leaq	-9704(%rcx), %r8
	leaq	9712(%rdx,%rax), %r9
.L82:
	leaq	(%rdi,%r11), %r10
	movq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L86:
	vmovsd	-9704(%rsi,%rcx), %xmm1
	leaq	(%r8,%rcx), %rax
	movq	%r10, %rdx
	.p2align 4,,10
	.p2align 3
.L84:
	vmulsd	(%rdx), %xmm1, %xmm0
	addq	$9704, %rax
	addq	$9704, %rdx
	vaddsd	-9704(%rax), %xmm0, %xmm0
	vmovsd	%xmm0, -9704(%rax)
	cmpq	%rcx, %rax
	jne	.L84
	leaq	8(%rax), %rcx
	cmpq	%r9, %rcx
	jne	.L86
	addq	$8, %r11
	addq	$9704, %rsi
	cmpq	%rbp, %r11
	jne	.L82
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
.L90:
	ret
	.cfi_endproc
.LFE43:
	.size	kji, .-kji
	.p2align 4,,15
	.globl	jki
	.type	jki, @function
jki:
.LFB44:
	.cfi_startproc
	testl	%ecx, %ecx
	jle	.L101
	leal	-1(%rcx), %eax
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	imulq	$9704, %rax, %r8
	leaq	1(%rax), %r11
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	imulq	$9712, %rax, %r9
	imulq	$-9704, %rax, %rax
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	%r8, %rsi
	leaq	9704(%rdx,%r8), %rcx
	subq	%rdx, %rsi
	leaq	9712(%rdx,%r9), %r12
	imulq	$9704, %r11, %r11
	leaq	-9704(%rsi), %rbp
	leaq	-9704(%rax), %rbx
.L93:
	leaq	0(%rbp,%rcx), %r10
	leaq	(%rbx,%rcx), %r9
	movq	%rdi, %r8
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L97:
	vmovsd	(%r10,%rsi), %xmm1
	movq	%r8, %rdx
	movq	%r9, %rax
	.p2align 4,,10
	.p2align 3
.L95:
	vmulsd	(%rdx), %xmm1, %xmm0
	addq	$9704, %rax
	addq	$9704, %rdx
	vaddsd	-9704(%rax), %xmm0, %xmm0
	vmovsd	%xmm0, -9704(%rax)
	cmpq	%rax, %rcx
	jne	.L95
	addq	$9704, %rsi
	addq	$8, %r8
	cmpq	%r11, %rsi
	jne	.L97
	addq	$8, %rcx
	cmpq	%r12, %rcx
	jne	.L93
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
.L101:
	rep; ret
	.cfi_endproc
.LFE44:
	.size	jki, .-jki
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Error: bad number (%f) in result matrix (%d,%d)\n"
	.text
	.p2align 4,,15
	.globl	checkresult
	.type	checkresult, @function
checkresult:
.LFB34:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testl	%esi, %esi
	jle	.L111
	vcvtsi2sd	%esi, %xmm1, %xmm1
	addq	$8, %rdi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L104:
	vmovsd	-8(%rdi), %xmm0
	vucomisd	%xmm0, %xmm1
	jp	.L110
	jne	.L110
	movq	%rdi, %rax
	xorl	%ecx, %ecx
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L107:
	addq	$8, %rax
	vmovsd	-8(%rax), %xmm0
	vucomisd	%xmm0, %xmm1
	jp	.L108
	jne	.L108
.L109:
	addl	$1, %ecx
	cmpl	%esi, %ecx
	jne	.L107
	addl	$1, %edx
	addq	$9704, %rdi
	cmpl	%esi, %edx
	jne	.L104
.L111:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L110:
	.cfi_restore_state
	xorl	%ecx, %ecx
.L108:
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movq	stdout(%rip), %rdi
	call	fflush
	xorl	%edi, %edi
	call	exit
	.cfi_endproc
.LFE34:
	.size	checkresult, .-checkresult
	.p2align 4,,15
	.globl	run
	.type	run, @function
run:
.LFB35:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$1, %edx
	movl	%esi, %ebx
	call	fcyc
	movl	%ebx, %eax
	imull	%ebx, %eax
	imull	%ebx, %eax
	testl	%ebx, %ebx
	vcvtsi2sd	%eax, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	jle	.L124
	vcvtsi2sd	%ebx, %xmm2, %xmm2
	leal	-1(%rbx), %r8d
	movl	$gc, %edi
	xorl	%edx, %edx
	addq	$1, %r8
	.p2align 4,,10
	.p2align 3
.L119:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L120:
	movl	%eax, %ecx
	vmovsd	(%rdi,%rax,8), %xmm1
	vucomisd	%xmm2, %xmm1
	jp	.L121
	jne	.L121
	addq	$1, %rax
	cmpq	%r8, %rax
	jne	.L120
	addl	$1, %edx
	addq	$9704, %rdi
	cmpl	%ebx, %edx
	jne	.L119
.L124:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L121:
	.cfi_restore_state
	vmovapd	%xmm1, %xmm0
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movq	stdout(%rip), %rdi
	call	fflush
	xorl	%edi, %edi
	call	exit
	.cfi_endproc
.LFE35:
	.size	run, .-run
	.p2align 4,,15
	.globl	reset
	.type	reset, @function
reset:
.LFB36:
	.cfi_startproc
	testl	%esi, %esi
	jle	.L133
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leal	-1(%rsi), %r12d
	movslq	%esi, %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	addq	$1, %r12
	leaq	0(,%rsi,8), %rbp
	imulq	$9704, %r12, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.p2align 4,,10
	.p2align 3
.L128:
	leaq	0(%r13,%rbx), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	addq	$9704, %rbx
	call	memset
	cmpq	%r12, %rbx
	jne	.L128
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 8
.L133:
	rep; ret
	.cfi_endproc
.LFE36:
	.size	reset, .-reset
	.p2align 4,,15
	.globl	init
	.type	init, @function
init:
.LFB37:
	.cfi_startproc
	testl	%edx, %edx
	jle	.L159
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	shrl	$2, %r8d
	movq	%rdi, %rcx
	vmovapd	.LC3(%rip), %ymm0
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	leal	0(,%r8,4), %r10d
	leaq	8(,%rax,8), %rdi
	xorl	%r9d, %r9d
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movslq	%r10d, %r12
	leal	1(%r12), %r14d
	leal	2(%r12), %r13d
	pushq	%rbx
	.cfi_offset 3, -56
	movslq	%r13d, %r11
	movslq	%r14d, %rbx
	.p2align 4,,10
	.p2align 3
.L136:
	leaq	32(%rsi), %rax
	cmpq	%rax, %rcx
	leaq	32(%rcx), %rax
	setae	%r15b
	cmpq	%rax, %rsi
	setae	%al
	orb	%al, %r15b
	je	.L147
	cmpl	$13, %edx
	jbe	.L147
	testl	%r10d, %r10d
	je	.L140
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L137:
	addl	$1, %r15d
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	vmovupd	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rsi,%rax)
	vmovupd	%xmm0, (%rsi,%rax)
	addq	$32, %rax
	cmpl	%r8d, %r15d
	jb	.L137
	cmpl	%edx, %r10d
	je	.L138
.L140:
	vmovsd	.LC2(%rip), %xmm5
	cmpl	%r14d, %edx
	vmovsd	%xmm5, (%rcx,%r12,8)
	vmovsd	%xmm5, (%rsi,%r12,8)
	jle	.L138
	cmpl	%r13d, %edx
	vmovsd	%xmm5, (%rcx,%rbx,8)
	vmovsd	%xmm5, (%rsi,%rbx,8)
	jle	.L138
	vmovsd	.LC2(%rip), %xmm3
	vmovsd	%xmm3, (%rcx,%r11,8)
	vmovsd	%xmm3, (%rsi,%r11,8)
.L138:
	addl	$1, %r9d
	addq	$9704, %rsi
	addq	$9704, %rcx
	cmpl	%edx, %r9d
	jne	.L136
	vzeroupper
	popq	%rbx
	.cfi_restore 3
	popq	%r12
	.cfi_restore 12
	popq	%r13
	.cfi_restore 13
	popq	%r14
	.cfi_restore 14
	popq	%r15
	.cfi_restore 15
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
.L159:
	rep; ret
	.p2align 4,,10
	.p2align 3
.L147:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	vmovsd	.LC2(%rip), %xmm1
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L139:
	vmovsd	%xmm1, (%rcx,%rax)
	vmovsd	%xmm1, (%rsi,%rax)
	addq	$8, %rax
	cmpq	%rdi, %rax
	jne	.L139
	jmp	.L138
	.cfi_endproc
.LFE37:
	.size	init, .-init
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"%5.1f "
	.text
	.p2align 4,,15
	.globl	printarray
	.type	printarray, @function
printarray:
.LFB38:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%esi, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	testl	%esi, %esi
	jle	.L165
	leal	-1(%rsi), %eax
	movq	%rdi, %r12
	xorl	%r13d, %r13d
	leaq	8(,%rax,8), %r15
	.p2align 4,,10
	.p2align 3
.L162:
	leaq	(%r15,%r12), %rbp
	movq	%r12, %rbx
	.p2align 4,,10
	.p2align 3
.L164:
	vmovsd	(%rbx), %xmm0
	movl	$.LC4, %esi
	movl	$1, %edi
	movl	$1, %eax
	addq	$8, %rbx
	call	__printf_chk
	cmpq	%rbp, %rbx
	jne	.L164
	movl	$10, %edi
	addl	$1, %r13d
	addq	$9704, %r12
	call	putchar
	cmpl	%r14d, %r13d
	jne	.L162
.L165:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	printarray, .-printarray
	.section	.rodata.str1.1
.LC5:
	.string	"matmult cycles/loop iteration"
.LC6:
	.string	"ijk"
.LC7:
	.string	"kji"
.LC8:
	.string	"jki"
.LC9:
	.string	"n"
.LC10:
	.string	"%3s%6s%6s%6s%6s%6s%6s\n"
.LC11:
	.string	"ikj"
.LC12:
	.string	"kij"
.LC13:
	.string	"jik"
.LC14:
	.string	"%3d "
.LC15:
	.string	"%5.2f "
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$ga, %r8d
	movl	$gb, %r9d
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	vmovapd	.LC3(%rip), %ymm0
	.p2align 4,,10
	.p2align 3
.L168:
	movq	%r8, %rax
	andl	$31, %eax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L215
	vmovsd	.LC2(%rip), %xmm4
	cmpl	$1, %eax
	vmovsd	%xmm4, (%r8)
	vmovsd	%xmm4, (%r9)
	je	.L216
	cmpl	$3, %eax
	vmovsd	%xmm4, 8(%r8)
	vmovsd	%xmm4, 8(%r9)
	jne	.L217
	vmovsd	%xmm4, 16(%r8)
	movl	$697, %ebx
	movl	$3, %r12d
	vmovsd	%xmm4, 16(%r9)
.L174:
	movl	$700, %r10d
	xorl	%edx, %edx
	subl	%eax, %r10d
	movl	%eax, %eax
	movl	%r10d, %esi
	leaq	0(,%rax,8), %rcx
	xorl	%eax, %eax
	shrl	$2, %esi
	leal	0(,%rsi,4), %r11d
	leaq	(%r8,%rcx), %rdi
	addq	%r9, %rcx
	.p2align 4,,10
	.p2align 3
.L176:
	addl	$1, %edx
	vmovapd	%ymm0, (%rdi,%rax)
	vmovupd	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpl	%esi, %edx
	jb	.L176
	subl	%r11d, %ebx
	cmpl	%r10d, %r11d
	leal	(%r11,%r12), %eax
	je	.L171
	vmovsd	.LC2(%rip), %xmm5
	movslq	%eax, %rdx
	cmpl	$1, %ebx
	vmovsd	%xmm5, (%r8,%rdx,8)
	vmovsd	%xmm5, (%r9,%rdx,8)
	leal	1(%rax), %edx
	je	.L171
	movslq	%edx, %rdx
	addl	$2, %eax
	cmpl	$2, %ebx
	vmovsd	%xmm5, (%r8,%rdx,8)
	vmovsd	%xmm5, (%r9,%rdx,8)
	je	.L171
	vmovsd	.LC2(%rip), %xmm3
	cltq
	vmovsd	%xmm3, (%r8,%rax,8)
	vmovsd	%xmm3, (%r9,%rax,8)
.L171:
	addq	$9704, %r8
	addq	$9704, %r9
	cmpq	$ga+6792800, %r8
	jne	.L168
	movl	$.LC5, %edi
	vzeroupper
	call	puts
	movl	$.LC6, %r9d
	movl	$.LC7, %r8d
	movl	$.LC8, %ecx
	movl	$.LC9, %edx
	movl	$.LC10, %esi
	movl	$1, %edi
	movq	$.LC11, 16(%rsp)
	movq	$.LC12, 8(%rsp)
	xorl	%eax, %eax
	movq	$.LC13, (%rsp)
	movl	$50, %ebx
	call	__printf_chk
	movq	stdout(%rip), %rdi
	call	fflush
.L214:
	movl	%ebx, %edx
	movl	$.LC14, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	$1, %edx
	movl	%ebx, %esi
	movl	$jki, %edi
	call	fcyc
	movl	%ebx, %eax
	vcvtsi2sd	%ebx, %xmm1, %xmm1
	imull	%ebx, %eax
	movl	$gc, %esi
	xorl	%edx, %edx
	imull	%ebx, %eax
	vcvtsi2sd	%eax, %xmm5, %xmm5
	vdivsd	%xmm5, %xmm0, %xmm0
	vmovsd	%xmm5, 40(%rsp)
	.p2align 4,,10
	.p2align 3
.L177:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L182:
	movl	%eax, %ecx
	vmovsd	(%rsi,%rax,8), %xmm2
	vucomisd	%xmm1, %xmm2
	jp	.L223
	jne	.L223
	addq	$1, %rax
	cmpl	%eax, %ebx
	jg	.L182
	addl	$1, %edx
	addq	$9704, %rsi
	cmpl	%ebx, %edx
	jl	.L177
	movl	$.LC15, %esi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	%xmm1, 32(%rsp)
	call	__printf_chk
	movl	$1, %edx
	movl	%ebx, %esi
	movl	$kji, %edi
	call	fcyc
	vdivsd	40(%rsp), %xmm0, %xmm0
	movl	$gc, %esi
	xorl	%edx, %edx
	vmovsd	32(%rsp), %xmm1
	.p2align 4,,10
	.p2align 3
.L183:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L188:
	vmovsd	(%rsi,%rax,8), %xmm2
	movl	%eax, %ecx
	vucomisd	%xmm1, %xmm2
	jp	.L223
	jne	.L223
	addq	$1, %rax
	cmpl	%eax, %ebx
	jg	.L188
	addl	$1, %edx
	addq	$9704, %rsi
	cmpl	%ebx, %edx
	jl	.L183
	movl	$.LC15, %esi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	%xmm1, 32(%rsp)
	call	__printf_chk
	movl	$1, %edx
	movl	%ebx, %esi
	movl	$ijk, %edi
	call	fcyc
	vdivsd	40(%rsp), %xmm0, %xmm0
	movl	$gc, %esi
	xorl	%edx, %edx
	vmovsd	32(%rsp), %xmm1
	.p2align 4,,10
	.p2align 3
.L189:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L194:
	vmovsd	(%rsi,%rax,8), %xmm2
	movl	%eax, %ecx
	vucomisd	%xmm1, %xmm2
	jp	.L223
	jne	.L223
	addq	$1, %rax
	cmpl	%eax, %ebx
	jg	.L194
	addl	$1, %edx
	addq	$9704, %rsi
	cmpl	%ebx, %edx
	jl	.L189
	movl	$.LC15, %esi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	%xmm1, 32(%rsp)
	call	__printf_chk
	movl	$1, %edx
	movl	%ebx, %esi
	movl	$jik, %edi
	call	fcyc
	vdivsd	40(%rsp), %xmm0, %xmm0
	movl	$gc, %esi
	xorl	%edx, %edx
	vmovsd	32(%rsp), %xmm1
	.p2align 4,,10
	.p2align 3
.L195:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L200:
	vmovsd	(%rsi,%rax,8), %xmm2
	movl	%eax, %ecx
	vucomisd	%xmm1, %xmm2
	jp	.L223
	jne	.L223
	addq	$1, %rax
	cmpl	%eax, %ebx
	jg	.L200
	addl	$1, %edx
	addq	$9704, %rsi
	cmpl	%ebx, %edx
	jl	.L195
	movl	$.LC15, %esi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	%xmm1, 32(%rsp)
	call	__printf_chk
	movl	$1, %edx
	movl	%ebx, %esi
	movl	$kij, %edi
	call	fcyc
	vdivsd	40(%rsp), %xmm0, %xmm0
	movl	$gc, %esi
	xorl	%edx, %edx
	vmovsd	32(%rsp), %xmm1
	.p2align 4,,10
	.p2align 3
.L201:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L206:
	vmovsd	(%rsi,%rax,8), %xmm2
	movl	%eax, %ecx
	vucomisd	%xmm1, %xmm2
	jp	.L223
	jne	.L223
	addq	$1, %rax
	cmpl	%eax, %ebx
	jg	.L206
	addl	$1, %edx
	addq	$9704, %rsi
	cmpl	%ebx, %edx
	jl	.L201
	movl	$.LC15, %esi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	%xmm1, 32(%rsp)
	call	__printf_chk
	movl	$1, %edx
	movl	%ebx, %esi
	movl	$ikj, %edi
	call	fcyc
	vdivsd	40(%rsp), %xmm0, %xmm0
	movl	$gc, %esi
	xorl	%edx, %edx
	vmovsd	32(%rsp), %xmm1
.L207:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L212:
	vmovsd	(%rsi,%rax,8), %xmm2
	movl	%eax, %ecx
	vucomisd	%xmm1, %xmm2
	jp	.L223
	jne	.L223
	addq	$1, %rax
	cmpl	%eax, %ebx
	jg	.L212
	addl	$1, %edx
	addq	$9704, %rsi
	cmpl	%ebx, %edx
	jl	.L207
	movl	$.LC15, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$10, %edi
	addl	$50, %ebx
	call	putchar
	movq	stdout(%rip), %rdi
	call	fflush
	cmpl	$750, %ebx
	jne	.L214
	xorl	%edi, %edi
	call	exit
	.p2align 4,,10
	.p2align 3
.L215:
	movl	$700, %ebx
	xorl	%r12d, %r12d
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L217:
	movl	$698, %ebx
	movl	$2, %r12d
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L216:
	movl	$699, %ebx
	movl	$1, %r12d
	jmp	.L174
.L223:
	vmovapd	%xmm2, %xmm0
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movq	stdout(%rip), %rdi
	call	fflush
	xorl	%edi, %edi
	call	exit
	.cfi_endproc
.LFE45:
	.size	main, .-main
	.comm	gc,6792800,32
	.comm	gb,6792800,32
	.comm	ga,6792800,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC3:
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
