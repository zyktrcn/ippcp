extern m7_ippsGFpECSetPointAtInfinity:function
extern n8_ippsGFpECSetPointAtInfinity:function
extern y8_ippsGFpECSetPointAtInfinity:function
extern e9_ippsGFpECSetPointAtInfinity:function
extern l9_ippsGFpECSetPointAtInfinity:function
extern n0_ippsGFpECSetPointAtInfinity:function
extern k0_ippsGFpECSetPointAtInfinity:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECSetPointAtInfinity
.Larraddr_ippsGFpECSetPointAtInfinity:
    dq m7_ippsGFpECSetPointAtInfinity
    dq n8_ippsGFpECSetPointAtInfinity
    dq y8_ippsGFpECSetPointAtInfinity
    dq e9_ippsGFpECSetPointAtInfinity
    dq l9_ippsGFpECSetPointAtInfinity
    dq n0_ippsGFpECSetPointAtInfinity
    dq k0_ippsGFpECSetPointAtInfinity

segment .text
global ippsGFpECSetPointAtInfinity:function (ippsGFpECSetPointAtInfinity.LEndippsGFpECSetPointAtInfinity - ippsGFpECSetPointAtInfinity)
.Lin_ippsGFpECSetPointAtInfinity:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECSetPointAtInfinity:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECSetPointAtInfinity]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECSetPointAtInfinity:
