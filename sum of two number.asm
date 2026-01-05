.data
message db 'Input First Number:$'
message1 db 'Input First Number:$'
message2 db 'sum:$'


.code
bubt proc
    mov AX,@data
    mov ds,ax
    
    lea dx,message
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
  lea dx,message1 
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov cl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    add cl,bl
    sub cl,30h  
    
    
    lea dx,message2
    mov ah,9
    int 21h 
    
    mov dl,cl
    
    mov ah,2
    int 21h
    
    

   
     
bubt endp  
end bubt