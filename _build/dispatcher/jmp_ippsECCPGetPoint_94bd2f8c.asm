extern m7_ippsECCPGetPoint:function
extern n8_ippsECCPGetPoint:function
extern y8_ippsECCPGetPoint:function
extern e9_ippsECCPGetPoint:function
extern l9_ippsECCPGetPoint:function
extern n0_ippsECCPGetPoint:function
extern k0_ippsECCPGetPoint:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPGetPoint
.Larraddr_ippsECCPGetPoint:
    dq m7_ippsECCPGetPoint
    dq n8_ippsECCPGetPoint
    dq y8_ippsECCPGetPoint
    dq e9_ippsECCPGetPoint
    dq l9_ippsECCPGetPoint
    dq n0_ippsECCPGetPoint
    dq k0_ippsECCPGetPoint

segment .text
global ippsECCPGetPoint:function (ippsECCPGetPoint.LEndippsECCPGetPoint - ippsECCPGetPoint)
.Lin_ippsECCPGetPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPGetPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPGetPoint]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPGetPoint:
