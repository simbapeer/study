assume cs:code
code segment
	
start:	
	;100001 / 100 == ?
	;100001 > 2^16 - 1
	;使用32位存放100001(186a1h)，	dx = 1, ax = 86a1h
	;使用16位存放100,		bx = 100
	;
	mov dx,1
	mov ax,86a1h
	mov bx,100
	div bx
	;商在ax：3e8h
	;余数在dx：1
	mov ax,4c00H
	int 21H

code ends

end start 