extern m7_ippsGFpECSignDSA:function
extern n8_ippsGFpECSignDSA:function
extern y8_ippsGFpECSignDSA:function
extern e9_ippsGFpECSignDSA:function
extern l9_ippsGFpECSignDSA:function
extern n0_ippsGFpECSignDSA:function
extern k0_ippsGFpECSignDSA:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECSignDSA
.Larraddr_ippsGFpECSignDSA:
    dq m7_ippsGFpECSignDSA
    dq n8_ippsGFpECSignDSA
    dq y8_ippsGFpECSignDSA
    dq e9_ippsGFpECSignDSA
    dq l9_ippsGFpECSignDSA
    dq n0_ippsGFpECSignDSA
    dq k0_ippsGFpECSignDSA

segment .text
global ippsGFpECSignDSA:function (ippsGFpECSignDSA.LEndippsGFpECSignDSA - ippsGFpECSignDSA)
.Lin_ippsGFpECSignDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECSignDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECSignDSA]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECSignDSA:
