		.text
impar:		rem	$t0, $t0, 2		# ($t0) = x % 2
		bnez	$t0, else		# if (x % 2 == 0)
		li	$v0, 0			# return 0
		jr	$ra			
else:		li	$v0, 1			# return 1
		jr 	$ra
