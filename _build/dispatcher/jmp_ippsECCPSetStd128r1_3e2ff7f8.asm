extern m7_ippsECCPSetStd128r1:function
extern n8_ippsECCPSetStd128r1:function
extern y8_ippsECCPSetStd128r1:function
extern e9_ippsECCPSetStd128r1:function
extern l9_ippsECCPSetStd128r1:function
extern n0_ippsECCPSetStd128r1:function
extern k0_ippsECCPSetStd128r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPSetStd128r1
.Larraddr_ippsECCPSetStd128r1:
    dq m7_ippsECCPSetStd128r1
    dq n8_ippsECCPSetStd128r1
    dq y8_ippsECCPSetStd128r1
    dq e9_ippsECCPSetStd128r1
    dq l9_ippsECCPSetStd128r1
    dq n0_ippsECCPSetStd128r1
    dq k0_ippsECCPSetStd128r1

segment .text
global ippsECCPSetStd128r1:function (ippsECCPSetStd128r1.LEndippsECCPSetStd128r1 - ippsECCPSetStd128r1)
.Lin_ippsECCPSetStd128r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPSetStd128r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPSetStd128r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPSetStd128r1:
