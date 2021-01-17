extern m7_ippsECCPAddPoint:function
extern n8_ippsECCPAddPoint:function
extern y8_ippsECCPAddPoint:function
extern e9_ippsECCPAddPoint:function
extern l9_ippsECCPAddPoint:function
extern n0_ippsECCPAddPoint:function
extern k0_ippsECCPAddPoint:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPAddPoint
.Larraddr_ippsECCPAddPoint:
    dq m7_ippsECCPAddPoint
    dq n8_ippsECCPAddPoint
    dq y8_ippsECCPAddPoint
    dq e9_ippsECCPAddPoint
    dq l9_ippsECCPAddPoint
    dq n0_ippsECCPAddPoint
    dq k0_ippsECCPAddPoint

segment .text
global ippsECCPAddPoint:function (ippsECCPAddPoint.LEndippsECCPAddPoint - ippsECCPAddPoint)
.Lin_ippsECCPAddPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPAddPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPAddPoint]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPAddPoint:
