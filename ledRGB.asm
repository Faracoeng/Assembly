org 0000h
    MOV R0,#00H
    MOV R1, #00H
vermelho:
    MOV R1, #00H
    clr TF0
    MOV P2, #10000001b
    CLR TR1
    setb tr0    ;aciona o timer zero
    JNB TF0,$    ;CIFRAÕ AMNTÉM EM LOOP NESSA LINHA WHILE(TF0==0)
    INC R0
    CJNE R0, #122d,vermelho
    CLR TF0
    CLR TR0
    MOV R0,#00H
    call verde
azul:
    clr TF0
    MOV P2, #00100001b
    CLR TR1
    setb tr0    ;aciona o timer zero
    JNB TF0,$    ;CIFRAÕ AMNTÉM EM LOOP NESSA LINHA WHILE(TF0==0)
    INC R0
    CJNE R0, #122d,azul
    CLR TF0
    CLR TR0
    MOV R0,#00H
    mov r1,#00h
    call verde
    jmp vermelho
verde:
    clr TF0
    mov p2,#01000001b
    setb tr0    ;aciona o timer zero
    JNB TF0,$    ;CIFRAÕ AMNTÉM EM LOOP NESSA LINHA WHILE(TF0==0)
    INC R0
    CJNE R0, #0122d,verde
    mov r0,#00h
    inc r1
    CJNE R1, #28d,verde
    CLR TF0
    CLR TR0
    ret

    end

