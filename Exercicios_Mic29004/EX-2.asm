org 0000h			;B= A + (P3 +1)
    mov A, #15d
    mov b, #07d
    mov P0,#02h
    mov P1,#20h
    mov P2,#1Fh
    mov DPTR,#0000h
    
    MOV A,P3
    ADDC A, #01D    ;INCREMENTA COM CARRY OUT
    MOV B, A
    ADD A,B
    MOV B,A
end

