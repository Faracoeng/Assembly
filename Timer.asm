    org 0000h

    MOV R0,#00H
    MOV R1, #00H

inicio: clr TF0
    MOV P2, #00H
    CLR TR1
    setb tr0    ;aciona o timer zero
    JNB TF0,$    ;CIFRAÕ AMNTÉM EM LOOP NESSA LINHA WHILE(TF0==0)
    INC R0
    CJNE R0, #10H,INICIO
    CLR TF0
    CLR TR0
    MOV R0,#00H
    JMP ATRASO1
    
ATRASO1:
    CLR TF1
    MOV P2,#0FFH
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #10H, ATRASO1
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP INICIO

    end

