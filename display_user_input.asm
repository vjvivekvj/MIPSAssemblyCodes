.data
	prompt: .asciiz "Enter Your Age: "
	msg: .asciiz "Your Age is: "

.text 
	main:
	# prompt user to enter age
	la $a0, prompt
	li $v0, 4
	syscall
	
	#Get the user's input
	li $v0, 5
	syscall
	
	#Store result in $t0
	move $t0, $v0
	
	#Display
	li $v0, 4
	la $a0, msg
	syscall
	
	#Print age
	move $a0, $t0
	li $v0, 1
	syscall
	
	#terminate the program
	li $v0, 10
	syscall
	
