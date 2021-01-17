extern m7_ippsAESEncryptCFB:function
extern n8_ippsAESEncryptCFB:function
extern y8_ippsAESEncryptCFB:function
extern e9_ippsAESEncryptCFB:function
extern l9_ippsAESEncryptCFB:function
extern n0_ippsAESEncryptCFB:function
extern k0_ippsAESEncryptCFB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESEncryptCFB
.Larraddr_ippsAESEncryptCFB:
    dq m7_ippsAESEncryptCFB
    dq n8_ippsAESEncryptCFB
    dq y8_ippsAESEncryptCFB
    dq e9_ippsAESEncryptCFB
    dq l9_ippsAESEncryptCFB
    dq n0_ippsAESEncryptCFB
    dq k0_ippsAESEncryptCFB

segment .text
global ippsAESEncryptCFB:function (ippsAESEncryptCFB.LEndippsAESEncryptCFB - ippsAESEncryptCFB)
.Lin_ippsAESEncryptCFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESEncryptCFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESEncryptCFB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESEncryptCFB:
