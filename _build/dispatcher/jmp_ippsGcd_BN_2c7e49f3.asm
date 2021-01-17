extern m7_ippsGcd_BN:function
extern n8_ippsGcd_BN:function
extern y8_ippsGcd_BN:function
extern e9_ippsGcd_BN:function
extern l9_ippsGcd_BN:function
extern n0_ippsGcd_BN:function
extern k0_ippsGcd_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGcd_BN
.Larraddr_ippsGcd_BN:
    dq m7_ippsGcd_BN
    dq n8_ippsGcd_BN
    dq y8_ippsGcd_BN
    dq e9_ippsGcd_BN
    dq l9_ippsGcd_BN
    dq n0_ippsGcd_BN
    dq k0_ippsGcd_BN

segment .text
global ippsGcd_BN:function (ippsGcd_BN.LEndippsGcd_BN - ippsGcd_BN)
.Lin_ippsGcd_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGcd_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGcd_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGcd_BN:
