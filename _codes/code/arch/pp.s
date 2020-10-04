/* $begin pushtest-s 0 */
	.text
.globl pushtest
pushtest:
	movq	%rsp, %rax # Copy stack pointer
	pushq   %rsp	   # Push stack pointer
	popq	%rdx	   # Pop it back
	subq	%rdx, %rax # Return 0 or 8
	ret
/* $end pushtest-s 0 */

/* $begin poptest-s 0 */
	.text
.globl poptest
poptest:
	movq	%rsp, %rdi  # Save stack pointer
	pushq	$0xabcd	    # Push test value
	popq	%rsp	    # Pop to stack pointer
	movq	%rsp, %rax  # Set popped value as return value
	movq    %rdi, %rsp  # Restore stack pointer 
	ret
/* $end poptest-s 0 */

	.text
.globl _pushtest
_pushtest:
	movq	%rsp, %rax # Copy stack pointer
	pushq   %rsp	   # Push stack pointer
	popq	%rdx	   # Pop it back
	subq	%rdx, %rax # Return 0 or 8
	ret

	.text
.globl _poptest
_poptest:
	movq	%rsp, %rdi  # Save stack pointer
	pushq	$0xabcd	    # Push test value
	popq	%rsp	    # Pop to stack pointer
	movq	%rsp, %rax  # Set popped value as return value
	movq    %rdi, %rsp  # Restore stack pointer 
	ret
	

