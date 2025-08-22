	global _start
	section .text
_start:
	mov rdi, 1
	mov rsi, message
	mov rdx, 13
	mov rax, 1
	syscall
	xor rdi, rdi
	mov rax, 60
  	syscall
	section .data
message: db "Hello World!", 10
