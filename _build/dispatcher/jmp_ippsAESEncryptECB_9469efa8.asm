extern m7_ippsAESEncryptECB:function
extern n8_ippsAESEncryptECB:function
extern y8_ippsAESEncryptECB:function
extern e9_ippsAESEncryptECB:function
extern l9_ippsAESEncryptECB:function
extern n0_ippsAESEncryptECB:function
extern k0_ippsAESEncryptECB:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESEncryptECB
.Larraddr_ippsAESEncryptECB:
    dq m7_ippsAESEncryptECB
    dq n8_ippsAESEncryptECB
    dq y8_ippsAESEncryptECB
    dq e9_ippsAESEncryptECB
    dq l9_ippsAESEncryptECB
    dq n0_ippsAESEncryptECB
    dq k0_ippsAESEncryptECB

segment .text
global ippsAESEncryptECB:function (ippsAESEncryptECB.LEndippsAESEncryptECB - ippsAESEncryptECB)
.Lin_ippsAESEncryptECB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESEncryptECB:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESEncryptECB]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESEncryptECB:
