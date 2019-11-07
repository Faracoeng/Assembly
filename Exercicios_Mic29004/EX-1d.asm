	org 0000h			;P1= P2 -10d            //QUARTO
    mov A, #15d
    mov b, #07d
 	mov P0,#02h
    mov P1,#20h
    mov P2,#1Fh
    mov DPTR,#0000h
    ;P2 = (P1(ouexclusivo)P3) - B)
    mov a,p3
    mov b,p1
    cpl a
     xrl a,b
     subb a,b
     mov p2,a
    end

