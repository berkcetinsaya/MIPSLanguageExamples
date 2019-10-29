.data
	zero: .double 0.0	# You can not use registers from outside the coprocessor 1 in floats and doubles. 
				# Therefore, we will define $f0 as our zero register.
	number: .double 50.1	# double is a basic unit to store double numbers.
.text
	ldc1 $f0, zero		# load .double variable "zero" by using load double word coprocessor1(ldc1) into $f0.
	ldc1 $f2, number	# load .double variable "number" by using load double word coprocessor1(ldc1) into $f2.
				# double numbers use 2 registers. Therefore, use even registers such as $f0, $f2, $f4...
	li $v0, 3		# service code 3 to print out .double
	add.d $f12, $f0, $f2	# $f12 = $f0 + $f2. 
	#mov.d $f12, $f2 	# is same as line 11. It will load $f2 into $f12.						
				# all doubles are in coprocessor1 and use $f12 as their argument register.
	syscall			# to execute the service
