.data
	myArray: .space 12 	# Allocates 12 consecutive bytes in memory
	float1: .float 10.31
	float2: .float 11.987
	float3: .float 12.452
.text
	### Load values to registers $f0-$f4
	lwc1 $f0, float1
	lwc1 $f2, float2
	lwc1 $f4, float3
	### Load values to registers $f0-$f4
		
	### Counter for offset values will be stored in register $s0
	addi $s0, $zero, 0
	### Counter for offset values will be stored in register $s0
	
	### Store values in array's address by using offset values. Increment offset values by 4 (bytes)(float).
	swc1 $f0, myArray($s0)
	addi $s0, $s0, 4
	swc1 $f2, myArray($s0)
	addi $s0, $s0, 4
	swc1 $f4, myArray($s0)
	### Store values in array's address by using offset values. Increment offset values by 4 (bytes)(float).
	
	### Load array's elements to registers $f12-$f8. Decrement offset values by 4 (bytes)(float).
	lwc1 $f12, myArray($s0)
	addi $s0, $s0, -4
	lwc1 $f10, myArray($s0)
	addi $s0, $s0, -4
	lwc1 $f8, myArray($s0)
	### Load array's elements to registers $f12-$f8. Decrement offset values by 4 (bytes)(float).