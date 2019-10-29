.data
	number: .word 50	# word is a basic unit to store integer numbers. 4 bytes = 32 bits
.text
	li $v0, 1		# service code 1 to print out .word
	lw $a0, number		# load .word variable by using load word(lw) to $a0. 
				# $a registers are argument registers.
	syscall			# to execute the service
