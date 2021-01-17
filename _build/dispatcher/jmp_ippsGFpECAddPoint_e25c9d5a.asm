extern m7_ippsGFpECAddPoint:function
extern n8_ippsGFpECAddPoint:function
extern y8_ippsGFpECAddPoint:function
extern e9_ippsGFpECAddPoint:function
extern l9_ippsGFpECAddPoint:function
extern n0_ippsGFpECAddPoint:function
extern k0_ippsGFpECAddPoint:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECAddPoint
.Larraddr_ippsGFpECAddPoint:
    dq m7_ippsGFpECAddPoint
    dq n8_ippsGFpECAddPoint
    dq y8_ippsGFpECAddPoint
    dq e9_ippsGFpECAddPoint
    dq l9_ippsGFpECAddPoint
    dq n0_ippsGFpECAddPoint
    dq k0_ippsGFpECAddPoint

segment .text
global ippsGFpECAddPoint:function (ippsGFpECAddPoint.LEndippsGFpECAddPoint - ippsGFpECAddPoint)
.Lin_ippsGFpECAddPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECAddPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECAddPoint]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECAddPoint:
