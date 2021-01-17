extern m7_ippsGFpECMulPoint:function
extern n8_ippsGFpECMulPoint:function
extern y8_ippsGFpECMulPoint:function
extern e9_ippsGFpECMulPoint:function
extern l9_ippsGFpECMulPoint:function
extern n0_ippsGFpECMulPoint:function
extern k0_ippsGFpECMulPoint:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECMulPoint
.Larraddr_ippsGFpECMulPoint:
    dq m7_ippsGFpECMulPoint
    dq n8_ippsGFpECMulPoint
    dq y8_ippsGFpECMulPoint
    dq e9_ippsGFpECMulPoint
    dq l9_ippsGFpECMulPoint
    dq n0_ippsGFpECMulPoint
    dq k0_ippsGFpECMulPoint

segment .text
global ippsGFpECMulPoint:function (ippsGFpECMulPoint.LEndippsGFpECMulPoint - ippsGFpECMulPoint)
.Lin_ippsGFpECMulPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECMulPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECMulPoint]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECMulPoint:
