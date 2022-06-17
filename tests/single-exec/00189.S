	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_fred                           ## -- Begin function fred
	.p2align	4, 0x90
_fred:                                  ## @fred
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rbp, %r15
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	leaq	-8(%rsp), %rbp
	.cfi_def_cfa_register %rbp
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %esi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$42, %eax
	addq	$24, %rsp
	movq	%r15, %rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	_fprintfptr(%rip), %rax
	movq	%rax, -16(%rbp)                 ## 8-byte Spill
	movq	___stdoutp@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	movl	$24, %edi
	callq	*_f(%rip)
	movq	-24(%rbp), %rdi                 ## 8-byte Reload
	movq	-16(%rbp), %rcx                 ## 8-byte Reload
	movl	%eax, %edx
	leaq	L_.str.1(%rip), %rsi
	movb	$0, %al
	callq	*%rcx
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"yo %d\n"

	.section	__DATA,__data
	.globl	_f                              ## @f
	.p2align	3
_f:
	.quad	_fred

	.globl	_fprintfptr                     ## @fprintfptr
	.p2align	3
_fprintfptr:
	.quad	_fprintf

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
