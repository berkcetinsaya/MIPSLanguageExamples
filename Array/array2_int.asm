.data
	myArray: .space 12 ### Allocates 12 consecutive bytes in memory
.text
	### Load values to registers $t0-$t2
	addi $t0, $zero, 1
	addi $t1, $zero, 2
	addi $t2, $zero, 3
	### Load values to registers $t0-$t2
		
	### Counter for offset values will be stored in register $s0
	addi $s0, $zero, 0
	### Counter for offset values will be stored in register $s0
	
	### Store values in array's address by using offset values. Increment offset values by 4 (bytes)(word).
	sw $t0, myArray($s0)
	addi $s0, $s0, 4
	sw $t1, myArray($s0)
	addi $s0, $s0, 4
	sw $t2, myArray($s0)
	### Store values in array's address by using offset values. Increment offset values by 4 (bytes)(word).
	
	### Load array's elements to registers $s4-$s2. Decrement offset values by 4 (bytes)(word).
	lw $s4, myArray($s0)
	addi $s0, $s0, -4
	lw $s3, myArray($s0)
	addi $s0, $s0, -4
	lw $s2, myArray($s0)
	### Load array's elements to registers $s4-$s2. Decrement offset values by 4 (bytes)(word).