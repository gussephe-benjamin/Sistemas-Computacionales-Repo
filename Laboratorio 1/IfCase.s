.global _start
_start:
	
	# IF CASE
	
	# if(a == m)
	# f = g + h;
	# a = m - h;
	
	addi t0, zero, 2
	addi t1, zero, 2
	
	addi t2, zero, 0
	BNE t1,t0, L1
	addi t2,t2,10
	L1:
	addi t2,t2, 11
	