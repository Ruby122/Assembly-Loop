	.file	"test.c"
	.text
.globl add
	.type	add, @function
add:
.LFB1:
	.cfi_startproc
	addl	(%rsi), %edi
	subl	%edx, %edi
	movl	%edi, %edx
	subl	(%rcx), %edx
	movslq	%edx, %rax
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
	movq	$50, 8(%rsp)
	leaq	8(%rsp), %rcx
	movq	$-30, %rdx
	movl	$y, %esi
	movq	x(%rip), %rdi
	call	add
	movq	%rax, sum(%rip)
	movl	$50, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.globl x
	.data
	.align 8
	.type	x, @object
	.size	x, 8
x:
	.quad	100
.globl y
	.align 8
	.type	y, @object
	.size	y, 8
y:
	.quad	200
	.comm	sum,8,8
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-18)"
	.section	.note.GNU-stack,"",@progbits
