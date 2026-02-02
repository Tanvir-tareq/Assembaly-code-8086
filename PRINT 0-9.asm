.code
bubt proc
    
    MOV CX,10
    MOV DX,0
    ADD DX,30H 
LOP:
    
    MOV AH,2
    INT 21H
    ADD DX,1
   
    LOOP LOP
    
    bubt endp  
end bubt    
   
    
  