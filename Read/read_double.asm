.text
	li $v0, 7	# service code 7 to read .double
			# input will be stored in $f0
	syscall		# to execute the service
