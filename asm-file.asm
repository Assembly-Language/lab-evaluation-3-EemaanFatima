

INCLUDE Irvine32.inc
.data
;public asmfunc



.code
asmfunc PROC p1:DWORD, p2:DWORD
    
   mov esi,p1
   mov edi,p2

   mov ecx,10

 next:
    mov eax,[esi]
    test eax, 8000h
    jz skip
    mov eax,[edi]
    add eax,1
    mov [edi],eax


skip:
    add esi,4
    loop next

    ret
asmfunc ENDP
end