extern m7_ippsAES_GCMEncrypt:function
extern n8_ippsAES_GCMEncrypt:function
extern y8_ippsAES_GCMEncrypt:function
extern e9_ippsAES_GCMEncrypt:function
extern l9_ippsAES_GCMEncrypt:function
extern n0_ippsAES_GCMEncrypt:function
extern k0_ippsAES_GCMEncrypt:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_GCMEncrypt
.Larraddr_ippsAES_GCMEncrypt:
    dq m7_ippsAES_GCMEncrypt
    dq n8_ippsAES_GCMEncrypt
    dq y8_ippsAES_GCMEncrypt
    dq e9_ippsAES_GCMEncrypt
    dq l9_ippsAES_GCMEncrypt
    dq n0_ippsAES_GCMEncrypt
    dq k0_ippsAES_GCMEncrypt

segment .text
global ippsAES_GCMEncrypt:function (ippsAES_GCMEncrypt.LEndippsAES_GCMEncrypt - ippsAES_GCMEncrypt)
.Lin_ippsAES_GCMEncrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_GCMEncrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_GCMEncrypt]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_GCMEncrypt:
