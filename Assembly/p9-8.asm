assume cs:code
code segment

	mov ax,4c00H
	int 21H
start:
	mov ax, 0
s:	nop
	nop
	
	mov di, offset s
	mov si, offset s2
	mov ax, cs:[si]
	mov cs:[di], ax
	
s0:	jmp short s

s1:	mov ax, 0
	int 21H
	mov ax,0
	
s2:	jmp short s1	;此行变成指令机器指令ebf6，也就是跳转到 相对于执行完jmp指令后  -ah 的地址
	nop

code ends

end start 