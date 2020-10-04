	.file	"linked-list.c"
	.text
	.p2align 4,,15
	.globl	new_list_ele
	.type	new_list_ele, @function
new_list_ele:
.LFB12:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movl	$16, %edi
	call	malloc
	movq	%rbx, (%rax)
	movq	$0, 8(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	new_list_ele, .-new_list_ele
	.p2align 4,,15
	.globl	array_to_list_addtail
	.type	array_to_list_addtail, @function
array_to_list_addtail:
.LFB13:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	testq	%rsi, %rsi
	movq	$0, 8(%rsp)
	je	.L7
	leaq	8(%rsp), %rbp
	movq	%rdi, %r14
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L6:
	movslq	(%r14,%rbx,4), %r12
	movl	$16, %edi
	addq	$1, %rbx
	call	malloc
	cmpq	%r13, %rbx
	movq	$0, 8(%rax)
	movq	%r12, (%rax)
	movq	%rax, 0(%rbp)
	leaq	8(%rax), %rbp
	jne	.L6
	movq	8(%rsp), %rax
.L4:
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L4
	.cfi_endproc
.LFE13:
	.size	array_to_list_addtail, .-array_to_list_addtail
	.p2align 4,,15
	.globl	array_to_list_reverse
	.type	array_to_list_reverse, @function
array_to_list_reverse:
.LFB14:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	leaq	-1(%rsi), %rbx
	cmpq	%rbx, %rsi
	jbe	.L13
	movq	%rdi, %r14
	xorl	%r12d, %r12d
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L15:
	movq	%rax, %r12
.L12:
	movslq	(%r14,%rbx,4), %rbp
	movl	$16, %edi
	subq	$1, %rbx
	call	malloc
	cmpq	%rbx, %r13
	movq	%rax, %rdx
	movq	%r12, 8(%rax)
	movq	%rbp, (%rax)
	ja	.L15
.L11:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	movq	%rdx, %rax
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L13:
	.cfi_restore_state
	xorl	%edx, %edx
	jmp	.L11
	.cfi_endproc
.LFE14:
	.size	array_to_list_reverse, .-array_to_list_reverse
	.p2align 4,,15
	.globl	array_to_list_recurse
	.type	array_to_list_recurse, @function
array_to_list_recurse:
.LFB15:
	.cfi_startproc
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L22
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$1, %rsi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	leaq	4(%rdi), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	array_to_list_recurse
	movslq	(%rbx), %rbx
	movq	%rax, %rbp
	movl	$16, %edi
	call	malloc
	movq	%rbp, 8(%rax)
	movq	%rbx, (%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
.L22:
	rep; ret
	.cfi_endproc
.LFE15:
	.size	array_to_list_recurse, .-array_to_list_recurse
	.p2align 4,,15
	.globl	incr_ele
	.type	incr_ele, @function
incr_ele:
.LFB16:
	.cfi_startproc
	addq	$1, (%rdi)
	ret
	.cfi_endproc
.LFE16:
	.size	incr_ele, .-incr_ele
	.p2align 4,,15
	.globl	incr_list
	.type	incr_list, @function
incr_list:
.LFB17:
	.cfi_startproc
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L30:
	addq	$1, (%rdi)
	movq	8(%rdi), %rdi
.L32:
	testq	%rdi, %rdi
	jne	.L30
	rep; ret
	.cfi_endproc
.LFE17:
	.size	incr_list, .-incr_list
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
