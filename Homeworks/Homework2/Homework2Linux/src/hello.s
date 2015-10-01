	.file	"hello.c"
	.section	.rodata
.LC0:
	.string	"output.txt"
.LC1:
	.string	"Hello World"
.LC2:
	.string	"a"
.LC3:
	.string	"input.txt"
	.align 8
.LC4:
	.string	"Can't open input file input.txt!\n"
.LC5:
	.string	"Can't open output file %s!\n"
	.align 8
.LC6:
	.string	"..appending text to INPUT file."
	.align 8
.LC7:
	.string	"..appending text to OUTPUT file."
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$.LC0, -8(%rbp)
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC2, %esi
	movl	$.LC3, %edi
	call	fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	movl	$1, %esi
	movl	$.LC4, %edi
	call	fwrite
	movl	$1, %edi
	call	exit
.L2:
	movq	-8(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L3
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$1, %edi
	call	exit
.L3:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc
	movb	%al, -25(%rbp)
	cmpb	$-1, -25(%rbp)
	jne	.L4
	jmp	.L7
.L4:
	movsbl	-25(%rbp), %eax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_IO_putc
	jmp	.L3
.L7:
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	movl	$1, %esi
	movl	$.LC6, %edi
	call	fwrite
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	movl	$1, %esi
	movl	$.LC7, %edi
	call	fwrite
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.3 20140911 (Red Hat 4.8.3-9)"
	.section	.note.GNU-stack,"",@progbits
