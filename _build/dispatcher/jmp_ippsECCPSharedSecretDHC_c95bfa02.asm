extern m7_ippsECCPSharedSecretDHC:function
extern n8_ippsECCPSharedSecretDHC:function
extern y8_ippsECCPSharedSecretDHC:function
extern e9_ippsECCPSharedSecretDHC:function
extern l9_ippsECCPSharedSecretDHC:function
extern n0_ippsECCPSharedSecretDHC:function
extern k0_ippsECCPSharedSecretDHC:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPSharedSecretDHC
.Larraddr_ippsECCPSharedSecretDHC:
    dq m7_ippsECCPSharedSecretDHC
    dq n8_ippsECCPSharedSecretDHC
    dq y8_ippsECCPSharedSecretDHC
    dq e9_ippsECCPSharedSecretDHC
    dq l9_ippsECCPSharedSecretDHC
    dq n0_ippsECCPSharedSecretDHC
    dq k0_ippsECCPSharedSecretDHC

segment .text
global ippsECCPSharedSecretDHC:function (ippsECCPSharedSecretDHC.LEndippsECCPSharedSecretDHC - ippsECCPSharedSecretDHC)
.Lin_ippsECCPSharedSecretDHC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPSharedSecretDHC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPSharedSecretDHC]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPSharedSecretDHC:
