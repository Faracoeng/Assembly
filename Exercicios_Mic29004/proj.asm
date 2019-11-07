ORG    000H

        LJMP INICIO


INICIO:    

;DESLIGA DISPLAYS
        MOV P3, #0FFH    ;DESATIVA TODOS OS SEGMENTOS
     

funcaotempo:
    MOV R0,#00H
    MOV R1, #00H
    mov r3,#00h
zero:  
    clr TF0
    clr tf1
    MOV P2, #11000000b    ;ascende verde com o vermelho do pedestre
    CLR TR1
    setb tr0    ;aciona o timer zero
    JNB TF0,$    ;CIFRAÃ AMNTÃM EM LOOP NESSA LINHA WHILE(TF0==0)
    INC R0
    CJNE R0, #0FFH,zero
    CLR TF0
    CLR TR0
    MOV R0,#00H
    JMP um
um:
    CLR TF1
    MOV P2,#11111001b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, um
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP dois
        
dois:
    CLR TF1
    MOV P2,#10100100b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, dois
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP tres
tres:
    CLR TF1
    MOV P2,#10110000b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, tres
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP quatro
quatro:
    CLR TF1
    MOV P2,#10011001b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, quatro
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP cinco
cinco:
    CLR TF1
    MOV P2,#10010010b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, cinco
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP seis
seis:
    CLR TF1
    MOV P2,#10000010b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, seis
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP sete
sete:
    CLR TF1
    MOV P2,#11111000b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, sete
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP oito
oito:
    CLR TF1
    MOV P2,#10000000b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, oito
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP nove
nove:
    CLR TF1
    MOV P2,#10010000b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, nove
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP decimal
decimal:
    CLR TF1
    MOV P2,#01111111b    ;acende amarelo com o vermelho do pedestre
    SETB TR1    ;ACIONA O TIMER 1
    JNB TF1,$
    INC R1
    CJNE R1, #0FFH, decimal
    CLR TF1
    CLR TR1
    MOV R1, #00H
    JMP zero

funcaosorteia:

funcaoreset:  
     ORG 0100h
     DB 26h
     DB 05h
     DB 31h
     DB 06h
     DB 04h
     DB 68h
     DB 65h
     DB 12h
     DB 23h
     DB 32h
     DB 62h
     DB 20h
     DB 45h
     DB 40h
     DB 46h
     DB 22h
     DB 66h
     DB 88h
     DB 98h
     DB 47h
     DB 02h
     DB 03h
     DB 52h
     DB 48h
     DB 11h
     DB 36h
     DB 10h
     DB 35h
     DB 58h
     DB 48h
     DB 41h
     DB 14h
     DB 72h
     DB 28h
     DB 42h
end

