section .data
    a       dq 1.5
    b       dq 2.0
    c       dq 3.0

section .text
    global main
    extern printf, exit

main:
    sub     rsp, 8

    ; Compute: (b * c) + a
    ;movsd   xmm0, qword [rel b]      ; xmm0 = b
    ;mulsd   xmm0, qword [rel c]      ; xmm0 *= c
    ;addsd   xmm0, qword [rel a]      ; xmm0 += a
    
    movsd xmm0, qword [rel b]
    movsd xmm2, qword [rel c]
    movsd xmm1, qword [rel a]
    vfmadd132sd xmm0, xmm1, xmm2

    ; Print result
    lea     rdi, [rel fmt]
    xor     eax, eax
    mov     eax, 1 		;AL=1 indicates 1 xmm register used 
    call    printf wrt ..plt

    add     rsp, 8
    mov    eax, 0
    ret
    ;xor     rdi, rdi
    ;call    exit wrt ..plt

section .rodata
fmt db "Result: %lf", 10, 0

