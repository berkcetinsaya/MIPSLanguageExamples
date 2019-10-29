.data
	message: .asciiz "This is a message\n"
.text
	la $a0, message		# general message to print will be loaded to $a0
				# user input will be stored in $a0
				# user selection will be stored in $a1
				# $a1 = 0:OK, -1:Wrong input, -2:Cancel, -3:OK but no data.
	addi $v0, $zero, 51	# service 51 to display an integer dialog box to get an integer input from the user
	syscall
