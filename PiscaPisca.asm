org 0000h
    MOV R0,#00H
    MOV R1, #00H

npisca:  
    clr TF0
    clr tf1
    MOV P2, #00000000b    ;ascende verde com o vermelho do pedestre
    CLR TR1
    setb tr0    ;aciona o timer zero
    JNB TF0,$    ;CIFRAÃ AMNTÃM EM LOOP NESSA LINHA WHILE(TF0==0)
    INC R0
    CJNE R0, #0FFH,npisca
    CLR TF0
    CLR TR0
    MOV R0,#00H
    JMP pisca
pisca:
    CLR TF1
    MOV P2,#11111111b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, pisca
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP npisca
    end

