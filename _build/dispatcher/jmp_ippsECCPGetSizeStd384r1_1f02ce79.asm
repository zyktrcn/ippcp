extern m7_ippsECCPGetSizeStd384r1:function
extern n8_ippsECCPGetSizeStd384r1:function
extern y8_ippsECCPGetSizeStd384r1:function
extern e9_ippsECCPGetSizeStd384r1:function
extern l9_ippsECCPGetSizeStd384r1:function
extern n0_ippsECCPGetSizeStd384r1:function
extern k0_ippsECCPGetSizeStd384r1:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPGetSizeStd384r1
.Larraddr_ippsECCPGetSizeStd384r1:
    dq m7_ippsECCPGetSizeStd384r1
    dq n8_ippsECCPGetSizeStd384r1
    dq y8_ippsECCPGetSizeStd384r1
    dq e9_ippsECCPGetSizeStd384r1
    dq l9_ippsECCPGetSizeStd384r1
    dq n0_ippsECCPGetSizeStd384r1
    dq k0_ippsECCPGetSizeStd384r1

segment .text
global ippsECCPGetSizeStd384r1:function (ippsECCPGetSizeStd384r1.LEndippsECCPGetSizeStd384r1 - ippsECCPGetSizeStd384r1)
.Lin_ippsECCPGetSizeStd384r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPGetSizeStd384r1:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPGetSizeStd384r1]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPGetSizeStd384r1:
