org 0000h
    MOV R0,#00H
    MOV R1, #00H
    mov r3,#00h
VERDE:  clr TF0
    clr tf1
    MOV P2, #10000001b    ;ascende verde com o vermelho do pedestre
    CLR TR1
    setb tr0    ;aciona o timer zero
    JNB TF0,$    ;CIFRAÃ AMNTÃM EM LOOP NESSA LINHA WHILE(TF0==0)
    INC R0
    CJNE R0, #0FFH,VERDE
    CLR TF0
    CLR TR0
    MOV R0,#00H
    JMP AMARELO
AMARELO:
    CLR TF1
    MOV P2,#01000001b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, AMARELO
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP VERMELHO
        
VERMELHO:
    CLR TF1
    MOV P2, #00100010b
    setb tr1    ;aciona o timer zero
    JNB TF1,$    ;CIFRAÃ AMNTÃM EM LOOP NESSA LINHA WHILE(TF0==0)
    INC R0
    CJNE R0, #0FFH,VERMELHO
pisca:
    CLR TF1
    MOV P2, #00100000b
    setb tr1    ;aciona o timer zero
    JNB TF1,$    ;CIFRAÃ AMNTÃM EM LOOP NESSA LINHA WHILE(TF0==0)
    inc r3
    cjne r3,#0f1h,pisca        ;define o tempo q o led verde do pedreste pisca
    INC R1
    CJNE R1, #05h,VERMELHO
    
    CLR TF0
    CLR TR0
    MOV R0,#00H
    jmp verde

    end

