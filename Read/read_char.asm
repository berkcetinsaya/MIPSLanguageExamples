.text
	li $v0, 12	# service code 12 to read .char
			# ascii value of the input will be stored in $v0
	syscall		# to execute the service
