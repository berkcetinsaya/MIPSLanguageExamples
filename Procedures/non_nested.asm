.data
	newLine: .asciiz "\n"
.text
	main:
		addi $s0, $zero, 10
		
		jal increaseMyRegister # function call
		
		#print a new line
		li $v0,4
		la $a0, newLine
		syscall
		
		#print value
		li $v0,1
		move $a0, $s0
		syscall
	
		li $v0, 10
		syscall

	increaseMyRegister:
		addi $sp, $sp, -4 	# allocate 4 bytes, to allocate use negative
		sw $s0, 0($sp) 		# store the value in the stack
		
		addi $s0, $s0, 30

		li $v0, 1
		move $a0, $s0
		syscall
		
		lw $s0, 0($sp) 		# load the value that we stored
		addi $sp, $sp,4		# reallocate 4 bytes, to reallocate use positive
			
		jr $ra 			# return to main	
		
