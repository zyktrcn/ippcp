extern m7_ippsAES_CMACInit:function
extern n8_ippsAES_CMACInit:function
extern y8_ippsAES_CMACInit:function
extern e9_ippsAES_CMACInit:function
extern l9_ippsAES_CMACInit:function
extern n0_ippsAES_CMACInit:function
extern k0_ippsAES_CMACInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_CMACInit
.Larraddr_ippsAES_CMACInit:
    dq m7_ippsAES_CMACInit
    dq n8_ippsAES_CMACInit
    dq y8_ippsAES_CMACInit
    dq e9_ippsAES_CMACInit
    dq l9_ippsAES_CMACInit
    dq n0_ippsAES_CMACInit
    dq k0_ippsAES_CMACInit

segment .text
global ippsAES_CMACInit:function (ippsAES_CMACInit.LEndippsAES_CMACInit - ippsAES_CMACInit)
.Lin_ippsAES_CMACInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_CMACInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_CMACInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_CMACInit:
