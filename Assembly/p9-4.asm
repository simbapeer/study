assume cs:code
data segment
  dd 012345678h
data ends

code segment

start:	mov ax, 2000h
	mov ds, ax
	mov bx, 0
	
s:	mov ah, [bx]
	mov cx, ax
	jcxz ok
	inc bx
	jmp short s

ok:	mov dx, bx

	mov ax,4c00H
	int 21H

code ends

end start 