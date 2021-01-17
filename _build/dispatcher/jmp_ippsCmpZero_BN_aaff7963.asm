extern m7_ippsCmpZero_BN:function
extern n8_ippsCmpZero_BN:function
extern y8_ippsCmpZero_BN:function
extern e9_ippsCmpZero_BN:function
extern l9_ippsCmpZero_BN:function
extern n0_ippsCmpZero_BN:function
extern k0_ippsCmpZero_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsCmpZero_BN
.Larraddr_ippsCmpZero_BN:
    dq m7_ippsCmpZero_BN
    dq n8_ippsCmpZero_BN
    dq y8_ippsCmpZero_BN
    dq e9_ippsCmpZero_BN
    dq l9_ippsCmpZero_BN
    dq n0_ippsCmpZero_BN
    dq k0_ippsCmpZero_BN

segment .text
global ippsCmpZero_BN:function (ippsCmpZero_BN.LEndippsCmpZero_BN - ippsCmpZero_BN)
.Lin_ippsCmpZero_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsCmpZero_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsCmpZero_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsCmpZero_BN:
