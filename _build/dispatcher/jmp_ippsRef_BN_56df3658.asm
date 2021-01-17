extern m7_ippsRef_BN:function
extern n8_ippsRef_BN:function
extern y8_ippsRef_BN:function
extern e9_ippsRef_BN:function
extern l9_ippsRef_BN:function
extern n0_ippsRef_BN:function
extern k0_ippsRef_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRef_BN
.Larraddr_ippsRef_BN:
    dq m7_ippsRef_BN
    dq n8_ippsRef_BN
    dq y8_ippsRef_BN
    dq e9_ippsRef_BN
    dq l9_ippsRef_BN
    dq n0_ippsRef_BN
    dq k0_ippsRef_BN

segment .text
global ippsRef_BN:function (ippsRef_BN.LEndippsRef_BN - ippsRef_BN)
.Lin_ippsRef_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRef_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRef_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRef_BN:
