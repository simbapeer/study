data segment
        ;input data segment code here
data ends

stack segment
        ;input stack segment code here
stack ends

code segment
    assume cs:code,ds:data,ss:stack
start:
    mov ax,data
    mov ds,ax
        ;input code segment code here
    mov ah,4ch
    int 21h
code ends
end start
  