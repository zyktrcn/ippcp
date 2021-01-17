extern m7_ippsAES_SIVEncrypt:function
extern n8_ippsAES_SIVEncrypt:function
extern y8_ippsAES_SIVEncrypt:function
extern e9_ippsAES_SIVEncrypt:function
extern l9_ippsAES_SIVEncrypt:function
extern n0_ippsAES_SIVEncrypt:function
extern k0_ippsAES_SIVEncrypt:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_SIVEncrypt
.Larraddr_ippsAES_SIVEncrypt:
    dq m7_ippsAES_SIVEncrypt
    dq n8_ippsAES_SIVEncrypt
    dq y8_ippsAES_SIVEncrypt
    dq e9_ippsAES_SIVEncrypt
    dq l9_ippsAES_SIVEncrypt
    dq n0_ippsAES_SIVEncrypt
    dq k0_ippsAES_SIVEncrypt

segment .text
global ippsAES_SIVEncrypt:function (ippsAES_SIVEncrypt.LEndippsAES_SIVEncrypt - ippsAES_SIVEncrypt)
.Lin_ippsAES_SIVEncrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_SIVEncrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_SIVEncrypt]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_SIVEncrypt:
