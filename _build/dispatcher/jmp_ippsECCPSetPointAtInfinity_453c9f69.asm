extern m7_ippsECCPSetPointAtInfinity:function
extern n8_ippsECCPSetPointAtInfinity:function
extern y8_ippsECCPSetPointAtInfinity:function
extern e9_ippsECCPSetPointAtInfinity:function
extern l9_ippsECCPSetPointAtInfinity:function
extern n0_ippsECCPSetPointAtInfinity:function
extern k0_ippsECCPSetPointAtInfinity:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPSetPointAtInfinity
.Larraddr_ippsECCPSetPointAtInfinity:
    dq m7_ippsECCPSetPointAtInfinity
    dq n8_ippsECCPSetPointAtInfinity
    dq y8_ippsECCPSetPointAtInfinity
    dq e9_ippsECCPSetPointAtInfinity
    dq l9_ippsECCPSetPointAtInfinity
    dq n0_ippsECCPSetPointAtInfinity
    dq k0_ippsECCPSetPointAtInfinity

segment .text
global ippsECCPSetPointAtInfinity:function (ippsECCPSetPointAtInfinity.LEndippsECCPSetPointAtInfinity - ippsECCPSetPointAtInfinity)
.Lin_ippsECCPSetPointAtInfinity:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPSetPointAtInfinity:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPSetPointAtInfinity]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPSetPointAtInfinity: