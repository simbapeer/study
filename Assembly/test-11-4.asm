assume cs:code
data segment
	db 'Welcome to msam!', 0
data ends
code segment

start:
	mov ax, data
	mov ss, ax
	mov sp, 0fh
	
	mov ax, 0
	push ax
	popf			;flag: 0000 0000 0000 0000B
	mov ax, 0fff0h	;flag: 
	add ax, 0010h	;flag: 0000 0000 0100 0101B
	pushf
	pop ax			;ax 0000 0000 0100 0101B
	and al, 11000101B	
	and ah, 00001000B
				;ax 0000 0000 0001 0010B
	mov ax,4c00H
	int 21H

code ends

end start
; 