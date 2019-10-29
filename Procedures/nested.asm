.data
	line: .asciiz "\n"
.text
	main:
		addi $s0, $zero, 10
		
		jal increaseNumber 	# function call
		
		#print a new line
		li $v0,4
		la $a0, line
		syscall
		
		jal printValue

		li $v0, 10
		syscall
	
	increaseNumber:
		addi $sp, $sp, -8 	# allocate 8bytes, to allocate negative
		sw $s0, 0($sp)		# store the value in the stack
		sw $ra, 4($sp)		# store address in 4
		
		addi $s0, $s0, 30
		
		#nested procedure
		jal printValue
		
		lw $s0, 0($sp) 		# load the value that we stored
		lw $ra, 4($sp) 		# load
		addi $sp, $sp, 8
			
		jr $ra 			# return to main	
		
		
	printValue:
		li $v0, 1
		move $a0, $s0
		syscall	
		
		jr $ra			# return to the last address jumped from
