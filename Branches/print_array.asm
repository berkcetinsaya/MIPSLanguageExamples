.data
	list: .word 2, 3, 5, 7, 11, 13, 17, 19, 23, 29
	size: .word 10
	NL: .asciiz "\n"
.text
	lw $t3, size		# get the size of array
	la $t1, list		# get array address
	li $t2, 0		# set loop counter
loop:
	beq $t2, $t3, exit	# check for array end

	lw $a0, ($t1) 		# print list element
	li $v0, 1
	syscall

	la $a0, NL 		# print a newline
	li $v0, 4
	syscall

	addi $t2, $t2, 1 	# advance loop counter
	addi $t1, $t1, 4 	# advance array pointer

	b loop 			# repeat the loop
exit:
	li $v0, 10
	syscall