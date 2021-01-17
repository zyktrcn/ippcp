extern m7_ippsGFpECGetPoint:function
extern n8_ippsGFpECGetPoint:function
extern y8_ippsGFpECGetPoint:function
extern e9_ippsGFpECGetPoint:function
extern l9_ippsGFpECGetPoint:function
extern n0_ippsGFpECGetPoint:function
extern k0_ippsGFpECGetPoint:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECGetPoint
.Larraddr_ippsGFpECGetPoint:
    dq m7_ippsGFpECGetPoint
    dq n8_ippsGFpECGetPoint
    dq y8_ippsGFpECGetPoint
    dq e9_ippsGFpECGetPoint
    dq l9_ippsGFpECGetPoint
    dq n0_ippsGFpECGetPoint
    dq k0_ippsGFpECGetPoint

segment .text
global ippsGFpECGetPoint:function (ippsGFpECGetPoint.LEndippsGFpECGetPoint - ippsGFpECGetPoint)
.Lin_ippsGFpECGetPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECGetPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECGetPoint]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECGetPoint:
