.global _start
_start:

	# If/Else Statement
	
	# if(a == m)
	# f = g+h;
	# else
	# a = m - h;
	
	addi t0, zero, 4 	# a
	addi t1, zero, 5 	# m
	
	addi t2 , zero, 0 	# f
	addi s0 , zero, 2 	# g
	addi s1, zero, 2 	# h
	
	BEQ t0, t1, if
	BNE t0, t1, else
	if:
	
	add t2, s0,s1
	j fin
	
	else:
	sub t0, t1,s1
	fin: