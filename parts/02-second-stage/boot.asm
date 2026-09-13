org 0x7c00
mov ax, 0
mov ds, ax

mov ah, 0x02
mov al, 1 ; reads 1 sector (512 bytes)
mov ch, 0 ; set cylinder to 0
mov cl, 2 ; starting from second sector
mov dh, 0 ; set head to 0
mov bx, 0
mov es, bx
mov bx, 0x7e00
int 0x13

jc error

jmp 0x7e00

error:
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

msg db "Disk read failed"
length dw $ - msg

times 510 - ($ - $$) db 0

db 0x55
db 0xAA

