.data
	buffer: .space 4 	# address space will be allocated to store string variable
	maxBuffer: .word 4	# length of the maxBuffer
.text
	li $v0, 8		# service code 8 to read .asciiz
	la $a0, buffer		# (buffer) bytes user input will be stored in $a0
	lw $a1, maxBuffer	# max bytes which will be read will be stored in $a1
				# input will be stored in buffer
	syscall			# to execute the service
