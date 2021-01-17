extern m7_ippsGet_BN:function
extern n8_ippsGet_BN:function
extern y8_ippsGet_BN:function
extern e9_ippsGet_BN:function
extern l9_ippsGet_BN:function
extern n0_ippsGet_BN:function
extern k0_ippsGet_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGet_BN
.Larraddr_ippsGet_BN:
    dq m7_ippsGet_BN
    dq n8_ippsGet_BN
    dq y8_ippsGet_BN
    dq e9_ippsGet_BN
    dq l9_ippsGet_BN
    dq n0_ippsGet_BN
    dq k0_ippsGet_BN

segment .text
global ippsGet_BN:function (ippsGet_BN.LEndippsGet_BN - ippsGet_BN)
.Lin_ippsGet_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGet_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGet_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGet_BN:
