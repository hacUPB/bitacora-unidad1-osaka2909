
@1
D=A
@10
M=D


@11
M=0

(LOOP)

    @10
    D=M
    @5
    D=D-A
    @END
    D;JGT


    @10
    D=M
    @11
    M=M+D


    @10
    M=M+1

    @LOOP
    0;JMP

(END)
    @11
    D=M
    @12
    M=D

(STOP)
    @STOP
    0;JMP

//ejercicio 2 punto en la esquina

@SCREEN
D=A
@0
A=D+A
M=32768

(END)
@END
0;JMP

//ejercicio 3 linea 16 pixeles

@SCREEN
D=A
@0
A=D+A
M=-1

(END)
@END
0;JMP