extern m7_ippsRSAEncrypt_OAEP_rmf:function
extern n8_ippsRSAEncrypt_OAEP_rmf:function
extern y8_ippsRSAEncrypt_OAEP_rmf:function
extern e9_ippsRSAEncrypt_OAEP_rmf:function
extern l9_ippsRSAEncrypt_OAEP_rmf:function
extern n0_ippsRSAEncrypt_OAEP_rmf:function
extern k0_ippsRSAEncrypt_OAEP_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSAEncrypt_OAEP_rmf
.Larraddr_ippsRSAEncrypt_OAEP_rmf:
    dq m7_ippsRSAEncrypt_OAEP_rmf
    dq n8_ippsRSAEncrypt_OAEP_rmf
    dq y8_ippsRSAEncrypt_OAEP_rmf
    dq e9_ippsRSAEncrypt_OAEP_rmf
    dq l9_ippsRSAEncrypt_OAEP_rmf
    dq n0_ippsRSAEncrypt_OAEP_rmf
    dq k0_ippsRSAEncrypt_OAEP_rmf

segment .text
global ippsRSAEncrypt_OAEP_rmf:function (ippsRSAEncrypt_OAEP_rmf.LEndippsRSAEncrypt_OAEP_rmf - ippsRSAEncrypt_OAEP_rmf)
.Lin_ippsRSAEncrypt_OAEP_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSAEncrypt_OAEP_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSAEncrypt_OAEP_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSAEncrypt_OAEP_rmf:
