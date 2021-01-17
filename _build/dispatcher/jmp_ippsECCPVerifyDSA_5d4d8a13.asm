extern m7_ippsECCPVerifyDSA:function
extern n8_ippsECCPVerifyDSA:function
extern y8_ippsECCPVerifyDSA:function
extern e9_ippsECCPVerifyDSA:function
extern l9_ippsECCPVerifyDSA:function
extern n0_ippsECCPVerifyDSA:function
extern k0_ippsECCPVerifyDSA:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPVerifyDSA
.Larraddr_ippsECCPVerifyDSA:
    dq m7_ippsECCPVerifyDSA
    dq n8_ippsECCPVerifyDSA
    dq y8_ippsECCPVerifyDSA
    dq e9_ippsECCPVerifyDSA
    dq l9_ippsECCPVerifyDSA
    dq n0_ippsECCPVerifyDSA
    dq k0_ippsECCPVerifyDSA

segment .text
global ippsECCPVerifyDSA:function (ippsECCPVerifyDSA.LEndippsECCPVerifyDSA - ippsECCPVerifyDSA)
.Lin_ippsECCPVerifyDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPVerifyDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPVerifyDSA]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPVerifyDSA:
