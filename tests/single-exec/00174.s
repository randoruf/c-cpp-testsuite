	.text
	.file	"00174.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4611686018427387904     # double 2
.LCPI0_2:
	.quad	-4600235616374798418    # double -12.34
.LCPI0_3:
	.quad	4623136420479977390     # double 12.34
.LCPI0_4:
	.quad	4633187891898314916     # double 56.780000000000001
.LCPI0_6:
	.quad	4596998160396453271     # double 0.21733004579077139
.LCPI0_7:
	.quad	4649374332095605349     # double 700.66520000000003
.LCPI0_8:
	.quad	-4591920845562765640    # double -44.439999999999998
.LCPI0_9:
	.quad	4634564304534430024     # double 69.120000000000005
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	1073741824              # float 2
.LCPI0_5:
	.long	1095069860              # float 12.3400002
.LCPI0_10:
	.long	1116355953              # float 69.1200027
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movss	.LCPI0_10(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	$0, -4(%rbp)
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str, %rdi
	movb	$1, %al
	callq	printf
	movsd	.LCPI0_9(%rip), %xmm0   # xmm0 = mem[0],zero
	movabsq	$.L.str, %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
	movsd	.LCPI0_8(%rip), %xmm0   # xmm0 = mem[0],zero
	movabsq	$.L.str, %rdi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
	movsd	.LCPI0_7(%rip), %xmm0   # xmm0 = mem[0],zero
	movabsq	$.L.str, %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movabsq	$.L.str, %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movabsq	$.L.str.1, %rdi
	movl	$1, %edx
	movl	%edx, %esi
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	-28(%rbp), %r8d         # 4-byte Reload
	movl	-28(%rbp), %r9d         # 4-byte Reload
	movl	$1, (%rsp)
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movabsq	$.L.str.1, %rdi
	movl	%ecx, %esi
	movl	$1, %edx
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	-36(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-40(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movabsq	$.L.str.1, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	$1, %r8d
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	-48(%rbp), %r9d         # 4-byte Reload
	movl	$1, (%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -8(%rbp)
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str, %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -8(%rbp)
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -8(%rbp)
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str, %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -8(%rbp)
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movabsq	$.L.str, %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movabsq	$.L.str, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str, %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	printf
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	sin
	movabsq	$.L.str, %rdi
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%f\n"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d %d %d %d %d %d\n"
	.size	.L.str.1, 19

	.ident	"clang version 10.0.0 (https://github.com/randoruf/strongbox-llvm10.git f29364ef84b26071562e2b8722c9583f0edd810a)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym sin
