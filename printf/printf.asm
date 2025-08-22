default rel            

extern printf

section .text

global main

main:
    sub   rsp, 8             ; re-align the stack to 16 before calling another function

    ;prepare arguments for printf
    mov   esi, 15            
    lea   rdi, [rel format_string]
    xor   eax, eax           
    ;call printf
    call printf wrt ..plt	     

    add   rsp, 8
    xor   rax, rax
    ret

section .rodata
    format_string db "%#x", 10, 0   ; null-terminated string: "%#x\n" 


