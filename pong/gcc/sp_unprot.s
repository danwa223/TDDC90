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
	subl	$100, %esp
	movl	4(%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy
	addl	$100, %esp
	popl	%ecx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.1.2 20061115 (prerelease) (Debian 4.1.1-21)"
	.section	.note.GNU-stack,"",@progbits
