.section .data
string:
	.ascii "hello, world\n"
string_end:
	.equ len, string_end - string

.section .text
.globl main
main:
	# First, call write(1, "hello, world\n", 13)
	movl $4, %eax        # System call number 4
	movl $1, %ebx        # stdout has descriptor 1
	movl $string, %ecx   # Hello world string
	movl $len, %edx      # String length
	int $0x80            # System call code

	# Next, call exit(0)
	movl $1, %eax        # System call number 1
	movl $0, %ebx        # Argument is 0
	int $0x80            # System call code
