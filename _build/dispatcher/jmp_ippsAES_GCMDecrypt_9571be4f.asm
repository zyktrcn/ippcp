extern m7_ippsAES_GCMDecrypt:function
extern n8_ippsAES_GCMDecrypt:function
extern y8_ippsAES_GCMDecrypt:function
extern e9_ippsAES_GCMDecrypt:function
extern l9_ippsAES_GCMDecrypt:function
extern n0_ippsAES_GCMDecrypt:function
extern k0_ippsAES_GCMDecrypt:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_GCMDecrypt
.Larraddr_ippsAES_GCMDecrypt:
    dq m7_ippsAES_GCMDecrypt
    dq n8_ippsAES_GCMDecrypt
    dq y8_ippsAES_GCMDecrypt
    dq e9_ippsAES_GCMDecrypt
    dq l9_ippsAES_GCMDecrypt
    dq n0_ippsAES_GCMDecrypt
    dq k0_ippsAES_GCMDecrypt

segment .text
global ippsAES_GCMDecrypt:function (ippsAES_GCMDecrypt.LEndippsAES_GCMDecrypt - ippsAES_GCMDecrypt)
.Lin_ippsAES_GCMDecrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_GCMDecrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_GCMDecrypt]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_GCMDecrypt:
