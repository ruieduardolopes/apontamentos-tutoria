		.data

		.text
		.globl	main
main:		lw	$s0, 16($s7)		# f = B[4]
		sll	$s0, $s0, 2		# f = f * 4 = B[4] * 4
		add	$s0, $s0, $s6		# f = &A[f] = &A[B[4]]
		lw	$s0, 0($s0)		# f = A[f] = A[B[4]]
		sub	$s0, $s1, $s0		# f = g - f = g - A[B[4]]
