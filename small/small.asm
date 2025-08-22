	section .text
	global _start

_start:
    xor rdi, rdi        ; set exit code to 0
    nop
    nop
    nop
    mov rax, 60         ; syscall: exit (60)
    syscall             ;invoke syscall
