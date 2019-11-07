org 0000h
    MOV R0,#00H
    MOV R1, #00H
    mov r3,#00h
aqui:
    MOV A, #00000001b ;acende amarelo com o vermelho do pedestre
   
primeiro:
    CLR TF1
    setb tr1    ;aciona o timer zero
    JNB TF1,$    ;CIFRAÃ AMNTÃM EM LOOP NESSA LINHA WHILE(TF0==0)
    inc r3
    cjne r3,#0f1h,primeiro        ;define o tempo q o led verde do pedreste pisca
    mov r3,#00h
    rl A
    INC R1
    CJNE R1, #07h,primeiro
    
    CLR TF0
    CLR TR0
    MOV R0,#00H
    jmp aqui

    end

