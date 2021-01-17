extern m7_ippsGFpECCmpPoint:function
extern n8_ippsGFpECCmpPoint:function
extern y8_ippsGFpECCmpPoint:function
extern e9_ippsGFpECCmpPoint:function
extern l9_ippsGFpECCmpPoint:function
extern n0_ippsGFpECCmpPoint:function
extern k0_ippsGFpECCmpPoint:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECCmpPoint
.Larraddr_ippsGFpECCmpPoint:
    dq m7_ippsGFpECCmpPoint
    dq n8_ippsGFpECCmpPoint
    dq y8_ippsGFpECCmpPoint
    dq e9_ippsGFpECCmpPoint
    dq l9_ippsGFpECCmpPoint
    dq n0_ippsGFpECCmpPoint
    dq k0_ippsGFpECCmpPoint

segment .text
global ippsGFpECCmpPoint:function (ippsGFpECCmpPoint.LEndippsGFpECCmpPoint - ippsGFpECCmpPoint)
.Lin_ippsGFpECCmpPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECCmpPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECCmpPoint]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECCmpPoint:
