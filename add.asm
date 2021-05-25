.data
prompt1: .asciiz "Enter num 1: "
prompt2: .asciiz "ENter num 2: "
msg: .asciiz "SUM: "

.text
main:

#ask for num 1
la $a0, prompt1
li $v0, 4
syscall

#input num 1 and store it
li $v0, 5
syscall
move $t0, $v0

#ask for num 2
la $a0, prompt2
li $v0, 4
syscall

#input num 2 and store it
li $v0, 5
syscall
move $t1, $v0

#add the nos and store them into $t2
add $t2, $t1, $t0

#print the sum into console
la $a0, msg
li $v0, 4
syscall

move $a0, $t2
li $v0, 1
syscall

#terminate program
li $v0, 10
syscall
