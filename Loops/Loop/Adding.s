	.file	"Adding.c"
	.text
.globl add
	.type	add, @function
add:
.LFB1:
	.cfi_startproc
	movq	(%rdi), %rdx
	movl	$0, %eax
	cmpq	%rdx, %rsi
	jl	.L3
.L6:
	addq	%rdx, %rax
	addq	$8, %rdi
	movq	(%rdi), %rdx
	cmpq	%rsi, %rdx
	jle	.L6
.L3:
	rep
	ret
	.cfi_endproc
.LFE1:
	.size	add, .-add
.globl main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	movq	$100, 8(%rsp)
	leaq	8(%rsp), %rdi
	movq	y(%rip), %rsi
	call	add
	movq	%rax, sum(%rip)
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.globl sum
	.bss
	.align 8
	.type	sum, @object
	.size	sum, 8
sum:
	.zero	8
.globl y
	.data
	.align 8
	.type	y, @object
	.size	y, 8
y:
	.quad	200
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-18)"
	.section	.note.GNU-stack,"",@progbits
