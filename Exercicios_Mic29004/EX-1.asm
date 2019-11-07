org 0000h			;P0= {P2+ [P0 or(A and B)]} - 1        //PRIMEIRO
    mov A, #15d
    mov b, #07d
     mov P0,#02h
    mov P1,#20h
    mov P2,#1Fh
    mov DPTR,#0000h
    
     ;(A and B):
     anl a,b
    MOV p1,a    ;p1 agora esta com (AorB)
    MOV A,P2    ;JOGUEI P0 PRO A PARA BARRAR
    CPL A
    ADD A, P1    ;{P2+ [P0 or(A and B)]}--> FIZ ISSO
    DEC A        ;{P2+ [P0 or(A and B)]} - 1 (DECREMENTEI 1)
    MOV P0,A    ;P0={P2+ [P0 or(A and B)]}
    end

