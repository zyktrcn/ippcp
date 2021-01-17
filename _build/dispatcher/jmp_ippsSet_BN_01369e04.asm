extern m7_ippsSet_BN:function
extern n8_ippsSet_BN:function
extern y8_ippsSet_BN:function
extern e9_ippsSet_BN:function
extern l9_ippsSet_BN:function
extern n0_ippsSet_BN:function
extern k0_ippsSet_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSet_BN
.Larraddr_ippsSet_BN:
    dq m7_ippsSet_BN
    dq n8_ippsSet_BN
    dq y8_ippsSet_BN
    dq e9_ippsSet_BN
    dq l9_ippsSet_BN
    dq n0_ippsSet_BN
    dq k0_ippsSet_BN

segment .text
global ippsSet_BN:function (ippsSet_BN.LEndippsSet_BN - ippsSet_BN)
.Lin_ippsSet_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSet_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSet_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSet_BN:
