extern m7_ippsECCPPublicKey:function
extern n8_ippsECCPPublicKey:function
extern y8_ippsECCPPublicKey:function
extern e9_ippsECCPPublicKey:function
extern l9_ippsECCPPublicKey:function
extern n0_ippsECCPPublicKey:function
extern k0_ippsECCPPublicKey:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPPublicKey
.Larraddr_ippsECCPPublicKey:
    dq m7_ippsECCPPublicKey
    dq n8_ippsECCPPublicKey
    dq y8_ippsECCPPublicKey
    dq e9_ippsECCPPublicKey
    dq l9_ippsECCPPublicKey
    dq n0_ippsECCPPublicKey
    dq k0_ippsECCPPublicKey

segment .text
global ippsECCPPublicKey:function (ippsECCPPublicKey.LEndippsECCPPublicKey - ippsECCPPublicKey)
.Lin_ippsECCPPublicKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPPublicKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPPublicKey]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPPublicKey:
