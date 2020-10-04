# A set of functions for determining the semantics of instructions
# that generate 32-bit values in x86-64	

# This function should yield 0's in the upper 32 bits
# and the signed extended byte in the lower 32 bits
.global movsbl
movsbl:
	movabsq $0xF0F0F0F0F0F0F0F0, %rax
	movsbl %dil, %eax
	ret
	
# This function should yield 0's in the upper 56 bits
# and the byte in the lower 8 bits

.global movzbl
movzbl:
	movabsq $0xF0F0F0F0F0F0F0F0, %rax
	movzbl %dil, %eax
	ret

# This function should yield 0's in the upper 32 bits
# the sum of the byte and 0xF0F0F0F0 in the lower 32 bits
.global addl
addl:
	movabsq $0xF0F0F0F0F0F0F0F0, %rax
	movsbl %dil, %edx
	addl %edx, %eax
	ret

# This function should yield 0xF0F0F0F0F0F0F0 in the upper 56 bits
# and the sum of the byte and 0xF0 in the lower 8 bits
.global addb
addb:
	movabsq $0xF0F0F0F0F0F0F0F0, %rax
	addb %dil, %al
	ret
	
.global movm1
movm1:
	movq $-1, %rax
	ret

.global movi
movmi:
	movq $0xF0F0F0F0, %rax
	ret
	