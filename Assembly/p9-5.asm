assume cs:code
data segment
  dd 012345678h
data ends

code segment

start:	mov ax, 2000h
	mov ds, ax
	mov bx, 0
	
s:	mov cl, [bx]
	mov ch, 0
	add cx, 1	;inc cx
	inc bx
	loop s

ok:	dec bx
	mov dx, bx

	mov ax,4c00H
	int 21H

code ends

end start 