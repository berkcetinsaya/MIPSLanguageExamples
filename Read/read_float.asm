.text
	li $v0, 6	# service code 6 to read .float
			# input will be stored in $f0
	syscall		# to execute the service
