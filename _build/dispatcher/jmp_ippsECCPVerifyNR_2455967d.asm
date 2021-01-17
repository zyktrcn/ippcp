extern m7_ippsECCPVerifyNR:function
extern n8_ippsECCPVerifyNR:function
extern y8_ippsECCPVerifyNR:function
extern e9_ippsECCPVerifyNR:function
extern l9_ippsECCPVerifyNR:function
extern n0_ippsECCPVerifyNR:function
extern k0_ippsECCPVerifyNR:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsECCPVerifyNR
.Larraddr_ippsECCPVerifyNR:
    dq m7_ippsECCPVerifyNR
    dq n8_ippsECCPVerifyNR
    dq y8_ippsECCPVerifyNR
    dq e9_ippsECCPVerifyNR
    dq l9_ippsECCPVerifyNR
    dq n0_ippsECCPVerifyNR
    dq k0_ippsECCPVerifyNR

segment .text
global ippsECCPVerifyNR:function (ippsECCPVerifyNR.LEndippsECCPVerifyNR - ippsECCPVerifyNR)
.Lin_ippsECCPVerifyNR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsECCPVerifyNR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsECCPVerifyNR]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsECCPVerifyNR:
