extern m7_ippsECCPSharedSecretDH:function
extern n8_ippsECCPSharedSecretDH:function
extern y8_ippsECCPSharedSecretDH:function
extern e9_ippsECCPSharedSecretDH:function
extern l9_ippsECCPSharedSecretDH:function
extern n0_ippsECCPSharedSecretDH:function
extern k0_ippsECCPSharedSecretDH:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPSharedSecretDH
.Larraddr_ippsECCPSharedSecretDH:
    dq m7_ippsECCPSharedSecretDH
    dq n8_ippsECCPSharedSecretDH
    dq y8_ippsECCPSharedSecretDH
    dq e9_ippsECCPSharedSecretDH
    dq l9_ippsECCPSharedSecretDH
    dq n0_ippsECCPSharedSecretDH
    dq k0_ippsECCPSharedSecretDH

segment .text
global ippsECCPSharedSecretDH:function (ippsECCPSharedSecretDH.LEndippsECCPSharedSecretDH - ippsECCPSharedSecretDH)
.Lin_ippsECCPSharedSecretDH:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPSharedSecretDH:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPSharedSecretDH]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPSharedSecretDH:
