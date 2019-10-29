.data
	message: .asciiz "This is a message\n"
	number: .float 50.0
.text
	la $a0, message		# general message to print will be loaded to $a0
	lwc1 $f12, number	# float number to print will be loaded to $f12
	addi $v0, $zero, 57	# service 57 to display a float dialog box
	syscall