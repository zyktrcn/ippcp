extern m7_ippsExtGet_BN:function
extern n8_ippsExtGet_BN:function
extern y8_ippsExtGet_BN:function
extern e9_ippsExtGet_BN:function
extern l9_ippsExtGet_BN:function
extern n0_ippsExtGet_BN:function
extern k0_ippsExtGet_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsExtGet_BN
.Larraddr_ippsExtGet_BN:
    dq m7_ippsExtGet_BN
    dq n8_ippsExtGet_BN
    dq y8_ippsExtGet_BN
    dq e9_ippsExtGet_BN
    dq l9_ippsExtGet_BN
    dq n0_ippsExtGet_BN
    dq k0_ippsExtGet_BN

segment .text
global ippsExtGet_BN:function (ippsExtGet_BN.LEndippsExtGet_BN - ippsExtGet_BN)
.Lin_ippsExtGet_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsExtGet_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsExtGet_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsExtGet_BN:
