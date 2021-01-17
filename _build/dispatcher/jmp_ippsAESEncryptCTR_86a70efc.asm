extern m7_ippsAESEncryptCTR:function
extern n8_ippsAESEncryptCTR:function
extern y8_ippsAESEncryptCTR:function
extern e9_ippsAESEncryptCTR:function
extern l9_ippsAESEncryptCTR:function
extern n0_ippsAESEncryptCTR:function
extern k0_ippsAESEncryptCTR:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESEncryptCTR
.Larraddr_ippsAESEncryptCTR:
    dq m7_ippsAESEncryptCTR
    dq n8_ippsAESEncryptCTR
    dq y8_ippsAESEncryptCTR
    dq e9_ippsAESEncryptCTR
    dq l9_ippsAESEncryptCTR
    dq n0_ippsAESEncryptCTR
    dq k0_ippsAESEncryptCTR

segment .text
global ippsAESEncryptCTR:function (ippsAESEncryptCTR.LEndippsAESEncryptCTR - ippsAESEncryptCTR)
.Lin_ippsAESEncryptCTR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESEncryptCTR:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESEncryptCTR]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESEncryptCTR:
