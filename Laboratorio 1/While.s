.global _start
_start:

	# While Loop
	
	
	# int pow = 1
	# int x = 0;
	# while(pow != 128){
	# pow = pow*2;
	# x = x + 1;
	# }
	
	addi t0, zero, 1 # pow
	
	addi t1, zero, 0 # x
	
	addi t2, zero, 0 # variable comparadora
	
	
	li t2, 128
	
	while:
	BEQ t0,t2,end # primera condición, si son iguales entonces sale del búcle
	
	slli t0, t0, 1 # corrimiento de bits, en este caso 
				   # es como si mutiplicaramos por dos la respuesta anterior 
	addi t1,t1,1 # se suma 1 a la variable x y registro t1
	
	BNE t0,t2, while # segunda condición, si son diferentes, vuelve a iterar el búcle
	end:
	
	# t0 debe ser 80, ya que 1000 0000 = 2^7 = 128
	# t1 debe ser 7 ya que se requieren 7 iteraciones
	
	