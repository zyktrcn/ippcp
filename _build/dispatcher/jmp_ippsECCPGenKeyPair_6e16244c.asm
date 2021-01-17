extern m7_ippsECCPGenKeyPair:function
extern n8_ippsECCPGenKeyPair:function
extern y8_ippsECCPGenKeyPair:function
extern e9_ippsECCPGenKeyPair:function
extern l9_ippsECCPGenKeyPair:function
extern n0_ippsECCPGenKeyPair:function
extern k0_ippsECCPGenKeyPair:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPGenKeyPair
.Larraddr_ippsECCPGenKeyPair:
    dq m7_ippsECCPGenKeyPair
    dq n8_ippsECCPGenKeyPair
    dq y8_ippsECCPGenKeyPair
    dq e9_ippsECCPGenKeyPair
    dq l9_ippsECCPGenKeyPair
    dq n0_ippsECCPGenKeyPair
    dq k0_ippsECCPGenKeyPair

segment .text
global ippsECCPGenKeyPair:function (ippsECCPGenKeyPair.LEndippsECCPGenKeyPair - ippsECCPGenKeyPair)
.Lin_ippsECCPGenKeyPair:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPGenKeyPair:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPGenKeyPair]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPGenKeyPair:
