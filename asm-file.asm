INCLUDE Irvine32.inc  
.data  
;public asmfunc  

.code  
asmfunc PROC p1:DWORD, p2:DWORD  
    
    mov esi,p1  
    mov edi,p2  
    mov ecx,10  
    xor eax, eax 

next:  
    mov ebx,[esi]  
    test ebx, 8000h   
    jz skip         
    add eax, ebx      
    
skip:  
    add esi,4  
    loop next  

    mov [edi], eax   
    ret  
asmfunc ENDP  
end