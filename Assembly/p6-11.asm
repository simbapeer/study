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
	mov ax, ds
	add ax, 10h
	mov ds, ax
	
	mov ax, 0
	mov bx, 0
	mov cx, 8
s:	
	mov al, ds:[bx]
	add bx, 10h
	add al, ds:[bx]
	add bx, 10h
	mov ds:[bx], al
	
	sub bx, 20h
	add bx, 1
	loop s

	mov ax, 4c00h
	int 21h
	
code ends

end start 