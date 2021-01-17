extern m7_ippsECCPNegativePoint:function
extern n8_ippsECCPNegativePoint:function
extern y8_ippsECCPNegativePoint:function
extern e9_ippsECCPNegativePoint:function
extern l9_ippsECCPNegativePoint:function
extern n0_ippsECCPNegativePoint:function
extern k0_ippsECCPNegativePoint:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPNegativePoint
.Larraddr_ippsECCPNegativePoint:
    dq m7_ippsECCPNegativePoint
    dq n8_ippsECCPNegativePoint
    dq y8_ippsECCPNegativePoint
    dq e9_ippsECCPNegativePoint
    dq l9_ippsECCPNegativePoint
    dq n0_ippsECCPNegativePoint
    dq k0_ippsECCPNegativePoint

segment .text
global ippsECCPNegativePoint:function (ippsECCPNegativePoint.LEndippsECCPNegativePoint - ippsECCPNegativePoint)
.Lin_ippsECCPNegativePoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPNegativePoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPNegativePoint]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPNegativePoint:
