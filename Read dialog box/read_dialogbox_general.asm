.data
	message: .asciiz "This is a message\n"
.text
	la $a0, message		# general message to print will be loaded to $a0
				# user selection will be stored in $a0
				# $a0 = 0:Yes, 1:No, 2:Cancel
	addi $v0, $zero, 50	# service 50 to display a general dialog box to get user's selection without an input.
	syscall
