assume cs:code
str_tmp segment
	db 16 dup(0)
str_tmp ends
data segment
	db '1975','1976','1977','1978','1979','1980','1981','1982'
	db '1983','1984','1985','1986','1987','1988','1989','1990'
	db '1991','1992','1993','1994','1995'

	dd 16,22,382,1356,2390,8000,16000,24486,50065
	dd 97479,140417,197514,345980,590827,803530
	dd 1183000,1843000,2759000,3753000,4649000,5937000

	dw 3,7,9,13,28,38,130,220,476,778,1001
	dw 1442,2258,2793,4037,5635,8226,11542
	dw 14430,15258,17800

data ends
table segment
	db 21 dup ('year summ ne ?? ')
table ends

stack segment
	db 64 dup(0)
stack ends

code segment

start:	
	mov ax, stack
	mov ss, ax
	mov sp, 40h

	;1234056789
	mov ax, 3655h
	mov dx, 498eh
	call dtoc

	mov dh, 10	;row number
	mov dl, 3	;column number
	mov cl, 2
	call show_str

	mov ax, 4c00h
	int 21h

;@Func dtoc
;@Params
;	ax dword L16
;	dx dword H16
;@Return
;	ds str segment
;	si str address
dtoc:
	push ax
	push bx
	push dx
	push cx
	
	mov bx, str_tmp
	mov ds, bx

	mov si, 14
dtoc_l:
	mov cx, 10	;divisor stored into cx
	call divdw	;dividend L16 ax, divident H16 dx
	mov bx, cx

	add bx, 30h
	mov ds:[si], bl

	mov cx, dx
	or cx, ax
	jcxz dtoc_ok
	sub si, 1
	jmp short dtoc_l
dtoc_ok:
	pop cx
	pop dx
	pop bx
	pop ax
	ret

;@Func divdw
;@Param 
;	ax dividend dword L16
;	dx dividend dword H16
;	cx divisor
;@Return
;	ax quotient L16
;	dx quotient H16
;	cx remainder
divdw:
	push bx
	push bp

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
			
divdw_ret:
	pop bp
	pop bx
	ret


;@Func show_str
;@Params
;	str_segment	ds
;	str_addr	si
;	row_num 	dh
;	column_num 	dl
;	color 		cl
show_str:
	push ax
	push es
	push bx
	push di
	push cx
	push si

	mov ax, 0b800h
	mov es, ax

	mov al, 0a0h
	mov ah, dh
	sub ah, 1
	mul ah
	mov bx, ax	;row offset
	mov al, 02h
	mov ah, dl
	sub ah, 1
	mul ah		;calculate column offset
	add bx, ax	;column offset
	
	mov di, 0
	mov ah, cl
	mov cx, 0
show_str_l:
	mov al, ds:[si]
	mov es:[bx][di], ax
	mov cl, ds:[si + 1]
	jcxz show_str_ok
	inc si
	add di, 2
	jmp short show_str_l

show_str_ok:
	pop si
	pop cx
	pop di
	pop bx
	pop es
	pop ax
	ret


code ends

end start
 