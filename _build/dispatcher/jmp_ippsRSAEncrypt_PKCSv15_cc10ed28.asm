extern m7_ippsRSAEncrypt_PKCSv15:function
extern n8_ippsRSAEncrypt_PKCSv15:function
extern y8_ippsRSAEncrypt_PKCSv15:function
extern e9_ippsRSAEncrypt_PKCSv15:function
extern l9_ippsRSAEncrypt_PKCSv15:function
extern n0_ippsRSAEncrypt_PKCSv15:function
extern k0_ippsRSAEncrypt_PKCSv15:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSAEncrypt_PKCSv15
.Larraddr_ippsRSAEncrypt_PKCSv15:
    dq m7_ippsRSAEncrypt_PKCSv15
    dq n8_ippsRSAEncrypt_PKCSv15
    dq y8_ippsRSAEncrypt_PKCSv15
    dq e9_ippsRSAEncrypt_PKCSv15
    dq l9_ippsRSAEncrypt_PKCSv15
    dq n0_ippsRSAEncrypt_PKCSv15
    dq k0_ippsRSAEncrypt_PKCSv15

segment .text
global ippsRSAEncrypt_PKCSv15:function (ippsRSAEncrypt_PKCSv15.LEndippsRSAEncrypt_PKCSv15 - ippsRSAEncrypt_PKCSv15)
.Lin_ippsRSAEncrypt_PKCSv15:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSAEncrypt_PKCSv15:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSAEncrypt_PKCSv15]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSAEncrypt_PKCSv15:
