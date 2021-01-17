extern m7_ippsRSA_MB_Encrypt:function
extern n8_ippsRSA_MB_Encrypt:function
extern y8_ippsRSA_MB_Encrypt:function
extern e9_ippsRSA_MB_Encrypt:function
extern l9_ippsRSA_MB_Encrypt:function
extern n0_ippsRSA_MB_Encrypt:function
extern k0_ippsRSA_MB_Encrypt:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsRSA_MB_Encrypt
.Larraddr_ippsRSA_MB_Encrypt:
    dq m7_ippsRSA_MB_Encrypt
    dq n8_ippsRSA_MB_Encrypt
    dq y8_ippsRSA_MB_Encrypt
    dq e9_ippsRSA_MB_Encrypt
    dq l9_ippsRSA_MB_Encrypt
    dq n0_ippsRSA_MB_Encrypt
    dq k0_ippsRSA_MB_Encrypt

segment .text
global ippsRSA_MB_Encrypt:function (ippsRSA_MB_Encrypt.LEndippsRSA_MB_Encrypt - ippsRSA_MB_Encrypt)
.Lin_ippsRSA_MB_Encrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsRSA_MB_Encrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsRSA_MB_Encrypt]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsRSA_MB_Encrypt:
