    org 0000h		; DPTR = (A+1)*10d        //SEGUNDO
    mov A, #15d
    mov b, #07d
    mov P0,#02h
    mov P1,#20h
    mov P2,#1Fh
    mov DPTR,#0000h
    
     MOV B, #10d
     inc a
     mul ab
    end

