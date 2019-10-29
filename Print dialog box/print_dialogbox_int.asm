.data
	message: .asciiz "This is a message\n"
	number: .word 50
.text
	la $a0, message		# general message to print will be loaded to $a0
	lw $a1, number		# integer number to print will be loaded to $a1
	addi $v0, $zero, 56	# service 56 to display an integer dialog box
	syscall
