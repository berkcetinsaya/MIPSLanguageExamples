.data
	myArray: .space 24 	# Allocates 24 consecutive bytes in memory
	double1: .double 10.31
	double2: .double 11.987
	double3: .double 12.452
.text
	### Load values to registers $f0-$f4
	ldc1 $f0, double1
	ldc1 $f2, double2
	ldc1 $f4, double3
	### Load values to registers $f0-$f4
		
	### Counter for offset values will be stored in register $s0
	addi $s0, $zero, 0
	### Counter for offset values will be stored in register $s0
	
	### Store values in array's address by using offset values. Increment offset values by 8 (bytes)(double).
	sdc1 $f0, myArray($s0)
	addi $s0, $s0, 8
	sdc1 $f2, myArray($s0)
	addi $s0, $s0, 8
	sdc1 $f4, myArray($s0)
	### Store values in array's address by using offset values. Increment offset values by 8 (bytes)(double).
	
	### Load array's elements to registers $f16-$f12. Decrement offset values by 8 (bytes)(double).
	ldc1 $f16, myArray($s0)
	addi $s0, $s0, -8
	ldc1 $f14, myArray($s0)
	addi $s0, $s0, -8
	ldc1 $f12, myArray($s0)
	### Load array's elements to registers $f16-$f12. Decrement offset values by 8 (bytes)(double).