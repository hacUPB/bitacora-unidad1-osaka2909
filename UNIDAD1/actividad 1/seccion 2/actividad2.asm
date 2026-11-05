//@1
//D=A
//@2 
//D=D+A
//@16
//M=D
//(END)
//@END
//0;JMP
            

//El programa nos da la posibilidad de realizar una suma al momento de definir "@1" como "D=A" dandole valor 1 a A, despues definimos "@2" con "D=D+A" y asi hasta que le de balor a "@16" de la ram añadiendo "M=D", después la etiqueta 0;JUMP cumple la funcion de bucle infinito.

/*Escribe un programa en lenguaje ensablador que sume los números 5 y 10, y almacene el resultado en la dirección de memoria 20. Utiliza el simulador de la CPU Hack para ejecutar tu programa y verifica que el resultado es correcto.*/

//@5
//D=A
//@10
//D=D+A
//@20
//M=D
//(END)
//@END
//0;JMP


//@15
//D=A
//@Var
//M=D
//@10
//D=A
//@i
//M=D
//@i
//D=M
//@Var
//D=D-M
//@20
//D;JGT
//@30
//0;JMP

@1000
D=A
@i
M=D
(LOOP)
@i
D=M
@CONT
D;JEQ
@i
M=M-1
@LOOP
0;JMP
(CONT)
@CONT
0;JMP