extern m7_ippsGFpECESFinal_SM2:function
extern n8_ippsGFpECESFinal_SM2:function
extern y8_ippsGFpECESFinal_SM2:function
extern e9_ippsGFpECESFinal_SM2:function
extern l9_ippsGFpECESFinal_SM2:function
extern n0_ippsGFpECESFinal_SM2:function
extern k0_ippsGFpECESFinal_SM2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECESFinal_SM2
.Larraddr_ippsGFpECESFinal_SM2:
    dq m7_ippsGFpECESFinal_SM2
    dq n8_ippsGFpECESFinal_SM2
    dq y8_ippsGFpECESFinal_SM2
    dq e9_ippsGFpECESFinal_SM2
    dq l9_ippsGFpECESFinal_SM2
    dq n0_ippsGFpECESFinal_SM2
    dq k0_ippsGFpECESFinal_SM2

segment .text
global ippsGFpECESFinal_SM2:function (ippsGFpECESFinal_SM2.LEndippsGFpECESFinal_SM2 - ippsGFpECESFinal_SM2)
.Lin_ippsGFpECESFinal_SM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECESFinal_SM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECESFinal_SM2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECESFinal_SM2:
