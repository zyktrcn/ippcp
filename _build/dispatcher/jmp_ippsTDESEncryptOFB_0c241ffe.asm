extern m7_ippsTDESEncryptOFB:function
extern n8_ippsTDESEncryptOFB:function
extern y8_ippsTDESEncryptOFB:function
extern e9_ippsTDESEncryptOFB:function
extern l9_ippsTDESEncryptOFB:function
extern n0_ippsTDESEncryptOFB:function
extern k0_ippsTDESEncryptOFB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsTDESEncryptOFB
.Larraddr_ippsTDESEncryptOFB:
    dq m7_ippsTDESEncryptOFB
    dq n8_ippsTDESEncryptOFB
    dq y8_ippsTDESEncryptOFB
    dq e9_ippsTDESEncryptOFB
    dq l9_ippsTDESEncryptOFB
    dq n0_ippsTDESEncryptOFB
    dq k0_ippsTDESEncryptOFB

segment .text
global ippsTDESEncryptOFB:function (ippsTDESEncryptOFB.LEndippsTDESEncryptOFB - ippsTDESEncryptOFB)
.Lin_ippsTDESEncryptOFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsTDESEncryptOFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsTDESEncryptOFB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsTDESEncryptOFB:
