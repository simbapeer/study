assume cs:code,ds:data,ss:stack

data segment
	db '1. display      '
	db '2. brows        '
	db '3. replace      '
	db '4. modify       '
data ends

stack segment
	dw 0,0,0,0,0,0,0,0
stack ends

code segment
start:
	mov ax,data
	mov ds,ax
	mov ax,stack
	mov ss,ax
	mov bx,0	;row index
	mov di,0	;column index
	mov cx,4
lrow:
	push cx
	mov cx,4
	mov di,0

lcolumn:
	mov ax,[bx+di+3]
	and al,11011111b
	loop lcolumn
	mov [bx+di+3],ax
	
	add bx,10h
	pop cx
	loop lrow
    
	mov ah,4ch
	int 21h
code ends
end start
 