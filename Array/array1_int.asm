.data
	myArray: .word 1, 2, 3	#define myArray in the memory
	word1: .word 10
	word2: .word 11
	word3: .word 12
.text
	la $s0, myArray		# Load array's address to register $s0.

	# Offset calculation: The 3rd element of myArray is myArray[2] = 3. Index value is 2. Word allocates 4 bytes in the memory. 
	# bytes * index = 4 * 2 = 8. It is the offset value for the 3rd element of the array.

	### Load array's elements to registers $t0-$t2. 
	lw $t0, ($s0)
	lw $t1, 4($s0)
	lw $t2, 8($s0)
	### Load array's elements to registers $t0-$t2.
	
	### Load new values to registers $t3-$t5.
	lw $t3, word1
	lw $t4, word2
	lw $t5, word3
	### Load new values to registers $t3-$t5.
	
	### Store new values in array's address by using offset values.
	sw $t3, ($s0)
	sw $t4, 4($s0)
	sw $t5, 8($s0)
	### Store new values in array's address by using offset values.
	
	### Load array's elements to registers $s3-$s5. 
	lw $s3, ($s0)
	lw $s4, 4($s0)
	lw $s5, 8($s0)
	### Load array's elements to registers $s3-$s5.