extern m7_ippsECCPSetKeyPair:function
extern n8_ippsECCPSetKeyPair:function
extern y8_ippsECCPSetKeyPair:function
extern e9_ippsECCPSetKeyPair:function
extern l9_ippsECCPSetKeyPair:function
extern n0_ippsECCPSetKeyPair:function
extern k0_ippsECCPSetKeyPair:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPSetKeyPair
.Larraddr_ippsECCPSetKeyPair:
    dq m7_ippsECCPSetKeyPair
    dq n8_ippsECCPSetKeyPair
    dq y8_ippsECCPSetKeyPair
    dq e9_ippsECCPSetKeyPair
    dq l9_ippsECCPSetKeyPair
    dq n0_ippsECCPSetKeyPair
    dq k0_ippsECCPSetKeyPair

segment .text
global ippsECCPSetKeyPair:function (ippsECCPSetKeyPair.LEndippsECCPSetKeyPair - ippsECCPSetKeyPair)
.Lin_ippsECCPSetKeyPair:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPSetKeyPair:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPSetKeyPair]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPSetKeyPair:
