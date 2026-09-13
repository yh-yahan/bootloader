org 0x7c00
mov ax, 0
mov ds, ax

mov cx, [length]

lea si, msg[0]

msg_loop:
mov ah, 0x0e
mov al, [si]
int 0x10
inc si
loop msg_loop

hang:
jmp hang

msg db "Hello, World!"
length dw $ - msg

times 510 - ($ - $$) db 0

db 0x55
db 0xAA
