.data
	number1: .word 10	# integer variable number1 created
.text
	lw $t1, number1		# number1 loaded into register $t1
	
	subi $t0, $t1, 20	# $t0 = $t1 - 20