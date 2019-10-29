.data
	zero: .float 0.0	# You can not use registers from outside of the coprocessor 1 in floats and doubles. 
				# Therefore, we will define $f0 as our zero register.
	number: .float 3.14	# float is a basic unit to store float numbers.
.text
	lwc1 $f0, zero		# load .float variable "zero" by using load word coprocessor1(lwc1) into $f0.
	lwc1 $f1, number	# load .float variable "number" by using load word coprocessor1(lwc1) into $f1.
				# float numbers do not use 2 registers. 
				# Therefore, you can also use odd registers such as $f0, $f1, $f2, $f3...
	li $v0, 2		# service code 2 to print out .float
	add.s $f12, $f0, $f1	# $f12 = $f0 + $f1. 
	#mov.s $f12, $f1 	# is same as line 11. It will load $f1 into $f12.						
				# all floats are in coprocessor1 and use $f12 as their argument register.
	syscall			# to execute the service
