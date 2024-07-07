use32
org 0x10000

                ; ELF Header    ; Program Header
db 0x7f, "ELF"  ; e_ident
dd 1            ;               ; p_type
dd 0            ;               ; p_offset
dd $$           ;               ; p_vaddr
dw 2            ; e_type        ; p_paddr
dw 3            ; e_machine     ;
dd _start       ; e_version     ; p_filesz
dd _start       ; e_entry       ; p_memsz
dd 4            ; e_phoff       ; p_flags
_start: ; 7 bytes unused here
    push 4
    pop eax
    inc ebx
    nop
    jmp _start2
db 0
dw 0x34         ; e_ehsize
dw 0x20         ; e_phentsize
db 1            ; e_phnum
db 0            ; e_shentsize
db 0            ; e_shnum
db 0            ; e_shstrndx
_start2:
    push s
    pop ecx
    push s_len
    pop edx
    int 0x80 ; sys_write(STDOUT, s, s_len)
    push ebx
    pop eax
    dec ebx
    int 0x80 ; sys_exit(0)
s:
db "░░░░░▄▄▄▄▀▀▀▀▀▀▀▀▄▄▄▄▄▄░░░░░░░░", 0x0a
db "░░░░░█░░░░▒▒▒▒▒▒▒▒▒▒▒▒░░▀▀▄░░░░", 0x0a
db "░░░░█░░░▒▒▒▒▒▒░░░░░░░░▒▒▒░░█░░░", 0x0a
db "░░░█░░░░░░▄██▀▄▄░░░░░▄▄▄░░░░█░░", 0x0a
db "░▄▀▒▄▄▄▒░█▀▀▀▀▄▄█░░░██▄▄█░░░░█░", 0x0a
db "█░▒█▒▄░▀▄▄▄▀░░░░░░░░█░░░▒▒▒▒▒░█", 0x0a
db "█░▒█░█▀▄▄░░░░░█▀░░░░▀▄░░▄▀▀▀▄▒█", 0x0a
db "░█░▀▄░█▄░█▀▄▄░▀░▀▀░▄▄▀░░░░█░░█░", 0x0a
db "░░█░░░▀▄▀█▄▄░█▀▀▀▄▄▄▄▀▀█▀██░█░░", 0x0a
db "░░░█░░░░██░░▀█▄▄▄█▄▄█▄████░█░░░", 0x0a
db "░░░░█░░░░▀▀▄░█░░░█░█▀██████░█░░", 0x0a
db "░░░░░▀▄░░░░░▀▀▄▄▄█▄█▄█▄█▄▀░░█░░", 0x0a
db "░░░░░░░▀▄▄░▒▒▒▒░░░░░░░░░░▒░░░█░", 0x0a
db "░░░░░░░░░░▀▀▄▄░▒▒▒▒▒▒▒▒▒▒░░░░█░", 0x0a
db "░░░░░░░░░░░░░░▀▄▄▄▄▄▄▄▄▄▄▄▄▄█░░", 0x0a
s_len = $-s
