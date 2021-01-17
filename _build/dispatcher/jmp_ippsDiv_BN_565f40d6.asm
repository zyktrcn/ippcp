extern m7_ippsDiv_BN:function
extern n8_ippsDiv_BN:function
extern y8_ippsDiv_BN:function
extern e9_ippsDiv_BN:function
extern l9_ippsDiv_BN:function
extern n0_ippsDiv_BN:function
extern k0_ippsDiv_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDiv_BN
.Larraddr_ippsDiv_BN:
    dq m7_ippsDiv_BN
    dq n8_ippsDiv_BN
    dq y8_ippsDiv_BN
    dq e9_ippsDiv_BN
    dq l9_ippsDiv_BN
    dq n0_ippsDiv_BN
    dq k0_ippsDiv_BN

segment .text
global ippsDiv_BN:function (ippsDiv_BN.LEndippsDiv_BN - ippsDiv_BN)
.Lin_ippsDiv_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDiv_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDiv_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDiv_BN:
