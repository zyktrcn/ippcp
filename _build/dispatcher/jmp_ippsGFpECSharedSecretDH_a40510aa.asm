extern m7_ippsGFpECSharedSecretDH:function
extern n8_ippsGFpECSharedSecretDH:function
extern y8_ippsGFpECSharedSecretDH:function
extern e9_ippsGFpECSharedSecretDH:function
extern l9_ippsGFpECSharedSecretDH:function
extern n0_ippsGFpECSharedSecretDH:function
extern k0_ippsGFpECSharedSecretDH:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECSharedSecretDH
.Larraddr_ippsGFpECSharedSecretDH:
    dq m7_ippsGFpECSharedSecretDH
    dq n8_ippsGFpECSharedSecretDH
    dq y8_ippsGFpECSharedSecretDH
    dq e9_ippsGFpECSharedSecretDH
    dq l9_ippsGFpECSharedSecretDH
    dq n0_ippsGFpECSharedSecretDH
    dq k0_ippsGFpECSharedSecretDH

segment .text
global ippsGFpECSharedSecretDH:function (ippsGFpECSharedSecretDH.LEndippsGFpECSharedSecretDH - ippsGFpECSharedSecretDH)
.Lin_ippsGFpECSharedSecretDH:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECSharedSecretDH:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECSharedSecretDH]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECSharedSecretDH:
