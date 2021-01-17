extern m7_ippsAES_CMACGetSize:function
extern n8_ippsAES_CMACGetSize:function
extern y8_ippsAES_CMACGetSize:function
extern e9_ippsAES_CMACGetSize:function
extern l9_ippsAES_CMACGetSize:function
extern n0_ippsAES_CMACGetSize:function
extern k0_ippsAES_CMACGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_CMACGetSize
.Larraddr_ippsAES_CMACGetSize:
    dq m7_ippsAES_CMACGetSize
    dq n8_ippsAES_CMACGetSize
    dq y8_ippsAES_CMACGetSize
    dq e9_ippsAES_CMACGetSize
    dq l9_ippsAES_CMACGetSize
    dq n0_ippsAES_CMACGetSize
    dq k0_ippsAES_CMACGetSize

segment .text
global ippsAES_CMACGetSize:function (ippsAES_CMACGetSize.LEndippsAES_CMACGetSize - ippsAES_CMACGetSize)
.Lin_ippsAES_CMACGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_CMACGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_CMACGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_CMACGetSize:
