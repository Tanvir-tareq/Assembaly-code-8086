.code
bubt proc
    
    mov ah,1
    int 21h
    sub al,30h
    
    CMP AL,1
    JE ODD
    CMP AL,3
    JE ODD
    
    CMP AL,2
    JE EVEN
    CMP AL,4
    JE EVEN
    
    
ODD:
    MOV DX,'O'
    MOV AH,2
    INT 21H
    JMP EX
    
EVEN:
     MOV DX,'E'
     MOV AH,2
     INT 21H
     JMP EX
EX:
    bubt endp  
end bubt    
   
    
  