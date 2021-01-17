extern m7_ippsRSADecrypt_OAEP:function
extern n8_ippsRSADecrypt_OAEP:function
extern y8_ippsRSADecrypt_OAEP:function
extern e9_ippsRSADecrypt_OAEP:function
extern l9_ippsRSADecrypt_OAEP:function
extern n0_ippsRSADecrypt_OAEP:function
extern k0_ippsRSADecrypt_OAEP:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSADecrypt_OAEP
.Larraddr_ippsRSADecrypt_OAEP:
    dq m7_ippsRSADecrypt_OAEP
    dq n8_ippsRSADecrypt_OAEP
    dq y8_ippsRSADecrypt_OAEP
    dq e9_ippsRSADecrypt_OAEP
    dq l9_ippsRSADecrypt_OAEP
    dq n0_ippsRSADecrypt_OAEP
    dq k0_ippsRSADecrypt_OAEP

segment .text
global ippsRSADecrypt_OAEP:function (ippsRSADecrypt_OAEP.LEndippsRSADecrypt_OAEP - ippsRSADecrypt_OAEP)
.Lin_ippsRSADecrypt_OAEP:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSADecrypt_OAEP:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSADecrypt_OAEP]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSADecrypt_OAEP:
