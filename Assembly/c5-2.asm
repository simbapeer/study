assume cs:code
code segment

  mov ax, 20h
  mov ds,ax
  
  mov ax,0
  mov bx,0
  mov cx,40h
s:mov ds:[bx],al
  inc ax
  inc bx
  loop s
  
  mov ax,4c00H
  int 21H

code ends

end 