.data
	message: .asciiz "This is a message\n"
	buffer: .space 4	# address space will be allocated to store string variable
	maxBuffer: .word 4	# length of the maxBuffer
.text
	la $a0, message		# general message to print will be loaded to $a0
	la $a1, buffer		# (buffer) bytes user input will be stored in $a1
				# $a1 = 0:OK(user input), -2:Cancel, -3:OK but no data, -4:Length exceeded.
	lw $a2, maxBuffer	# max bytes which will be read will be stored in $a2
	addi $v0, $zero, 54	# service 54 to display a string dialog box to get a string input from the user
	syscall
