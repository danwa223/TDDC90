	.file	"sp.c"
	.text
.globl main
	.type	main, @function
main:
	leal	4(%esp), %ecx
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ecx
	subl	$116, %esp
	movl	4(%ecx), %eax
	movl	%eax, -104(%ebp)
	movl	__stack_chk_guard, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	movl	-104(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy
	movl	-8(%ebp), %edx
	xorl	__stack_chk_guard, %edx
	je	.L3
	call	__stack_chk_fail
.L3:
	addl	$116, %esp
	popl	%ecx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.1.2 20061115 (prerelease) (Debian 4.1.1-21)"
	.section	.note.GNU-stack,"",@progbits
