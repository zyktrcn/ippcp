extern m7_ippsECCPPointGetSize:function
extern n8_ippsECCPPointGetSize:function
extern y8_ippsECCPPointGetSize:function
extern e9_ippsECCPPointGetSize:function
extern l9_ippsECCPPointGetSize:function
extern n0_ippsECCPPointGetSize:function
extern k0_ippsECCPPointGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPPointGetSize
.Larraddr_ippsECCPPointGetSize:
    dq m7_ippsECCPPointGetSize
    dq n8_ippsECCPPointGetSize
    dq y8_ippsECCPPointGetSize
    dq e9_ippsECCPPointGetSize
    dq l9_ippsECCPPointGetSize
    dq n0_ippsECCPPointGetSize
    dq k0_ippsECCPPointGetSize

segment .text
global ippsECCPPointGetSize:function (ippsECCPPointGetSize.LEndippsECCPPointGetSize - ippsECCPPointGetSize)
.Lin_ippsECCPPointGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPPointGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPPointGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPPointGetSize:
