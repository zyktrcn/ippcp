extern m7_ippsGFpECESDecrypt_SM2:function
extern n8_ippsGFpECESDecrypt_SM2:function
extern y8_ippsGFpECESDecrypt_SM2:function
extern e9_ippsGFpECESDecrypt_SM2:function
extern l9_ippsGFpECESDecrypt_SM2:function
extern n0_ippsGFpECESDecrypt_SM2:function
extern k0_ippsGFpECESDecrypt_SM2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECESDecrypt_SM2
.Larraddr_ippsGFpECESDecrypt_SM2:
    dq m7_ippsGFpECESDecrypt_SM2
    dq n8_ippsGFpECESDecrypt_SM2
    dq y8_ippsGFpECESDecrypt_SM2
    dq e9_ippsGFpECESDecrypt_SM2
    dq l9_ippsGFpECESDecrypt_SM2
    dq n0_ippsGFpECESDecrypt_SM2
    dq k0_ippsGFpECESDecrypt_SM2

segment .text
global ippsGFpECESDecrypt_SM2:function (ippsGFpECESDecrypt_SM2.LEndippsGFpECESDecrypt_SM2 - ippsGFpECESDecrypt_SM2)
.Lin_ippsGFpECESDecrypt_SM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECESDecrypt_SM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECESDecrypt_SM2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECESDecrypt_SM2:
