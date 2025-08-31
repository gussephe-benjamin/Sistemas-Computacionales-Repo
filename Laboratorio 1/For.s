.global _start
_start:
	# For Loop
	
	#	int sum = 0;
	#	int i;
	#	for(i = 0; i < 10; i = i + 1){
	#		sum = sum + i;
	#	}
	
	addi t0, zero, 0 # sum
	
	addi t1, zero, 10 # i
	
	for:
	li t2, 0
	bge t2,t1, end # condición de finalización del for (si t2 es mayor o igual a t1 ejecuta)
				   # 0 no puede ser menor a 10. Por ello ignora el branch
	add t0,t0,t1 # Se suma el valor de del iterador(t1) a sum(t0)
	
	li s0, 1 
	sub t1,t1,s0 # Se resta t1(i) - 1 para ir descontando al iterador
	
	j for # bucle en caso no se activen las flags del brach 
	end: # branch del for 