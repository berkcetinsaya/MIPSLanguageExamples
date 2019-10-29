.text
	li $t1, 5		# 0000 0101
	
	srl $t3, $t1, 2		# 5 = 00000101

	# 1 bit shifted to the right  00000010
	# 2 bits shifted to the right 00000001
	# shift right means division of the number by 2 to the power of amount of shifted bits
	# 5 shifted to the right by 2 bits. New number is 5 / pow(2,2) = 1
						