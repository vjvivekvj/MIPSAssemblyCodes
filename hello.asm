.data
str: .asciiz "hello"
.text
main:
la $a0 , str
li $v0, 4
syscall
li $a0, 10
li $v0 , 1
syscall
li $v0, 10
syscall
