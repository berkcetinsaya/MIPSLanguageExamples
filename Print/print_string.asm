.data
	message: .asciiz "Test"	# asciiz is a basic unit to store string variables.
.text
	li $v0, 4		# service code 4 to print out .asciiz
	la $a0, message		# load .asciiz variable by using load address (la) to $a0
				# $a registers are argument registers.
	syscall			# to execute the service
