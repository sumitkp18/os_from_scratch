print:
    pusha
loop:
    mov al, [bx]
    cmp al, 0x00
    je end
    mov ah, 0x0e
    int 0x10
    add bx, 0x0001
    jmp loop
end:
    popa
ret

print_nl:
    pusha
    mov ah, 0x0e
    mov al, 0x0a
    int 0x10
    mov al, 0x0d
    int 0x10
    popa
ret