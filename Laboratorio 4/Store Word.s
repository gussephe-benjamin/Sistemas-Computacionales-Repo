.global _start
_start:
	
	
	# utilizando el lui para alamcenar los primero 20 bits en el registro x1
	
	lui x1, 0x23456
	
	# luego se suman los ultimos 12 bits para completar los 32 bits de la word 
	
	# se realiza esta operacin porque addi no tiene la capacidad de operar con numero fuera del rango de 2^11 porque trabaja con 11 bits 
	
	addi x1, x1, 0x789
	
	# se agrega la direccion en memoria a operar
	
	li x2, 0x0000001c
	
	# se escribe el registro x1 , la direccin del offser 0 + la direccin base x2
	
	sw x1,0(x2)
	
	# x1 tiene el valor de la word
	
	#  x3 analiza el espacio en memoria baja de la word en la direccin almacenada 
	
	# El espacio en memoria baja representa la ubicacion del bit menos significativo
	
	lb x3, 0(x2)
	
	# X4 representa el espacio alto donde se encuentra ubicado el bit mas significativo
	
	lb x4, 3(x2)
	
	lb x5, 1(x2)
	
	# La cuestion es que con 0(direccion almacenada) nos muestra el PRIMER BYTE. Si empieza por el menos signifcativo estonces es un LITLE ENDIAND y si empieza por el mas sinificativo es un BIG ENDIAN
	
	# En este caso en x3 se almacena el 89, el bits menos significativo, empieza por el menos significativo por lo tanto estamos en un sistema LITTLE ENDIAND
	
	