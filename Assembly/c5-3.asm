assume cs:code
code segment

  mov ax,20h
  mov ds,ax
  mov ax,cs
  mov es,ax
  mov bx,0
  sub cx,5
s:mov al,es:[bx]
  mov ds:[bx],al
  inc bx
  loop s

  mov ax,4c00H
  int 21H

code ends

end 