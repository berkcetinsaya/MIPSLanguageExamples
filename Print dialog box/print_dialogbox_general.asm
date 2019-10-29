.data
	message: .asciiz "This is a message"
	type: .word 0
.text
	la $a0, message		# general message to print will be loaded to $a0
	lw $a1, type		# 0:Error
				# 1:Info
				# 2:Warning
				# 3:Question
	addi $v0, $zero, 55	# service 55 to display a general dialog box
	syscall