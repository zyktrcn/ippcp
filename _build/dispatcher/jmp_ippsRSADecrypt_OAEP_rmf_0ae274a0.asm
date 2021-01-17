extern m7_ippsRSADecrypt_OAEP_rmf:function
extern n8_ippsRSADecrypt_OAEP_rmf:function
extern y8_ippsRSADecrypt_OAEP_rmf:function
extern e9_ippsRSADecrypt_OAEP_rmf:function
extern l9_ippsRSADecrypt_OAEP_rmf:function
extern n0_ippsRSADecrypt_OAEP_rmf:function
extern k0_ippsRSADecrypt_OAEP_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSADecrypt_OAEP_rmf
.Larraddr_ippsRSADecrypt_OAEP_rmf:
    dq m7_ippsRSADecrypt_OAEP_rmf
    dq n8_ippsRSADecrypt_OAEP_rmf
    dq y8_ippsRSADecrypt_OAEP_rmf
    dq e9_ippsRSADecrypt_OAEP_rmf
    dq l9_ippsRSADecrypt_OAEP_rmf
    dq n0_ippsRSADecrypt_OAEP_rmf
    dq k0_ippsRSADecrypt_OAEP_rmf

segment .text
global ippsRSADecrypt_OAEP_rmf:function (ippsRSADecrypt_OAEP_rmf.LEndippsRSADecrypt_OAEP_rmf - ippsRSADecrypt_OAEP_rmf)
.Lin_ippsRSADecrypt_OAEP_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSADecrypt_OAEP_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSADecrypt_OAEP_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSADecrypt_OAEP_rmf:
