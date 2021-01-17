extern m7_ippsAESEncryptCBC_CS3:function
extern n8_ippsAESEncryptCBC_CS3:function
extern y8_ippsAESEncryptCBC_CS3:function
extern e9_ippsAESEncryptCBC_CS3:function
extern l9_ippsAESEncryptCBC_CS3:function
extern n0_ippsAESEncryptCBC_CS3:function
extern k0_ippsAESEncryptCBC_CS3:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESEncryptCBC_CS3
.Larraddr_ippsAESEncryptCBC_CS3:
    dq m7_ippsAESEncryptCBC_CS3
    dq n8_ippsAESEncryptCBC_CS3
    dq y8_ippsAESEncryptCBC_CS3
    dq e9_ippsAESEncryptCBC_CS3
    dq l9_ippsAESEncryptCBC_CS3
    dq n0_ippsAESEncryptCBC_CS3
    dq k0_ippsAESEncryptCBC_CS3

segment .text
global ippsAESEncryptCBC_CS3:function (ippsAESEncryptCBC_CS3.LEndippsAESEncryptCBC_CS3 - ippsAESEncryptCBC_CS3)
.Lin_ippsAESEncryptCBC_CS3:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESEncryptCBC_CS3:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESEncryptCBC_CS3]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESEncryptCBC_CS3:
