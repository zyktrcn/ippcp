extern m7_ippsGFpECVerifyDSA:function
extern n8_ippsGFpECVerifyDSA:function
extern y8_ippsGFpECVerifyDSA:function
extern e9_ippsGFpECVerifyDSA:function
extern l9_ippsGFpECVerifyDSA:function
extern n0_ippsGFpECVerifyDSA:function
extern k0_ippsGFpECVerifyDSA:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECVerifyDSA
.Larraddr_ippsGFpECVerifyDSA:
    dq m7_ippsGFpECVerifyDSA
    dq n8_ippsGFpECVerifyDSA
    dq y8_ippsGFpECVerifyDSA
    dq e9_ippsGFpECVerifyDSA
    dq l9_ippsGFpECVerifyDSA
    dq n0_ippsGFpECVerifyDSA
    dq k0_ippsGFpECVerifyDSA

segment .text
global ippsGFpECVerifyDSA:function (ippsGFpECVerifyDSA.LEndippsGFpECVerifyDSA - ippsGFpECVerifyDSA)
.Lin_ippsGFpECVerifyDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECVerifyDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECVerifyDSA]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECVerifyDSA:
