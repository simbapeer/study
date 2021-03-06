assume cs:code
data segment
	db 'w e l c o m e   t o   m a s m ! '
data ends
;应该显示在第11,12,13(index: 10, 11, 12)行上
;列号为33~48(index: 32~47)
code segment

start:	mov ax, data
	mov ds, ax
	mov ax, 0b800h
	mov es, ax
	
	mov bx, 0
	mov cx, 10
l:	add bx, 0a0h
	loop l
	; bx: 到达第11行偏移

	add bx, 64	;固定偏移32列
	mov si, 0
	mov cx, 16
s:	mov ax, ds:[si]
	mov ah, 00000010b	;black background, green text
	mov es:[bx][si], ax
	
	mov ah, 00100100b	;green background, red text
	mov es:[bx].0a0h[si], ax

	mov ah, 01110001b	;white background, blue text
	mov es:[bx].140h[si], ax

	add si, 2
	loop s
	

	mov ax, 4c00h
	int 21h

code ends

end start 