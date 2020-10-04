/* $begin w220-tmult_ok_asm */
# Hand-generated code for tmult_ok	
.globl tmult_ok_asm
# int tmult_ok_asm(long x, int y, long *dest);	
# x in %rdi, y in %rsi, dest in %rdx
tmult_ok_asm:
	imulq	%rdi, %rsi
	movq	%rsi, (%rdx)
# Deleted code	
#	testq	%rsi, %rsi
#	setg	%al
# Inserted code
	setae   %al		# Set low-order byte
# End of inserted code	
	movzbl	%al, %eax
	ret
/* $end w220-tmult_ok_asm */

/* $begin w220-umult_ok_asm */
# Hand-generated code for umult_ok	
.globl umult_ok_asm
# int umult_ok_asm(unsigned long x, unsigned long y, unsigned long *dest);
# x in %rdi, y in %rsi, dest in %rdx
umult_ok_asm:
	movq 	%rdx, %rcx	# Save copy of dest
	movq	%rsi, %rax	# Copy y to %rax
	mulq	%rdi		# Unsigned multiply by x
	movq    %rax, (%rcx)	# Store product at dest
	setae	%al		# Set low-order byte
	movzbl	%al, %eax
	ret
/* $end w220-umult_ok_asm */