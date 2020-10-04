
.global movsbl
movsbl:
	movabsq $0xF0F0F0F0F0F0F0F0, %rax
	movsbl %dil, %eax
	ret
	
.global movzbl
movzbl:
	movabsq $0xF0F0F0F0F0F0F0F0, %rax
	movzbl %dil, %eax
	ret
	