.global _start
_start:

	
		
	addi t1, zero, 0x00000020 # Una dirección en memoria 
	
	lw t0,-12(t1) # carga 32 bits del contenido que haya en la dirección de [t1 + 12], cabe aclarar que para que se realice un salto entre una word a otra se necesitan 4 bytes.
				  # Risc V tiene orden de los datos por byte - address, cada byte tiene un único espacio en memoria por lo tanto para pasar de una word a otra se necesitan los 4 bytes que la comforman 
	
	lh t2,0(t1) # load half word, los segundos 2 bytes de una word es decir, toma 16 bites. Esta funcion tiene sing extend solo si el MSB del dato es 1. O sea que si el ultimo valor del dato es 1
				# carga la segunda mitad de la word con la primera mitad extendida de 1nos. En el caso de ser 0 la misma lógica hasta completar la segunda mitad del word con 0s
				
	lb s0,0(t1)  # la logica anterior pero solo con unn byte, sta funcion llamada load byte, la cual solo carga el byte menos significativo de una word, cuenta con extension de signo.
	
	
	lhu s1, 0(t1) #la misma logica e half word, la unica diferencia es que no tiene extension de signo, por lo que si el MSB de la segunda mitad de bytes de la word tiene signo 1, 
				  # este completara la primera mitad con 0s
	
	lbu a0, 0(t1) # la misma logica que con el load byte solo que no tiene extension de signo. 
	
	# Otros conceptos adicionales:
	
	# Utilizan el formato de I - type. 
	
	# El OP codigo (el codigo de la intruccion), es el numero 3, que representa la carga de archivos 
	
	# El offset representa el extra que se le tiene que sumar a la direccion base para llegar a la direccion final. addres = [addres base + offset]. Este siempre tiene que ser un inmmediat
	