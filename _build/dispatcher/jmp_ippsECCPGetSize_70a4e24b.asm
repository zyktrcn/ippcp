extern m7_ippsECCPGetSize:function
extern n8_ippsECCPGetSize:function
extern y8_ippsECCPGetSize:function
extern e9_ippsECCPGetSize:function
extern l9_ippsECCPGetSize:function
extern n0_ippsECCPGetSize:function
extern k0_ippsECCPGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPGetSize
.Larraddr_ippsECCPGetSize:
    dq m7_ippsECCPGetSize
    dq n8_ippsECCPGetSize
    dq y8_ippsECCPGetSize
    dq e9_ippsECCPGetSize
    dq l9_ippsECCPGetSize
    dq n0_ippsECCPGetSize
    dq k0_ippsECCPGetSize

segment .text
global ippsECCPGetSize:function (ippsECCPGetSize.LEndippsECCPGetSize - ippsECCPGetSize)
.Lin_ippsECCPGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPGetSize:
