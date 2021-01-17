extern m7_ippsAES_CMACGetTag:function
extern n8_ippsAES_CMACGetTag:function
extern y8_ippsAES_CMACGetTag:function
extern e9_ippsAES_CMACGetTag:function
extern l9_ippsAES_CMACGetTag:function
extern n0_ippsAES_CMACGetTag:function
extern k0_ippsAES_CMACGetTag:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_CMACGetTag
.Larraddr_ippsAES_CMACGetTag:
    dq m7_ippsAES_CMACGetTag
    dq n8_ippsAES_CMACGetTag
    dq y8_ippsAES_CMACGetTag
    dq e9_ippsAES_CMACGetTag
    dq l9_ippsAES_CMACGetTag
    dq n0_ippsAES_CMACGetTag
    dq k0_ippsAES_CMACGetTag

segment .text
global ippsAES_CMACGetTag:function (ippsAES_CMACGetTag.LEndippsAES_CMACGetTag - ippsAES_CMACGetTag)
.Lin_ippsAES_CMACGetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_CMACGetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_CMACGetTag]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_CMACGetTag:
