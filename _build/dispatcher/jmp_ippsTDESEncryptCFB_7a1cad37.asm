extern m7_ippsTDESEncryptCFB:function
extern n8_ippsTDESEncryptCFB:function
extern y8_ippsTDESEncryptCFB:function
extern e9_ippsTDESEncryptCFB:function
extern l9_ippsTDESEncryptCFB:function
extern n0_ippsTDESEncryptCFB:function
extern k0_ippsTDESEncryptCFB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsTDESEncryptCFB
.Larraddr_ippsTDESEncryptCFB:
    dq m7_ippsTDESEncryptCFB
    dq n8_ippsTDESEncryptCFB
    dq y8_ippsTDESEncryptCFB
    dq e9_ippsTDESEncryptCFB
    dq l9_ippsTDESEncryptCFB
    dq n0_ippsTDESEncryptCFB
    dq k0_ippsTDESEncryptCFB

segment .text
global ippsTDESEncryptCFB:function (ippsTDESEncryptCFB.LEndippsTDESEncryptCFB - ippsTDESEncryptCFB)
.Lin_ippsTDESEncryptCFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsTDESEncryptCFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsTDESEncryptCFB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsTDESEncryptCFB:
