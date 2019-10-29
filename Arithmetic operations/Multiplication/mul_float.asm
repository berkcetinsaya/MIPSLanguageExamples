.data
	number1: .float 5.0	# float variable number1 created
	number2: .float 2.0	# float variable number2 created
.text
	lwc1 $f2, number1	# number1 loaded into register $f2
	lwc1 $f3, number2	# number2 loaded into register $f3
	
	mul.s $f0, $f2, $f3	# $f0 = $f2 * $f3