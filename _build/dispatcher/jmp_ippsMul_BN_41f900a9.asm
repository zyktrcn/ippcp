extern m7_ippsMul_BN:function
extern n8_ippsMul_BN:function
extern y8_ippsMul_BN:function
extern e9_ippsMul_BN:function
extern l9_ippsMul_BN:function
extern n0_ippsMul_BN:function
extern k0_ippsMul_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMul_BN
.Larraddr_ippsMul_BN:
    dq m7_ippsMul_BN
    dq n8_ippsMul_BN
    dq y8_ippsMul_BN
    dq e9_ippsMul_BN
    dq l9_ippsMul_BN
    dq n0_ippsMul_BN
    dq k0_ippsMul_BN

segment .text
global ippsMul_BN:function (ippsMul_BN.LEndippsMul_BN - ippsMul_BN)
.Lin_ippsMul_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMul_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMul_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMul_BN:
