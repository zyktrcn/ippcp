extern m7_ippsGFpECMakePoint:function
extern n8_ippsGFpECMakePoint:function
extern y8_ippsGFpECMakePoint:function
extern e9_ippsGFpECMakePoint:function
extern l9_ippsGFpECMakePoint:function
extern n0_ippsGFpECMakePoint:function
extern k0_ippsGFpECMakePoint:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECMakePoint
.Larraddr_ippsGFpECMakePoint:
    dq m7_ippsGFpECMakePoint
    dq n8_ippsGFpECMakePoint
    dq y8_ippsGFpECMakePoint
    dq e9_ippsGFpECMakePoint
    dq l9_ippsGFpECMakePoint
    dq n0_ippsGFpECMakePoint
    dq k0_ippsGFpECMakePoint

segment .text
global ippsGFpECMakePoint:function (ippsGFpECMakePoint.LEndippsGFpECMakePoint - ippsGFpECMakePoint)
.Lin_ippsGFpECMakePoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECMakePoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECMakePoint]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECMakePoint:
