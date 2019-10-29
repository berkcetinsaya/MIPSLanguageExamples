.data
	message: .asciiz "This is a message\n"
	number: .double 50.0
.text
	la $a0, message		# general message to print will be loaded to $a0
	ldc1 $f12, number	# double number to print will be loaded to $f12
	addi $v0, $zero, 58	# service 58 to display a double dialog box
	syscall
