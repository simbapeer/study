assume cs:code
data segment
	db 10 dup(0)
data ends

stack segment
	db 64 dup(0)
stack ends

code segment

start:	
	mov ax, stack
	mov ss, ax
	mov sp, 40h

	mov ax, 12666
	mov bx, data
	mov ds, bx
	mov si, 0
	call dtoc


	mov dh, 1
	mov dl, 1
	mov cl, 2
	call show_str

	mov ax, 4c00h
	int 21h

dtoc:
	push bx
	push dx
	push cx

	mov si, 8
	mov bx, 10
dtoc_l:
	mov dx, 0
	div bx
	add dx, 30h
	mov ds:[si], dl
	mov cx, ax
	jcxz dtoc_ok
	sub si, 1
	jmp short dtoc_l
dtoc_ok:
	pop cx
	pop dx
	pop bx
	ret

show_str:
	push ax
	push es
	push bx
	push di
	push cx
	push si
	
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
show_str_l:
	mov al, ds:[si]
	mov es:[bx][di], ax
	mov cl, ds:[si + 1]
	jcxz show_str_ok
	inc si
	add di, 2
	jmp short show_str_l
show_str_ok:
	pop si
	pop cx
	pop di
	pop bx
	pop es
	pop ax
	ret


code ends

end start 