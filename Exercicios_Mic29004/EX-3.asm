org 0000h			;B= (AnorB) +#01d
    mov A, #15d
    mov b, #07d
    mov P0,#02h
    mov P1,#20h
    mov P2,#1Fh
    mov DPTR,#0000h
    orl a,b
    cpl a
    add a,#01d
    mov b, a
end

