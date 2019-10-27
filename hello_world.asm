;helllo world
;
;author: Jose Gonzalez
;Date: 27-oct-2019

global _start


section .text:

_start:
	mov eax, 0x4		;usar el comando para llamar una señal del sistema
	mov ebx, 1 		;usar stdout como el file descripter
	mov ecx, message	;usa el mensaje como buffer
	mov edx, message_lenght ;Entrega el largo
	int 0x80		;invoca la syscall
	
	mov eax, 0x1
	mov ebx, 0
	int 0x80

section .data:
	message: db "Hello World!", 0xA 
	message_lenght equ $-message
