.code
bubt proc
    
    MOV CX,80
    MOV DL,'*'
    MOV AH, 2
    
LOP:
    INT 21H
    LOOP LOP
    
    bubt endp  
end bubt    
   
    
  