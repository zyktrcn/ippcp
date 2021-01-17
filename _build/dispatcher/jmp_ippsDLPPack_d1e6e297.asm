extern m7_ippsDLPPack:function
extern n8_ippsDLPPack:function
extern y8_ippsDLPPack:function
extern e9_ippsDLPPack:function
extern l9_ippsDLPPack:function
extern n0_ippsDLPPack:function
extern k0_ippsDLPPack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPPack
.Larraddr_ippsDLPPack:
    dq m7_ippsDLPPack
    dq n8_ippsDLPPack
    dq y8_ippsDLPPack
    dq e9_ippsDLPPack
    dq l9_ippsDLPPack
    dq n0_ippsDLPPack
    dq k0_ippsDLPPack

segment .text
global ippsDLPPack:function (ippsDLPPack.LEndippsDLPPack - ippsDLPPack)
.Lin_ippsDLPPack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPPack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPPack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPPack:
