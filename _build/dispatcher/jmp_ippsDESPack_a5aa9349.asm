extern m7_ippsDESPack:function
extern n8_ippsDESPack:function
extern y8_ippsDESPack:function
extern e9_ippsDESPack:function
extern l9_ippsDESPack:function
extern n0_ippsDESPack:function
extern k0_ippsDESPack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDESPack
.Larraddr_ippsDESPack:
    dq m7_ippsDESPack
    dq n8_ippsDESPack
    dq y8_ippsDESPack
    dq e9_ippsDESPack
    dq l9_ippsDESPack
    dq n0_ippsDESPack
    dq k0_ippsDESPack

segment .text
global ippsDESPack:function (ippsDESPack.LEndippsDESPack - ippsDESPack)
.Lin_ippsDESPack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDESPack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDESPack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDESPack:
