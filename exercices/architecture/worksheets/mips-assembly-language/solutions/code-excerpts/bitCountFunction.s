bitCount:	subi 	$sp, $sp, 8		# free 8 bytes on stack 
		sw 	$ra, 0($sp) 		# save value of $ra on the first 4 memory bytes
		sw 	$s0, 4($sp) 		# save value of $s0 on the second 4 memory bytes
if:		bnez 	$a0, else 		# if (x == 0)
		li 	$v0, 0			# return 0
		lw 	$ra, 0($sp) 		# restore value of $ra from memory
		lw 	$s0, 4($sp) 		# restore value of $s0 from memory
		addi 	$sp, $sp, 8 		# restore stack space
		jr 	$ra			
else:		andi 	$s0, $a0, 1 		# bit = x & 0x1
		srl 	$a0, $a0, 1 		# ($a0) = x >> 1
		jal 	bitCount 		# bitCount(x >> 1)
		lw 	$ra, 0($sp) 		# restore value of $ra from memory
		lw 	$s0, 4($sp) 		# restore value of $s0 from memory
		addi 	$sp, $sp, 8 		# restore stack spac		# restore stack spacee
		jr 	$ra
