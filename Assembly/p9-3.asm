assume cs:code
data segment
  dd 012345678h
data ends

code segment

start:	mov ax, 2000h
	mov es, ax
	jmp dword ptr es:[1000h]
	
	mov ax,4c00H
	int 21H

code ends

end start 