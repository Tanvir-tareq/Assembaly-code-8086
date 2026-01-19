
.data
message db 'Input First Number:$'
message1 db 'Input secound Number:$'
message2 db 'Quotent is:$'     
message3 db 'Reminder:$'



.code
bubt proc
    mov AX,@data
    mov ds,ax
    
    lea dx,message
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub al,30h
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
    sub al,30h
    mov cl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    and ax,0
    mov al,bl
    div cl
    
    mov bl,al
    mov bh,ah
    
    lea dx,message2 
    mov ah,9
    int 21h 
    
    mov dl,bl
    add dl,30h
    mov ah,2
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
             
    lea dx,message3 
    mov ah,9
    int 21h
    
    mov dl,bh 
    add dl,30h
    mov ah,2
    int 21h
     
bubt endp  
end bubt
