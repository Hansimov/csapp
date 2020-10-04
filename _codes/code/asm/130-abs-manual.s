	.globl	absdiff_asm
	.type	absdiff_asm, @function
absdiff_asm:
	cmpq	%rsi, %rdi
	jge	.L2
	movq	%rsi, %rax
	subq	%rdi, %rax
	ret
.L2:
	movq	%rdi, %rax
	subq	%rsi, %rax
	ret
	.size	absdiff_asm, .-absdiff_asm
	
