extern m7_ippsAES_SIVDecrypt:function
extern n8_ippsAES_SIVDecrypt:function
extern y8_ippsAES_SIVDecrypt:function
extern e9_ippsAES_SIVDecrypt:function
extern l9_ippsAES_SIVDecrypt:function
extern n0_ippsAES_SIVDecrypt:function
extern k0_ippsAES_SIVDecrypt:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_SIVDecrypt
.Larraddr_ippsAES_SIVDecrypt:
    dq m7_ippsAES_SIVDecrypt
    dq n8_ippsAES_SIVDecrypt
    dq y8_ippsAES_SIVDecrypt
    dq e9_ippsAES_SIVDecrypt
    dq l9_ippsAES_SIVDecrypt
    dq n0_ippsAES_SIVDecrypt
    dq k0_ippsAES_SIVDecrypt

segment .text
global ippsAES_SIVDecrypt:function (ippsAES_SIVDecrypt.LEndippsAES_SIVDecrypt - ippsAES_SIVDecrypt)
.Lin_ippsAES_SIVDecrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_SIVDecrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_SIVDecrypt]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_SIVDecrypt:
