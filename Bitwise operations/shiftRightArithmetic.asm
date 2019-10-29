.text
	li $t1, -89		# 1010 0111
	
	sra $t3, $t1, 1		# 89 = 10100111

	# 1 bit shifted to the right  11010011
	# shift right means division of the number by 2 to the power of amount of shifted bits
	# -89 shifted to the right by 1 bits. New number is -89 / pow(2,1) = -45
	# negative numbers can be shifted only by sra because it keeps sign bit.