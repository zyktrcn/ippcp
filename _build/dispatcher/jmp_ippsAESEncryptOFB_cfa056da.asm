extern m7_ippsAESEncryptOFB:function
extern n8_ippsAESEncryptOFB:function
extern y8_ippsAESEncryptOFB:function
extern e9_ippsAESEncryptOFB:function
extern l9_ippsAESEncryptOFB:function
extern n0_ippsAESEncryptOFB:function
extern k0_ippsAESEncryptOFB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESEncryptOFB
.Larraddr_ippsAESEncryptOFB:
    dq m7_ippsAESEncryptOFB
    dq n8_ippsAESEncryptOFB
    dq y8_ippsAESEncryptOFB
    dq e9_ippsAESEncryptOFB
    dq l9_ippsAESEncryptOFB
    dq n0_ippsAESEncryptOFB
    dq k0_ippsAESEncryptOFB

segment .text
global ippsAESEncryptOFB:function (ippsAESEncryptOFB.LEndippsAESEncryptOFB - ippsAESEncryptOFB)
.Lin_ippsAESEncryptOFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESEncryptOFB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESEncryptOFB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESEncryptOFB:
