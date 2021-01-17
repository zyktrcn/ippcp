extern m7_ippsECCPSetPoint:function
extern n8_ippsECCPSetPoint:function
extern y8_ippsECCPSetPoint:function
extern e9_ippsECCPSetPoint:function
extern l9_ippsECCPSetPoint:function
extern n0_ippsECCPSetPoint:function
extern k0_ippsECCPSetPoint:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPSetPoint
.Larraddr_ippsECCPSetPoint:
    dq m7_ippsECCPSetPoint
    dq n8_ippsECCPSetPoint
    dq y8_ippsECCPSetPoint
    dq e9_ippsECCPSetPoint
    dq l9_ippsECCPSetPoint
    dq n0_ippsECCPSetPoint
    dq k0_ippsECCPSetPoint

segment .text
global ippsECCPSetPoint:function (ippsECCPSetPoint.LEndippsECCPSetPoint - ippsECCPSetPoint)
.Lin_ippsECCPSetPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPSetPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPSetPoint]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPSetPoint:
