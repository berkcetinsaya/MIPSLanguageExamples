.data
	number1: .float 10.54	# float variable number1 created
	number2: .float 20.32	# float variable number2 created
.text
	lwc1 $f1, number1	# number1 loaded into register $f1
	lwc1 $f2, number2	# number2 loaded into register $f2
	
	add.s $f0, $f1, $f2	# $f0 = $f1 + $f2