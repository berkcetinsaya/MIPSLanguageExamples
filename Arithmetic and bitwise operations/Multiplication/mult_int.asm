.text
	### Load values to registers $t0-$t1
	li $t0, 5
	li $t1, 2
	### Load values to registers $t0-$t1
	
	mult $t0, $t1	#hi, lo = $t0 * $t1
	
	### Move from lo and hi registers to $s2 and $s3
	mflo $s2
	mfhi $s3
	### Move from lo and hi registers to $s2 and $s3