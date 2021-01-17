extern m7_ippsGFpECVerifyNR:function
extern n8_ippsGFpECVerifyNR:function
extern y8_ippsGFpECVerifyNR:function
extern e9_ippsGFpECVerifyNR:function
extern l9_ippsGFpECVerifyNR:function
extern n0_ippsGFpECVerifyNR:function
extern k0_ippsGFpECVerifyNR:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECVerifyNR
.Larraddr_ippsGFpECVerifyNR:
    dq m7_ippsGFpECVerifyNR
    dq n8_ippsGFpECVerifyNR
    dq y8_ippsGFpECVerifyNR
    dq e9_ippsGFpECVerifyNR
    dq l9_ippsGFpECVerifyNR
    dq n0_ippsGFpECVerifyNR
    dq k0_ippsGFpECVerifyNR

segment .text
global ippsGFpECVerifyNR:function (ippsGFpECVerifyNR.LEndippsGFpECVerifyNR - ippsGFpECVerifyNR)
.Lin_ippsGFpECVerifyNR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECVerifyNR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECVerifyNR]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECVerifyNR:
