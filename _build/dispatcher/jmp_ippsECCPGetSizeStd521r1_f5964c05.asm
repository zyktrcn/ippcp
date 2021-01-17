extern m7_ippsECCPGetSizeStd521r1:function
extern n8_ippsECCPGetSizeStd521r1:function
extern y8_ippsECCPGetSizeStd521r1:function
extern e9_ippsECCPGetSizeStd521r1:function
extern l9_ippsECCPGetSizeStd521r1:function
extern n0_ippsECCPGetSizeStd521r1:function
extern k0_ippsECCPGetSizeStd521r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPGetSizeStd521r1
.Larraddr_ippsECCPGetSizeStd521r1:
    dq m7_ippsECCPGetSizeStd521r1
    dq n8_ippsECCPGetSizeStd521r1
    dq y8_ippsECCPGetSizeStd521r1
    dq e9_ippsECCPGetSizeStd521r1
    dq l9_ippsECCPGetSizeStd521r1
    dq n0_ippsECCPGetSizeStd521r1
    dq k0_ippsECCPGetSizeStd521r1

segment .text
global ippsECCPGetSizeStd521r1:function (ippsECCPGetSizeStd521r1.LEndippsECCPGetSizeStd521r1 - ippsECCPGetSizeStd521r1)
.Lin_ippsECCPGetSizeStd521r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPGetSizeStd521r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPGetSizeStd521r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPGetSizeStd521r1:
