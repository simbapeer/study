assume cs:code
data segment
  dd 012345678h
data ends

code segment

start:	mov ax, data
	mov ds, ax
	mov bx, 0
  
	mov [bx], offset start ;0
	mov [bx + 2], cs
	jmp dword ptr ds:[0]
	
	mov ax,4c00H
	int 21H

code ends

end start 