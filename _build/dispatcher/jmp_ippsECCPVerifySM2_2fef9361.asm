extern m7_ippsECCPVerifySM2:function
extern n8_ippsECCPVerifySM2:function
extern y8_ippsECCPVerifySM2:function
extern e9_ippsECCPVerifySM2:function
extern l9_ippsECCPVerifySM2:function
extern n0_ippsECCPVerifySM2:function
extern k0_ippsECCPVerifySM2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPVerifySM2
.Larraddr_ippsECCPVerifySM2:
    dq m7_ippsECCPVerifySM2
    dq n8_ippsECCPVerifySM2
    dq y8_ippsECCPVerifySM2
    dq e9_ippsECCPVerifySM2
    dq l9_ippsECCPVerifySM2
    dq n0_ippsECCPVerifySM2
    dq k0_ippsECCPVerifySM2

segment .text
global ippsECCPVerifySM2:function (ippsECCPVerifySM2.LEndippsECCPVerifySM2 - ippsECCPVerifySM2)
.Lin_ippsECCPVerifySM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPVerifySM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPVerifySM2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPVerifySM2:
