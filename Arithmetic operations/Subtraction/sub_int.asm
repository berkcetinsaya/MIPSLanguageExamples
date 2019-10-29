.data
	number1: .word 10	# integer variable number1 created
	number2: .word 20	# integer variable number2 created
.text
	lw $t1, number1		# number1 loaded into register $t1
	lw $t2, number2		# number2 loaded into register $t2
	
	sub $t0, $t1, $t2	# $t0 = $t1 - $t2