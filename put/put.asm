default   rel

extern    puts

section   .text

global main

main:                                       ;This is called by the glibc startup code
          sub  rsp, 8
	  lea  rdi, [rel message]           
          call puts wrt ..plt                    
	  add  rsp, 8
          mov rax, 0
	  ret                               ;Return from main into glibc

section .rodata
	message db "Hello, world", 0


