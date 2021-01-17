extern m7_ippsECCPValidateKeyPair:function
extern n8_ippsECCPValidateKeyPair:function
extern y8_ippsECCPValidateKeyPair:function
extern e9_ippsECCPValidateKeyPair:function
extern l9_ippsECCPValidateKeyPair:function
extern n0_ippsECCPValidateKeyPair:function
extern k0_ippsECCPValidateKeyPair:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPValidateKeyPair
.Larraddr_ippsECCPValidateKeyPair:
    dq m7_ippsECCPValidateKeyPair
    dq n8_ippsECCPValidateKeyPair
    dq y8_ippsECCPValidateKeyPair
    dq e9_ippsECCPValidateKeyPair
    dq l9_ippsECCPValidateKeyPair
    dq n0_ippsECCPValidateKeyPair
    dq k0_ippsECCPValidateKeyPair

segment .text
global ippsECCPValidateKeyPair:function (ippsECCPValidateKeyPair.LEndippsECCPValidateKeyPair - ippsECCPValidateKeyPair)
.Lin_ippsECCPValidateKeyPair:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPValidateKeyPair:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPValidateKeyPair]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPValidateKeyPair:
