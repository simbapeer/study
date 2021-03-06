assume cs:code
data segment
	db 'Welcome to msam!', 0
data ends
code segment

start:	
	mov dh, 8	;row
	mov dl, 3	;column
	mov cl, 2	;color
	mov ax, data	
	mov ds, ax	;data segment
	mov si, 0	;data offset address
	call show_str
	
	mov ax, 4c00h
	int 21h
	
show_str:
	mov ax, 0b800h
	mov es, ax

	mov al, 0a0h
	mov ah, dh
	sub ah, 1
	mul ah
	mov bx, ax	;row offset
	mov al, 02h
	mov ah, dl
	sub ah, 1
	mul ah		;calculate column offset
	add bx, ax	;column offset
	
	mov di, 0
	mov ah, cl
	mov cx, 0
s:	mov al, ds:[si]
	mov es:[bx][di], ax
	mov cl, ds:[si + 1]
	jcxz ok
	inc si
	add di, 2
	jmp short s

ok:	ret


code ends

end start 