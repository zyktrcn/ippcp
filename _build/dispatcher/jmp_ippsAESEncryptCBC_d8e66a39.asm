extern m7_ippsAESEncryptCBC:function
extern n8_ippsAESEncryptCBC:function
extern y8_ippsAESEncryptCBC:function
extern e9_ippsAESEncryptCBC:function
extern l9_ippsAESEncryptCBC:function
extern n0_ippsAESEncryptCBC:function
extern k0_ippsAESEncryptCBC:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESEncryptCBC
.Larraddr_ippsAESEncryptCBC:
    dq m7_ippsAESEncryptCBC
    dq n8_ippsAESEncryptCBC
    dq y8_ippsAESEncryptCBC
    dq e9_ippsAESEncryptCBC
    dq l9_ippsAESEncryptCBC
    dq n0_ippsAESEncryptCBC
    dq k0_ippsAESEncryptCBC

segment .text
global ippsAESEncryptCBC:function (ippsAESEncryptCBC.LEndippsAESEncryptCBC - ippsAESEncryptCBC)
.Lin_ippsAESEncryptCBC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESEncryptCBC:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESEncryptCBC]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESEncryptCBC:
