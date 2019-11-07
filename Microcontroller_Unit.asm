ORG 0000h
    mov p0,#05h
    mov p1,#22h
    mov p2,#51h
    mov p3,#05h

    mov a,p2
    mov b,p1

    
    add a,b    ;soma e joga pra a
    subb a,p0     ; subtrai e joga pra a
    mul ab    ; multiplica e retorna "BA" o resultado em 16 bits
    div ab    ; divide,parte inteira fica em "A" e resto fica em "B"
    mov @r0,A     ;coloca no endereço de R0
    inc R0           ; incrementa endereço
    mov @R0,A   ;valor de "A", vai ser armazenado no proximo endereço(mapeamento de memoria)


    END

