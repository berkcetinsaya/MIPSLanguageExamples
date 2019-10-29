.text
	addi $t1, $zero, 5	# 0000 0101
	
	sll $t2, $t1, 2		# 5 = 00000101

	# 1 bit shifted to the left   00001010
	# 2 bits shifted to the left  00010100
	# shift left means multiplication of the number by 2 to the power of amount of shifted bits
	# 5 shifted to the left by 2 bits. New number is 5 * pow(2,2) = 20