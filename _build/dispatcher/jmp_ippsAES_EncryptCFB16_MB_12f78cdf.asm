extern m7_ippsAES_EncryptCFB16_MB:function
extern n8_ippsAES_EncryptCFB16_MB:function
extern y8_ippsAES_EncryptCFB16_MB:function
extern e9_ippsAES_EncryptCFB16_MB:function
extern l9_ippsAES_EncryptCFB16_MB:function
extern n0_ippsAES_EncryptCFB16_MB:function
extern k0_ippsAES_EncryptCFB16_MB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_EncryptCFB16_MB
.Larraddr_ippsAES_EncryptCFB16_MB:
    dq m7_ippsAES_EncryptCFB16_MB
    dq n8_ippsAES_EncryptCFB16_MB
    dq y8_ippsAES_EncryptCFB16_MB
    dq e9_ippsAES_EncryptCFB16_MB
    dq l9_ippsAES_EncryptCFB16_MB
    dq n0_ippsAES_EncryptCFB16_MB
    dq k0_ippsAES_EncryptCFB16_MB

segment .text
global ippsAES_EncryptCFB16_MB:function (ippsAES_EncryptCFB16_MB.LEndippsAES_EncryptCFB16_MB - ippsAES_EncryptCFB16_MB)
.Lin_ippsAES_EncryptCFB16_MB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_EncryptCFB16_MB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_EncryptCFB16_MB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_EncryptCFB16_MB:
