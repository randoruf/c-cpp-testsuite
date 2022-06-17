	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_chk                            ## -- Begin function chk
	.p2align	4, 0x90
_chk:                                   ## @chk
	.cfi_startproc
## %bb.0:                               ## %entry
	addq	$8, %r14
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rbp, (%r14)
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
LBB0_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$8, -12(%rbp)
	jge	LBB0_12
## %bb.2:                               ## %for.body
                                        ##   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	movq	_t(%rip), %rcx
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %esi
	shll	$3, %esi
	addl	%esi, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movq	_t(%rip), %rcx
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %esi
	shll	$3, %esi
	addl	%esi, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	addl	-12(%rbp), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	-8(%rbp), %ecx
	addl	-12(%rbp), %ecx
	cmpl	$8, %ecx
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	LBB0_4
## %bb.3:                               ## %if.then
                                        ##   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	movq	_t(%rip), %rcx
	movl	-4(%rbp), %edx
	addl	-12(%rbp), %edx
	movl	-8(%rbp), %esi
	addl	-12(%rbp), %esi
	shll	$3, %esi
	addl	%esi, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	movl	%eax, -16(%rbp)
LBB0_4:                                 ## %if.end
                                        ##   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	-12(%rbp), %eax
	cmpl	$8, %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	-8(%rbp), %ecx
	subl	-12(%rbp), %ecx
	cmpl	$0, %ecx
	setge	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	LBB0_6
## %bb.5:                               ## %if.then26
                                        ##   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	movq	_t(%rip), %rcx
	movl	-4(%rbp), %edx
	addl	-12(%rbp), %edx
	movl	-8(%rbp), %esi
	subl	-12(%rbp), %esi
	shll	$3, %esi
	addl	%esi, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	movl	%eax, -16(%rbp)
LBB0_6:                                 ## %if.end34
                                        ##   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	subl	-12(%rbp), %eax
	cmpl	$0, %eax
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	-8(%rbp), %ecx
	addl	-12(%rbp), %ecx
	cmpl	$8, %ecx
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	LBB0_8
## %bb.7:                               ## %if.then43
                                        ##   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	movq	_t(%rip), %rcx
	movl	-4(%rbp), %edx
	subl	-12(%rbp), %edx
	movl	-8(%rbp), %esi
	addl	-12(%rbp), %esi
	shll	$3, %esi
	addl	%esi, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	movl	%eax, -16(%rbp)
LBB0_8:                                 ## %if.end51
                                        ##   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	subl	-12(%rbp), %eax
	cmpl	$0, %eax
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	-8(%rbp), %ecx
	subl	-12(%rbp), %ecx
	cmpl	$0, %ecx
	setge	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	LBB0_10
## %bb.9:                               ## %if.then60
                                        ##   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	movq	_t(%rip), %rcx
	movl	-4(%rbp), %edx
	subl	-12(%rbp), %edx
	movl	-8(%rbp), %esi
	subl	-12(%rbp), %esi
	shll	$3, %esi
	addl	%esi, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	movl	%eax, -16(%rbp)
LBB0_10:                                ## %if.end68
                                        ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_11
LBB0_11:                                ## %for.inc
                                        ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB0_1
LBB0_12:                                ## %for.end
	movl	-16(%rbp), %eax
	movq	(%r14), %rbp
	subq	$8, %r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_go                             ## -- Begin function go
	.p2align	4, 0x90
_go:                                    ## @go
	.cfi_startproc
## %bb.0:                               ## %entry
	addq	$8, %r14
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rbp, (%r14)
	leaq	-8(%rsp), %rbp
	.cfi_def_cfa_register %rbp
	subq	$24, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$8, -8(%rbp)
	jne	LBB1_2
## %bb.1:                               ## %if.then
	movl	_N(%rip), %eax
	addl	$1, %eax
	movl	%eax, _N(%rip)
	movl	$0, -4(%rbp)
	jmp	LBB1_13
LBB1_2:                                 ## %if.end
	jmp	LBB1_3
LBB1_3:                                 ## %for.cond
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_5 Depth 2
	cmpl	$8, -16(%rbp)
	jge	LBB1_12
## %bb.4:                               ## %for.body
                                        ##   in Loop: Header=BB1_3 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ## %for.cond2
                                        ##   Parent Loop BB1_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	LBB1_10
## %bb.6:                               ## %for.body4
                                        ##   in Loop: Header=BB1_5 Depth=2
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	_chk
	cmpl	$0, %eax
	jne	LBB1_8
## %bb.7:                               ## %if.then6
                                        ##   in Loop: Header=BB1_5 Depth=2
	movq	_t(%rip), %rax
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	shll	$3, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movl	-8(%rbp), %edi
	addl	$1, %edi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	_go
	movq	_t(%rip), %rax
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	shll	$3, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$-1, %edx
	movl	%edx, (%rax,%rcx,4)
LBB1_8:                                 ## %if.end14
                                        ##   in Loop: Header=BB1_5 Depth=2
	jmp	LBB1_9
LBB1_9:                                 ## %for.inc
                                        ##   in Loop: Header=BB1_5 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB1_5
LBB1_10:                                ## %for.end
                                        ##   in Loop: Header=BB1_3 Depth=1
	movl	$0, -12(%rbp)
## %bb.11:                              ## %for.inc16
                                        ##   in Loop: Header=BB1_3 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB1_3
LBB1_12:                                ## %for.end18
	movl	$0, -4(%rbp)
LBB1_13:                                ## %return
	movl	-4(%rbp), %eax
	addq	$24, %rsp
	movq	(%r14), %rbp
	subq	$8, %r14
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rdi
	pushq	%rsi
	movl	$1024, %edi                     ## imm = 0x400
	callq	_malloc
	movq	%rax, %r14
	popq	%rsi
	popq	%rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$64, %edi
	movl	$4, %esi
	callq	_calloc
	movq	%rax, _t(%rip)
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	%edx, %esi
	callq	_go
	cmpl	$92, _N(%rip)
	je	LBB2_2
## %bb.1:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB2_3
LBB2_2:                                 ## %if.end
	movl	$0, -4(%rbp)
LBB2_3:                                 ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	movq	%r14, %rdi
	callq	_free
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_t                              ## @t
.zerofill __DATA,__common,_t,8,3
	.globl	_N                              ## @N
.zerofill __DATA,__common,_N,4,2
.subsections_via_symbols
