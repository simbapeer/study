assume cs:code
data segment
  dd 012345678h
data ends

code segment

start:	mov ax, 2000h
	mov ds, ax
	mov bx, 0
	
s:	mov cl, [bx]	;3
	mov ch, 0	;2
	add cx, 1	;2 ;inc cx
	inc bx		;1
	;db 128 dup (0)	; jump destination too far by 10 bytes
	loop s		;2

ok:	dec bx
	mov dx, bx

	mov ax,4c00H
	int 21H

code ends

end start 