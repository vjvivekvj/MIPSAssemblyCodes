.data
	pi: .float 3.1415
	k: .float 4.0
	l: .float 3.0
	zero: .float 0.0

.text
main:
	l.s $f4, zero
	#read diameter
	li $v0, 6
	syscall

	#calculate radius
	li.s $f6, 2.0
	div.s $f6, $f0, $f6

	#vol = vol*k
	l.s $f8, pi
	l.s $f10, k
	mul.s $f8, $f8, $f10

	#vol = vol/l
	l.s $f10, l
	div.s $f8, $f8, $f10

	#vol = vol * r * r * r
	mul.s $f8, $f8, $f6
	mul.s $f8, $f8, $f6
	mul.s $f8, $f8, $f6

	#print 
	li $v0, 2
	add.s $f12, $f4, $f8
	syscall

	#terminate
	li $v0, 10
	syscall
