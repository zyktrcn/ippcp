extern m7_ippsECCPSignDSA:function
extern n8_ippsECCPSignDSA:function
extern y8_ippsECCPSignDSA:function
extern e9_ippsECCPSignDSA:function
extern l9_ippsECCPSignDSA:function
extern n0_ippsECCPSignDSA:function
extern k0_ippsECCPSignDSA:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPSignDSA
.Larraddr_ippsECCPSignDSA:
    dq m7_ippsECCPSignDSA
    dq n8_ippsECCPSignDSA
    dq y8_ippsECCPSignDSA
    dq e9_ippsECCPSignDSA
    dq l9_ippsECCPSignDSA
    dq n0_ippsECCPSignDSA
    dq k0_ippsECCPSignDSA

segment .text
global ippsECCPSignDSA:function (ippsECCPSignDSA.LEndippsECCPSignDSA - ippsECCPSignDSA)
.Lin_ippsECCPSignDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPSignDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPSignDSA]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPSignDSA:
