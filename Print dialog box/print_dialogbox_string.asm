.data
	message1: .asciiz "This is the first message\n"
	message2: .asciiz "This is the second message"
.text
	la $a0, message1	# general message to print will be loaded to $a0
	la $a1, message2	# string message to print will be loaded to $a1
	addi $v0, $zero, 59	# service 59 to display a string dialog box
	syscall
