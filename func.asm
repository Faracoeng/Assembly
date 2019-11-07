  org 0000h

        LJMP        0040h
        org            0040h
inicio:     clr          a
        MOV            DPTR, #0000h
        MOV        b, #1fh       ;direto,#imediato //foh é o mesmo q "B"
        mov        R0,  #00H
JOAO:   MOV            A,b            ;f0h é mesmo q "B"
        MOVX         @DPTR,A        ;@ é um ponteiro, mexe no endereço e # é um numero puro
        INC            DPTR
        INC         R0
        MOV         90H,b
        CJNE        R0,#0AH ,JOAO    ;tipo um ponteiro  ( if(R0 == #0AH) VÁ PARA F5H )

        SJMP        inicio
    
     end
