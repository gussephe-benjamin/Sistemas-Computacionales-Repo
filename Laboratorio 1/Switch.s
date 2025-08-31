.global _start
_start:

	# Switch/Case Statement
	
	# switch(sim){
	# case 1: am = 20; break;
	# case 2: am = 40; break;
	# case 3: am = 60; break;
	# default: am = 0;
	# }

	addi t0, zero, 2 # sim / condición a evaluar
	addi t1, zero, 0 # am /  registro a modificar
	addi t2, zero, 0
	
	li t2,1 # Aqui se agrega un 1 al t2
	BEQ t0, t2, case1 # Aqui se compara si los dos registros son iguales, luego se coloca etiqueta
	
	li t2,2 # Se cambia el valor de t2 a 2
	BEQ t0, t2, case2 # lo mismo que en 18
	
	li t2,3 # Se cambia el valor de t2 a 3
	BEQ t0, t2, case3 # lo mismo que en 18
	

	j end
	case1: # en el caso de que t0 = 1
	
	addi t1, t1,20
	
	j end # Branch al final del código 
	case2:# En el caso de que t2 = 2
	
	addi t1, t1,40
	
	j end # Branch al final de código
	case3: # En el caso de que t3 = 3
	
	addi t1, t1,60
	end: # Final de código
	
	
	
	