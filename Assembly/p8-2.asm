assume cs:code
code segment
	
start:	
	;1001 / 100 == ?
	;100001 < 2^16 - 1
	;使用16位存放1001(3e9h)，	ax = 3e9h
	;使用8位存放100,		bl = 100
	;
	mov ax,3e9h
	mov bl,100
	div bl
	;商在al：A
	;余数在ah：1
	mov ax,4c00H
	int 21H

code ends

end start 