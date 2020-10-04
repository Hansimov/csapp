.section .data
string:
        .ascii "hello, world\n"
string_end:
        .equ len, string_end - string
.section .text
.globl main
main:
        # First, call write(1, "hello, world\n", 13)
        movq $1, %rax        # System call number 1
        movq $1, %rdi        # stdout has descriptor 1
        movq $string, %rsi   # Hello world string
        movq $len, %rdx      # String length
        syscall

        # Next, call exit(0)
        movq $60, %rax       # System call number 60
        movq $0, %rdi        # Argument is 0
        syscall
