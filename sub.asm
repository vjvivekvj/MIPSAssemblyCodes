.data
prompt1: .asciiz "ENter num 1: "
prompt2: .asciiz "ENter num 2: "
msg: .asciiz "Difference: "

.text
main:

la $a0, prompt1
li $v0, 4
syscall

li $v0, 5
syscall
move $t0, $v0

la $a0, prompt2
li $v0, 4
syscall

li $v0, 5
syscall
move $t1, $v0

sub $t2, $t1, $t0

la $a0, msg
li $v0, 4
syscall

move $a0, $t2
li $v0, 1
syscall

li $v0, 10
syscall




