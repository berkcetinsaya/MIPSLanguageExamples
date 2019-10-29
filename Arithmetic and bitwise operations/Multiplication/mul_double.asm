.data
	number1: .double 5.0	#double variable number1 created
	number2: .double 2.0	#double variable number2 created
.text
	ldc1 $f2, number1	#number1 loaded into register $f2
	ldc1 $f4, number2	#number2 loaded into register $f4
	
	mul.d $f0, $f2, $f4	#$f0 = $f2 * $f4