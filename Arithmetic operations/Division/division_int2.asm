.text
	### Load values to registers $t0-$t1
	li $t0, 10
	li $t1, 2
	### Load values to registers $t0-$t1
	
	div $t0, $t1	# hi = quotient, lo = remainder => hi = $t0 / $t1 | lo = $t0 % $t1
	
	### Move from lo and hi registers to $s2 and $s3
	mflo $s2
	mfhi $s3
	### Move from lo and hi registers to $s2 and $s3