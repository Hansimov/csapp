	.file	"460-bufovf.c"
	.text
	.globl	gets
	.type	gets, @function
gets:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbp
	movq	%rdi, %rbx
	jmp	.L2
.L4:
	movb	%al, (%rbx)
	leaq	1(%rbx), %rbx
.L2:
	movq	stdin(%rip), %rdi
	call	_IO_getc
	cmpl	$10, %eax
	je	.L3
	cmpl	$-1, %eax
	jne	.L4
.L3:
	cmpl	$-1, %eax
	sete	%dl
	cmpq	%rbp, %rbx
	sete	%al
	testb	%al, %dl
	jne	.L6
	movb	$0, (%rbx)
	movq	%rbp, %rax
	jmp	.L5
.L6:
	movl	$0, %eax
.L5:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	gets, .-gets
	.globl	my_strlen
	.type	my_strlen, @function
my_strlen:
.LFB35:
	.cfi_startproc
	movl	$0, %eax
	jmp	.L9
.L10:
	addq	$1, %rax
	movq	%rdx, %rdi
.L9:
	leaq	1(%rdi), %rdx
	cmpb	$0, (%rdi)
	jne	.L10
	rep; ret
	.cfi_endproc
.LFE35:
	.size	my_strlen, .-my_strlen
	.globl	strcpy
	.type	strcpy, @function
strcpy:
.LFB36:
	.cfi_startproc
	movq	%rdi, %rax
	movq	%rdi, %rdx
.L12:
	movzbl	(%rsi), %ecx
	movb	%cl, (%rdx)
	leaq	1(%rdx), %rdx
	leaq	1(%rsi), %rsi
	testb	%cl, %cl
	jne	.L12
	rep; ret
	.cfi_endproc
.LFE36:
	.size	strcpy, .-strcpy
	.globl	get_line
	.type	get_line, @function
get_line:
.LFB37:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsp, %rdi
	call	gets
	movq	%rsp, %rdi
	call	my_strlen
	movq	%rax, %rdi
	call	malloc
	movq	%rax, %rbx
	movq	%rsp, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	%rbx, %rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	get_line, .-get_line
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Input>"
	.text
	.globl	main
	.type	main, @function
main:
.LFB38:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	movl	$0, %eax
	call	get_line
	movq	%rax, %rdi
	call	puts
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
