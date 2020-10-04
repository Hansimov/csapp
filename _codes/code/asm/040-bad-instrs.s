# Examples of invalid instructions 
/* $begin bad-instrs-prob-s 0 */
    movb $0xF, (%bl)
    movl %rax, (%rsp)
    movw (%rax),4(%rsp)
    movb %ah,%sh
    movq %rax,$0x123
    movl %eax,%rdx
    movb %si, 8(%rbp)
/* $end bad-instrs-prob-s 0 */

/* $begin bad-instrs-ans-s 0 */
    movb $0xF, (%ebx)	  # Cannot use %ebx as address register
    movl %rax, (%rsp)	  # Mismatch between instruction suffix and register ID
    movw (%rax),4(%rsp)	  # Cannot have both source and destination be memory references
    movb %ah,%sh	  # No register named %sh	
    movl %eax,$0x123	  # Cannot have immediate as destination
    movl %eax,%dx	  # Destination operand incorrect size
    movb %si, 8(%rbp)	  # Mismatch between instruction suffix and register ID
/* $end bad-instrs-ans-s 0 */
