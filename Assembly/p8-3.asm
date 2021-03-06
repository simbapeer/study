assume cs:code
data segment
	dd 100002	;186A2,  Memory: A2 86 01 00
	dw 100		;word type
	dw 0
data ends

code segment
	
start:	
	mov ax, data
	mov ds, ax
	
	mov ax, ds:[0]		;MUST ds:[0], NOT [0]
	mov dx, ds:[2]		;MUST ds:[2], NOT [2]
	
	div word ptr ds:[4] 	;100 stored in [4] is word type
	
	mov ds:[6], ax		;
	
	mov ax, 4c00H
	int 21H

code ends

end start 