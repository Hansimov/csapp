prob:
	/* $begin 030-add-suffixes-prob-s 0 */
	mov   %eax, (%rsp)
	mov   (%rax), %dx
	mov   $0xFF, %bl
	mov   (%rsp,%rdx,4), %dl
	mov   (%rdx), %rax
	mov   %dx, (%rax)
	/* $end 030-add-suffixes-prob-s 0 */
ans:
	/* $begin 030-add-suffixes-ans-s 0 */
	movl   %eax, (%rsp)
	movw   (%rax), %dx
	movb   $0xFF, %bl
	movb   (%rsp,%rdx,4), %dl
	movq  (%rdx), %rax
	movw   %dx, (%rax)
	/* $end 030-add-suffixes-ans-s 0 */

extra:
	add   $0x4050, %esp
	add   (%rdi), %al
	add   %si, 4(%rax,%rdx)
	lea   (%rdi), %ax
	lea   (%rsp,%rdx,4), %edx
	inc   %rax
