
.data
message db 'Input a Number:$'
message1 db 'The number :$'
message2 db ' is EVEN$'
message3 db ' is ODD$'


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
    
    and ax,0
    mov al,bl
    mov bh,2
    
    div bh 
    
    cmp ah,0
    je even
    jne odd  
    
    even:  
    
        mov ah,2
        mov dl,bl
        add dl,30h
        int 21h
          
        lea dx,message2
        mov ah,9
        int 21h   
        
        jmp ex
    
    odd:
        
        mov ah,2
        mov dl,bl
        add dl,30h
        int 21h
          
        lea dx,message3
        mov ah,9
        int 21h 
         
        jmp ex
    
    
ex:
    bubt endp  
end bubt    
   
    
  