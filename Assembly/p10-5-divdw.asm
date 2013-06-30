assume cs:code
data segment
	db 'Welcome to msam!', 0
data ends
code segment
;	X/N = int(H/N) * 65536 + [rem(H/N)*65536 + L]/N

start:	
	;1234056789
	mov ax, 3655h
	mov dx, 498eh
	mov cx, 0ah
	call divdw
ok:
	mov ax, 4c00h
	int 21h

divdw:
	mov bx, ax	;L is here
	mov bp, dx	;H is here
	mov ax, dx	;H is here
	mov dx, 0	;Clear dx
	div cx		;Now, ax = int(H/N), dx = rem(H/N)

	mov bp, ax	;Now, si = int(H/N), rember move it to dx before return
	mov ax, bx	;Now, dx = rem(H/N), ax = L
	div cx		;Now, dx = ret_rem, ax is ret_int_L

	mov cx, dx
	mov dx, bp	;move to dx equals multiple to 65536 in this situation, 
			;dx is ret_int_H
	ret

code ends

end start 