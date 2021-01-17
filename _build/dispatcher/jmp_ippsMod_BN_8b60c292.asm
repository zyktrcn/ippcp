extern m7_ippsMod_BN:function
extern n8_ippsMod_BN:function
extern y8_ippsMod_BN:function
extern e9_ippsMod_BN:function
extern l9_ippsMod_BN:function
extern n0_ippsMod_BN:function
extern k0_ippsMod_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMod_BN
.Larraddr_ippsMod_BN:
    dq m7_ippsMod_BN
    dq n8_ippsMod_BN
    dq y8_ippsMod_BN
    dq e9_ippsMod_BN
    dq l9_ippsMod_BN
    dq n0_ippsMod_BN
    dq k0_ippsMod_BN

segment .text
global ippsMod_BN:function (ippsMod_BN.LEndippsMod_BN - ippsMod_BN)
.Lin_ippsMod_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMod_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMod_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMod_BN:
