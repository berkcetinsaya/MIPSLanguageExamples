.data
	value1: .word 55
	value2: .word 55
	message1: .asciiz "Equal\n"
	message2: .asciiz "Not Equal\n"	
.text
	main:
		li $v0, 5
		syscall
		move $t0, $v0
		
		li $v0, 5
		syscall
		move $t1, $v0

		#lw $t0, value1
		#lw $t1, value2
		
		beq $t0, $t1, equal
		j Notequal
	
	callexit:
		b exit		
	equal:
		li $v0,4
		la $a0, message1
		syscall
		b callexit
	Notequal:
		li $v0,4
		la $a0, message2
		syscall
		b callexit
	exit:
		li $v0, 10
		syscall
