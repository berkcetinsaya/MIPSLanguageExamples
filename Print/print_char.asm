.data
	message: .byte 'a'	# byte is a basic unit to store a character.
.text
	li $v0, 11		# service code 11 to print out .byte
	lb $a0, message		# load .byte variable by using load byte (lb) to $a0
				# $a registers are argument registers.
	syscall			# to execute the service
