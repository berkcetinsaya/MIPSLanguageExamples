.text
	li $v0, 5	# service code 5 to read .word
			# input will be stored in $v0
	syscall		# to execute the service
