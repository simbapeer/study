assume cs:code
data segment
	db 'Welcome to msam!', 0
data ends
code segment

start:
	mov ax, 0f000h
	mov ds, ax
	
	mov bx, 0
	mov dx, 0
	mov cx, 32
	
s:	mov al, [bx]
	cmp al, 32
	jb s0			;(32, 128) jna
	cmp al, 128
	ja s0			;(32, 128) jnb
	inc dx
s0:	inc bx
	loop s
	
	mov ax,4c00H
	int 21H

code ends

end start 