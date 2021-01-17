extern m7_ippsGFpECCpyPoint:function
extern n8_ippsGFpECCpyPoint:function
extern y8_ippsGFpECCpyPoint:function
extern e9_ippsGFpECCpyPoint:function
extern l9_ippsGFpECCpyPoint:function
extern n0_ippsGFpECCpyPoint:function
extern k0_ippsGFpECCpyPoint:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECCpyPoint
.Larraddr_ippsGFpECCpyPoint:
    dq m7_ippsGFpECCpyPoint
    dq n8_ippsGFpECCpyPoint
    dq y8_ippsGFpECCpyPoint
    dq e9_ippsGFpECCpyPoint
    dq l9_ippsGFpECCpyPoint
    dq n0_ippsGFpECCpyPoint
    dq k0_ippsGFpECCpyPoint

segment .text
global ippsGFpECCpyPoint:function (ippsGFpECCpyPoint.LEndippsGFpECCpyPoint - ippsGFpECCpyPoint)
.Lin_ippsGFpECCpyPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECCpyPoint:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECCpyPoint]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECCpyPoint:
