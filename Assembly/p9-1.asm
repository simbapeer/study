assume cs:code
data segment
  dw 0000h	;dw 0000h ~ dw 00ffh
data ends

code segment

start:	mov ax, data
	mov ds, ax
	mov bx, 0
  
	jmp word ptr [bx+1]
	
	mov ax,4c00H
	int 21H

code ends

end start 