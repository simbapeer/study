assume cs:code
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

code segment
	
start:	
	mov ax, data
	mov ds, ax
	
	mov ax, table
	mov es, ax
	
	mov di, 0
	mov bx, 0	;bx loop count
	mov bp, 0	;bp points to table row
	mov cx, 21
l:		
	mov si, 0
	mov al, ds:[bx].0h[si]
	mov byte ptr es:[bp].0h[si], al
	inc si
	mov al, ds:[bx].0h[si]
	mov byte ptr es:[bp].0h[si], al
	inc si
	mov ax, ds:[bx].0h[si]
	mov byte ptr es:[bp].0h[si], al
	inc si
	mov al, ds:[bx].0h[si]
	mov byte ptr es:[bp].0h[si], al

	mov byte ptr es:[bp].04h, ' '	; set space 
	
	mov si, 0
	mov al, ds:[bx].84[si]
	mov byte ptr es:[bp].05h[si], al
	inc si
	mov al, ds:[bx].84[si]
	mov byte ptr es:[bp].05h[si], al
	inc si
	mov al, ds:[bx].84[si]
	mov byte ptr es:[bp].05h[si], al
	inc si
	mov al, ds:[bx].84[si]
	mov byte ptr es:[bp].05h[si], al

	mov byte ptr es:[bp].09h, ' '	; set space

	mov ax, ds:[di+168]
	mov es:[bp].0ah,ax

	
	mov byte ptr es:[bp].0ch, ' '	; set space

	mov word ptr es:[bp].0dh, '?'	; set ?

	mov word ptr es:[bp].0fh, ' '	; set space


	add bx, 4
	add di, 2
	add bp, 10h
	loop l
	
	mov ax, 4c00H
	int 21H

code ends

end start 