assume cs:code
data segment
	db 'Welcome to msam!', 0
data ends
code segment

start:			;CF	OF	SF	ZF	PF
	sub al, al	;0	0	0	1	1
	mov al, 10h	;0	0	0	0	0
	add al, 90h	;0	0	1	0	1
	mov al, 80h	;0	0	1	0	0
	add al, 80h	;1	1	0	1	1
	mov al, 0fch	;0	0	1	0	1
	add al, 05h	;1	0	0	0	0
	mov al, 7dh	;0	0	0	0	1
	add al, 0bh	;0	1	1	0	1
	
	
	mov ax,4c00H
	int 21H

code ends

end start 