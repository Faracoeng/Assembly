org 0000h
    MOV R0,#00H
    MOV R1, #00H
    mov r3,#00h
primeiro:  
    MOV R1, #00H
clr TF0
    clr tf1
    MOV P2, #00000001b    ;ascende verde com o vermelho do pedestre
    CLR TR1
    setb tr0    ;aciona o timer zero
    JNB TF0,$    ;CIFRAÃ AMNTÃM EM LOOP NESSA LINHA WHILE(TF0==0)
    INC R0
    CJNE R0, #0FFH,primeiro
    CLR TF0
    CLR TR0
    MOV R0,#00H
    JMP segundo
segundo:
    CLR TF1
    MOV P2,#00000011b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, segundo
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP terceiro
terceiro:
    CLR TF1
    MOV P2,#00000111b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, terceiro
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP quarto  
quarto:      
    CLR TF1
    MOV P2,#00001111b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, quarto
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP quinto
quinto:
    CLR TF1
    MOV P2,#00011111b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, quinto
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP sexto
sexto:
    CLR TF1
    MOV P2,#00111111b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, sexto
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP setimo
setimo:
    CLR TF1
    MOV P2,#01111111b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, setimo
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP oitavo
oitavo:
    CLR TF1
    MOV P2,#11111111b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, oitavo
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP npisca
npisca:
    CLR TF1
    MOV P2, #00000000b
    setb tr1    ;aciona o timer zero
    JNB TF1,$    ;CIFRAÃ AMNTÃM EM LOOP NESSA LINHA WHILE(TF0==0)
    INC R0
    CJNE R0, #0FFH,npisca
pisca:
     
    CLR TF1
    MOV P2, #11111111b
    setb tr1    ;aciona o timer zero
    JNB TF1,$    ;CIFRAÃ AMNTÃM EM LOOP NESSA LINHA WHILE(TF0==0)
    inc r3
    cjne r3,#0f1h,pisca        ;define o tempo q o led verde do pedreste pisca
    mov r3,#00h
    INC R1
    CJNE R1, #03h,npisca
    
    CLR TF0
    CLR TR0
    MOV R0,#00H
    jmp primeiro

    end    

