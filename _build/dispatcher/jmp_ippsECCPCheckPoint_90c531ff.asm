extern m7_ippsECCPCheckPoint:function
extern n8_ippsECCPCheckPoint:function
extern y8_ippsECCPCheckPoint:function
extern e9_ippsECCPCheckPoint:function
extern l9_ippsECCPCheckPoint:function
extern n0_ippsECCPCheckPoint:function
extern k0_ippsECCPCheckPoint:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPCheckPoint
.Larraddr_ippsECCPCheckPoint:
    dq m7_ippsECCPCheckPoint
    dq n8_ippsECCPCheckPoint
    dq y8_ippsECCPCheckPoint
    dq e9_ippsECCPCheckPoint
    dq l9_ippsECCPCheckPoint
    dq n0_ippsECCPCheckPoint
    dq k0_ippsECCPCheckPoint

segment .text
global ippsECCPCheckPoint:function (ippsECCPCheckPoint.LEndippsECCPCheckPoint - ippsECCPCheckPoint)
.Lin_ippsECCPCheckPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPCheckPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPCheckPoint]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPCheckPoint:
