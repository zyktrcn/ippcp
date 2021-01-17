extern m7_ippsAES_CCMEncrypt:function
extern n8_ippsAES_CCMEncrypt:function
extern y8_ippsAES_CCMEncrypt:function
extern e9_ippsAES_CCMEncrypt:function
extern l9_ippsAES_CCMEncrypt:function
extern n0_ippsAES_CCMEncrypt:function
extern k0_ippsAES_CCMEncrypt:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_CCMEncrypt
.Larraddr_ippsAES_CCMEncrypt:
    dq m7_ippsAES_CCMEncrypt
    dq n8_ippsAES_CCMEncrypt
    dq y8_ippsAES_CCMEncrypt
    dq e9_ippsAES_CCMEncrypt
    dq l9_ippsAES_CCMEncrypt
    dq n0_ippsAES_CCMEncrypt
    dq k0_ippsAES_CCMEncrypt

segment .text
global ippsAES_CCMEncrypt:function (ippsAES_CCMEncrypt.LEndippsAES_CCMEncrypt - ippsAES_CCMEncrypt)
.Lin_ippsAES_CCMEncrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_CCMEncrypt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_CCMEncrypt]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_CCMEncrypt:
