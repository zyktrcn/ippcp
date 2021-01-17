extern m7_ippsRSADecrypt_PKCSv15:function
extern n8_ippsRSADecrypt_PKCSv15:function
extern y8_ippsRSADecrypt_PKCSv15:function
extern e9_ippsRSADecrypt_PKCSv15:function
extern l9_ippsRSADecrypt_PKCSv15:function
extern n0_ippsRSADecrypt_PKCSv15:function
extern k0_ippsRSADecrypt_PKCSv15:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSADecrypt_PKCSv15
.Larraddr_ippsRSADecrypt_PKCSv15:
    dq m7_ippsRSADecrypt_PKCSv15
    dq n8_ippsRSADecrypt_PKCSv15
    dq y8_ippsRSADecrypt_PKCSv15
    dq e9_ippsRSADecrypt_PKCSv15
    dq l9_ippsRSADecrypt_PKCSv15
    dq n0_ippsRSADecrypt_PKCSv15
    dq k0_ippsRSADecrypt_PKCSv15

segment .text
global ippsRSADecrypt_PKCSv15:function (ippsRSADecrypt_PKCSv15.LEndippsRSADecrypt_PKCSv15 - ippsRSADecrypt_PKCSv15)
.Lin_ippsRSADecrypt_PKCSv15:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSADecrypt_PKCSv15:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSADecrypt_PKCSv15]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSADecrypt_PKCSv15:
