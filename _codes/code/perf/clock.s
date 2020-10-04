	.file	"clock.c"
	.version	"01.01"
gcc2_compiled.:
.data
	.align 4
	.type	 cyc_hi,@object
	.size	 cyc_hi,4
cyc_hi:
	.long 0
	.align 4
	.type	 cyc_lo,@object
	.size	 cyc_lo,4
cyc_lo:
	.long 0
.text
	.align 4
.globl access_counter
	.type	 access_counter,@function
access_counter:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
#APP
	rdtsc; movl %edx,%ecx; movl %eax,%ebx
#NO_APP
	movl %ecx,(%esi)
	movl %ebx,(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 access_counter,.Lfe1-access_counter
	.align 4
.globl start_counter
	.type	 start_counter,@function
start_counter:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	addl $-8,%esp
	pushl $cyc_lo
	pushl $cyc_hi
	call access_counter
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 start_counter,.Lfe2-start_counter
.section	.rodata
	.align 32
.LC2:
	.string	"Error: Cycle counter returning negative value: %.0f\n"
	.align 8
.LC0:
	.long 0x0,0x41d00000
	.align 8
.LC1:
	.long 0x0,0x40100000
.text
	.align 4
.globl get_counter
	.type	 get_counter,@function
get_counter:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %ebx
	addl $-8,%esp
	leal -12(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	call access_counter
	movl -12(%ebp),%eax
	movl %eax,%ecx
	subl cyc_lo,%ecx
	cmpl %eax,%ecx
	seta %al
	movzbl %al,%edx
	movl cyc_hi,%eax
	movl -16(%ebp),%ebx
	subl %eax,%ebx
	movl %ebx,%eax
	subl %edx,%eax
	xorl %edx,%edx
	movl %eax,-8(%ebp)
	movl %edx,-4(%ebp)
	fildll -8(%ebp)
	fmull .LC0
	movl %ecx,%eax
	fmull .LC1
	movl %eax,-8(%ebp)
	movl %edx,-4(%ebp)
	fildll -8(%ebp)
	faddp %st,%st(1)
	fldz
	addl $16,%esp
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	jne .L35
	subl $8,%esp
	fstl (%esp)
	pushl $.LC2
	movl stderr,%eax
	pushl %eax
	fstpt -32(%ebp)
	call fprintf
	fldt -32(%ebp)
.L35:
	movl -56(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 get_counter,.Lfe3-get_counter
	.align 4
.globl ovhd
	.type	 ovhd,@function
ovhd:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
	movl $1,%ebx
	jmp .L40
.L42:
	fstp %st(0)
	.p2align 4,,7
.L40:
	call start_counter
	call get_counter
	decl %ebx
	jns .L42
	popl %ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ovhd,.Lfe4-ovhd
.section	.rodata
	.align 32
.LC4:
	.string	"Processor Clock Rate ~= %.1f MHz\n"
	.align 8
.LC3:
	.long 0x0,0x412e8480
.text
	.align 4
.globl mhz_full
	.type	 mhz_full,@function
mhz_full:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	call start_counter
	addl $-12,%esp
	pushl %ebx
	call sleep
	call get_counter
	movl %ebx,-4(%ebp)
	fildl -4(%ebp)
	fmull .LC3
	addl $16,%esp
	fdivrp %st,%st(1)
	testl %esi,%esi
	je .L44
	addl $-4,%esp
	subl $8,%esp
	fstl (%esp)
	pushl $.LC4
	fstpt -16(%ebp)
	call printf
	fldt -16(%ebp)
.L44:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 mhz_full,.Lfe5-mhz_full
	.align 4
.globl mhz
	.type	 mhz,@function
mhz:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%eax
	addl $-8,%esp
	pushl $2
	pushl %eax
	call mhz_full
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 mhz,.Lfe6-mhz
.data
	.align 8
	.type	 cyc_per_tick,@object
	.size	 cyc_per_tick,8
cyc_per_tick:
	.long 0x0,0x0
.section	.rodata
.LC7:
	.string	"Setting cyc_per_tick to %f\n"
	.align 8
.LC5:
	.long 0x0,0x408f4000
	.align 8
.LC6:
	.long 0x0,0x40a77000
.text
	.align 4
	.type	 callibrate,@function
callibrate:
	pushl %ebp
	movl %esp,%ebp
	subl $76,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	addl $-12,%esp
	leal -16(%ebp),%ebx
	pushl %ebx
	call times
	movl -16(%ebp),%esi
	call start_counter
	call get_counter
	addl $16,%esp
	movl %ebx,%edi
	movl $99,%ebx
	.p2align 4,,7
.L49:
	fstpt -48(%ebp)
	call get_counter
	fld %st(0)
	fldt -48(%ebp)
	fsubr %st,%st(1)
	fxch %st(1)
	fcoml .LC5
	fnstsw %ax
	andb $5,%ah
	jne .L56
	fstp %st(1)
	addl $-12,%esp
	pushl %edi
	fstpt -32(%ebp)
	fstpt -64(%ebp)
	call times
	movl -16(%ebp),%edx
	addl $16,%esp
	fldt -32(%ebp)
	fldt -64(%ebp)
	cmpl %esi,%edx
	jle .L61
	movl %edx,%eax
	subl %esi,%eax
	movl %eax,-20(%ebp)
	fildl -20(%ebp)
	fdivrp %st,%st(2)
	fldz
	fldl cyc_per_tick
	fucom %st(1)
	fnstsw %ax
	andb $69,%ah
	cmpb $64,%ah
	fstp %st(1)
	je .L58
	fcomp %st(2)
	fnstsw %ax
	andb $69,%ah
	jne .L59
	jmp .L53
.L58:
	fstp %st(0)
.L53:
	fxch %st(1)
	fcoml .LC6
	fnstsw %ax
	andb $69,%ah
	jne .L60
	fstpl cyc_per_tick
	jmp .L52
.L59:
	fstp %st(1)
	jmp .L52
.L60:
	fstp %st(0)
.L52:
	decl %ebx
	movl %edx,%esi
	jmp .L47
.L56:
	fstp %st(0)
.L61:
	fstp %st(1)
.L47:
	testl %ebx,%ebx
	jge .L49
	fstp %st(0)
	cmpl $0,8(%ebp)
	je .L55
	fldl cyc_per_tick
	addl $-4,%esp
	subl $8,%esp
	fstpl (%esp)
	pushl $.LC7
	call printf
.L55:
	leal -88(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 callibrate,.Lfe7-callibrate
.data
	.align 4
	.type	 start_tick,@object
	.size	 start_tick,4
start_tick:
	.long 0
.text
	.align 4
.globl start_comp_counter
	.type	 start_comp_counter,@function
start_comp_counter:
	pushl %ebp
	fldl cyc_per_tick
	fldz
	movl %esp,%ebp
	subl $24,%esp
	fucompp
	fnstsw %ax
	andb $68,%ah
	xorb $64,%ah
	jne .L63
	addl $-12,%esp
	pushl $1
	call callibrate
	addl $16,%esp
.L63:
	addl $-12,%esp
	leal -16(%ebp),%eax
	pushl %eax
	call times
	movl -16(%ebp),%eax
	movl %eax,start_tick
	call start_counter
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 start_comp_counter,.Lfe8-start_comp_counter
	.align 4
.globl get_comp_counter
	.type	 get_comp_counter,@function
get_comp_counter:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	call get_counter
	fstpl -32(%ebp)
	addl $-12,%esp
	leal -16(%ebp),%eax
	pushl %eax
	call times
	movl start_tick,%eax
	movl -16(%ebp),%edx
	subl %eax,%edx
	movl %edx,%eax
	movl %eax,-20(%ebp)
	fildl -20(%ebp)
	fmull cyc_per_tick
	fsubrl -32(%ebp)
	fstl -32(%ebp)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 get_comp_counter,.Lfe9-get_comp_counter
	.ident	"GCC: (GNU) 2.95.3 20010315 (release)"
