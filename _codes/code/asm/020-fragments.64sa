moveg:
	/* $begin 020-moveg-sa 0 */
	movabsq $0x0011223344556677, %rax  # %rax = 0011223344556677 # line:asm:moveg:init
	movb    $-1, %al                   # %rax = 00112233445566FF # line:asm:moveg:movb
	movw    $-1, %ax                   # %rax = 001122334455FFFF # line:asm:moveg:movw
	movl    $-1, %eax                  # %rax = 00000000FFFFFFFF # line:asm:moveg:movl
	movq    $-1, %rax                  # %rax = FFFFFFFFFFFFFFFF # line:asm:moveg:movq
	/* $end 020-moveg-sa 0 */

movmix:
	/* $begin 020-movmix-sa 0 */
	movl $0x4050,%eax  	# Immediate--Register, 4 bytes
	movw  %bp,%sp  		# Register--Register,  2 bytes
	movb (%rdi,%rcx),%al  	# Memory--Register,    1 byte
	movb $-17,(%rsp)  	# Immediate--Memory,   1 byte
	movq %rax,-12(%rbp)  	# Register--Memory,    8 bytes
	/* $end 020-movmix-sa 0 */

cmov:
	cmovge (%rax), %rdx
	cmovge (%rax), %edx
	cmovge (%rax), %dx
#	cmovge (%rax), %dl

pushq:
	/* $begin 020-pushq-sa 0 */
	subq $8,%rsp 		# Decrement stack pointer
	movq %rbp,(%rsp) 	# Store %rbp on stack
	/* $end 020-pushq-sa 0 */

popq:
	/* $begin 020-popq-sa 0 */
	movq (%rsp),%rax 	# Read %rax from stack
	addq $8,%rsp 		# Increment stack pointer
	/* $end 020-popq-sa 0 */

words_suffix:
	/* $begin 020-word-sizes-sa 0 */
	movb %bl,%al		# One byte
	movw %bx,%ax		# Two bytes
	movl %ebx,%eax		# Four bytes
	movq %rbx,%rax          # Eight bytes
	/* $end 020-word-sizes-sa 0 */

words:
	/* $begin 020-word-sizes-sa 0 */
	mov %bl,%al		# One byte
	mov %bx,%ax		# Two bytes
	mov %ebx,%eax		# Four bytes
	mov %rbx,%rax		# Eight bytes
	/* $end 020-word-sizes-sa 0 */

byte_move:
	/* $begin 020-byte-move-sa 0 */
	movabsq $0x0011223344556677, %rax  # %rax = 0011223344556677 # line:asm:bytemove:inita
	movb    $0xAA, %dl                 # %dl  = AA # line:asm:bytemove:initd
	movb %dl,%al	   	           # %rax = 00112233445566AA # line:asm:bytemove:movb
	movsbq %dl,%rax		           # %rax = FFFFFFFFFFFFFFAA # line:asm:bytemove:movsb
	movzbq %dl,%rax		           # %rax = 00000000000000AA # line:asm:bytemove:movzb
	/* $end 020-byte-move-sa 0 */

jump:
	/* $begin 020-jump-sa 0 */
	movq $0,%rax	   	# Set %rax to 0 
	jmp .L1          	# Goto .L1 
	movq (%rax),%rdx 	# Null pointer dereference (Skipped)
.L1: 
	popq %rdx               # Jump target
	/* $end 020-jump-sa 0 */

pc_trick:
	/* $begin 020-loadpc-sa 0 */
        call next 
next: 	
	popq %rax 
	/* $end 020-loadpc-sa 0 */


idivq:
	/* $begin 020-idivq-alt-sa 0 */
# x in \rsireg, y in \rdireg
	movq    %rsi,%rax	# Load x into \raxreg
	cltq			# Sign extend into \rdxreg
	idivq   %rdi		# Divide by y
	movq    %rax, 8(%rsp)	# Store x / y
	movq	%rdx, (%rsp)	# Store x % y
	/* $end 020-idivq-alt-sa 0 */

divq:
	/* $begin 020-divq-sa 0 */
# x at \ebpreg+8, y at \ebpreg+12	
	movq    %rsi,%rax	# Load x into \raxreg
	movq    $0,%rdx		# Set high-order bits to 0
	divq   %rdi		# Divide by y
	movq    %rax, 8(%rsp)	# Store x / y
	movq	%rdx, (%rsp)	# Store x % y
	xorq %rdx,%rdx
	movq $0, %rdx

test:
	xorl %edx, %edx
	xorq %rdx, %rdx
	movq $0, %rdx
	movl $0, %edx
