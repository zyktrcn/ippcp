extern m7_ippsTDESEncryptECB:function
extern n8_ippsTDESEncryptECB:function
extern y8_ippsTDESEncryptECB:function
extern e9_ippsTDESEncryptECB:function
extern l9_ippsTDESEncryptECB:function
extern n0_ippsTDESEncryptECB:function
extern k0_ippsTDESEncryptECB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsTDESEncryptECB
.Larraddr_ippsTDESEncryptECB:
    dq m7_ippsTDESEncryptECB
    dq n8_ippsTDESEncryptECB
    dq y8_ippsTDESEncryptECB
    dq e9_ippsTDESEncryptECB
    dq l9_ippsTDESEncryptECB
    dq n0_ippsTDESEncryptECB
    dq k0_ippsTDESEncryptECB

segment .text
global ippsTDESEncryptECB:function (ippsTDESEncryptECB.LEndippsTDESEncryptECB - ippsTDESEncryptECB)
.Lin_ippsTDESEncryptECB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsTDESEncryptECB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsTDESEncryptECB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsTDESEncryptECB:
