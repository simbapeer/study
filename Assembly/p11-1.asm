assume cs:code
data segment
	db 'Welcome to msam!', 0
data ends
code segment

start:			;ZF	PF	SF	
	sub al, al	;1	1	0	
	mov al, 1	;0	0	0	
	push ax	;0	0	0	
	pop bx		;0	0	0	
	add al, bl	;0	0	0	
	add al, 10	;0	1	0
	mul al		;0	1	1

	mov ax,4c00H
	int 21H

code ends

end start 