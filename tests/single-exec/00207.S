	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_f1                             ## -- Begin function f1
	.p2align	4, 0x90
_f1:                                    ## @f1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %eax
                                        ## kill: def $rax killed $eax
	movq	%rsp, %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	LBB0_1
	jmp	LBB0_3
LBB0_1:
	jmp	LBB0_2
LBB0_2:
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB0_3:
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	jne	LBB0_6
## %bb.4:
	movq	-24(%rbp), %rax
	movq	%rax, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_7
## %bb.5:
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB0_6:
	jmp	LBB0_2
LBB0_7:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_f2                             ## -- Begin function f2
	.p2align	4, 0x90
_f2:                                    ## @f2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
## %bb.1:
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_f3                             ## -- Begin function f3
	.p2align	4, 0x90
_f3:                                    ## @f3
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	L_.str.1(%rip), %rdi
	movl	$11, %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	movl	$12, %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	xorl	%esi, %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	movl	$1, %esi
	movb	$0, %al
	callq	_printf
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$2, %edi
	callq	_f1
	callq	_f2
	callq	_f3
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"boom!\n"

L_.str.1:                               ## @.str.1
	.asciz	"%d\n"

.subsections_via_symbols
