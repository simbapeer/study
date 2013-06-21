assume cs:code
a segment
	db 1,2,3,4,5,6,7,8
a ends

b segment 
	db 1,2,3,4,5,6,7,8
b ends

cddd segment
	db 0,0,0,0,0,0,0,0
cddd ends

code segment
start:
	mov ax, a
	mov ds, ax

	mov ax, b
	mov es, ax

	mov ax, cddd
	mov ss, ax
	
	mov ax, 0
	mov bx, 0
	mov cx, 8
s:
	mov al, ds:[bx]
	add al, es:[bx]
	mov ss:[bx], al
	inc bx
	loop s

	mov ax, 4c00h
	int 21h
	
code ends

end start 