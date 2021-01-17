extern m7_ippsGFpECTstPoint:function
extern n8_ippsGFpECTstPoint:function
extern y8_ippsGFpECTstPoint:function
extern e9_ippsGFpECTstPoint:function
extern l9_ippsGFpECTstPoint:function
extern n0_ippsGFpECTstPoint:function
extern k0_ippsGFpECTstPoint:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECTstPoint
.Larraddr_ippsGFpECTstPoint:
    dq m7_ippsGFpECTstPoint
    dq n8_ippsGFpECTstPoint
    dq y8_ippsGFpECTstPoint
    dq e9_ippsGFpECTstPoint
    dq l9_ippsGFpECTstPoint
    dq n0_ippsGFpECTstPoint
    dq k0_ippsGFpECTstPoint

segment .text
global ippsGFpECTstPoint:function (ippsGFpECTstPoint.LEndippsGFpECTstPoint - ippsGFpECTstPoint)
.Lin_ippsGFpECTstPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECTstPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECTstPoint]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECTstPoint:
