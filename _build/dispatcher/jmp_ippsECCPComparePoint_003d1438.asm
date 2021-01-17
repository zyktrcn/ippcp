extern m7_ippsECCPComparePoint:function
extern n8_ippsECCPComparePoint:function
extern y8_ippsECCPComparePoint:function
extern e9_ippsECCPComparePoint:function
extern l9_ippsECCPComparePoint:function
extern n0_ippsECCPComparePoint:function
extern k0_ippsECCPComparePoint:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPComparePoint
.Larraddr_ippsECCPComparePoint:
    dq m7_ippsECCPComparePoint
    dq n8_ippsECCPComparePoint
    dq y8_ippsECCPComparePoint
    dq e9_ippsECCPComparePoint
    dq l9_ippsECCPComparePoint
    dq n0_ippsECCPComparePoint
    dq k0_ippsECCPComparePoint

segment .text
global ippsECCPComparePoint:function (ippsECCPComparePoint.LEndippsECCPComparePoint - ippsECCPComparePoint)
.Lin_ippsECCPComparePoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPComparePoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPComparePoint]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPComparePoint:
