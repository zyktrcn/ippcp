extern m7_ippsECCPGetSizeStd128r1:function
extern n8_ippsECCPGetSizeStd128r1:function
extern y8_ippsECCPGetSizeStd128r1:function
extern e9_ippsECCPGetSizeStd128r1:function
extern l9_ippsECCPGetSizeStd128r1:function
extern n0_ippsECCPGetSizeStd128r1:function
extern k0_ippsECCPGetSizeStd128r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPGetSizeStd128r1
.Larraddr_ippsECCPGetSizeStd128r1:
    dq m7_ippsECCPGetSizeStd128r1
    dq n8_ippsECCPGetSizeStd128r1
    dq y8_ippsECCPGetSizeStd128r1
    dq e9_ippsECCPGetSizeStd128r1
    dq l9_ippsECCPGetSizeStd128r1
    dq n0_ippsECCPGetSizeStd128r1
    dq k0_ippsECCPGetSizeStd128r1

segment .text
global ippsECCPGetSizeStd128r1:function (ippsECCPGetSizeStd128r1.LEndippsECCPGetSizeStd128r1 - ippsECCPGetSizeStd128r1)
.Lin_ippsECCPGetSizeStd128r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPGetSizeStd128r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPGetSizeStd128r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPGetSizeStd128r1:
