extern m7_ippsTDESEncryptCBC:function
extern n8_ippsTDESEncryptCBC:function
extern y8_ippsTDESEncryptCBC:function
extern e9_ippsTDESEncryptCBC:function
extern l9_ippsTDESEncryptCBC:function
extern n0_ippsTDESEncryptCBC:function
extern k0_ippsTDESEncryptCBC:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsTDESEncryptCBC
.Larraddr_ippsTDESEncryptCBC:
    dq m7_ippsTDESEncryptCBC
    dq n8_ippsTDESEncryptCBC
    dq y8_ippsTDESEncryptCBC
    dq e9_ippsTDESEncryptCBC
    dq l9_ippsTDESEncryptCBC
    dq n0_ippsTDESEncryptCBC
    dq k0_ippsTDESEncryptCBC

segment .text
global ippsTDESEncryptCBC:function (ippsTDESEncryptCBC.LEndippsTDESEncryptCBC - ippsTDESEncryptCBC)
.Lin_ippsTDESEncryptCBC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsTDESEncryptCBC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsTDESEncryptCBC]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsTDESEncryptCBC:
