	.file	"sorting.c"
	.text
.globl bubble
	.type	bubble, @function
bubble:
.LFB1:
	.cfi_startproc
	leaq	-1(%rsi), %r8
	movl	$0, %r9
	testq	%r8, %r8
	jg	.L11
	ret
.L9:
	movq	8(%rdi,%rax,8), %rdx
	movq	(%rdi,%rax,8), %rcx
	cmpq	%rcx, %rdx
	jge	.L4
	movq	%rcx, 8(%rdi,%rax,8)
	movq	%rdx, (%rdi,%rax,8)
.L4:
	addq	$1, %rax
	cmpq	%r8, %rax
	jne	.L9
.L7:
	subq	$1, %r8
	je	.L8
.L11:
	movq	%r9, %rax
	testq	%r8, %r8
	jg	.L9
	jmp	.L7
.L8:
	.p2align 4,,5
	rep
	ret
	.cfi_endproc
.LFE1:
	.size	bubble, .-bubble
.globl main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	movl	$10, %esi
	movl	$a, %edi
	call	bubble
	rep
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.globl a
	.data
	.align 32
	.type	a, @object
	.size	a, 80
a:
	.quad	3
	.quad	2
	.quad	4
	.quad	5
	.quad	1
	.quad	9
	.quad	7
	.quad	10
	.quad	13
	.quad	17
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-18)"
	.section	.note.GNU-stack,"",@progbits
