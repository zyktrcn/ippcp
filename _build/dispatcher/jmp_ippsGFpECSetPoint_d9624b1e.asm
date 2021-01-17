extern m7_ippsGFpECSetPoint:function
extern n8_ippsGFpECSetPoint:function
extern y8_ippsGFpECSetPoint:function
extern e9_ippsGFpECSetPoint:function
extern l9_ippsGFpECSetPoint:function
extern n0_ippsGFpECSetPoint:function
extern k0_ippsGFpECSetPoint:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECSetPoint
.Larraddr_ippsGFpECSetPoint:
    dq m7_ippsGFpECSetPoint
    dq n8_ippsGFpECSetPoint
    dq y8_ippsGFpECSetPoint
    dq e9_ippsGFpECSetPoint
    dq l9_ippsGFpECSetPoint
    dq n0_ippsGFpECSetPoint
    dq k0_ippsGFpECSetPoint

segment .text
global ippsGFpECSetPoint:function (ippsGFpECSetPoint.LEndippsGFpECSetPoint - ippsGFpECSetPoint)
.Lin_ippsGFpECSetPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECSetPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECSetPoint]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECSetPoint:
