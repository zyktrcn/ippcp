extern m7_ippsAESInit:function
extern n8_ippsAESInit:function
extern y8_ippsAESInit:function
extern e9_ippsAESInit:function
extern l9_ippsAESInit:function
extern n0_ippsAESInit:function
extern k0_ippsAESInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAESInit
.Larraddr_ippsAESInit:
    dq m7_ippsAESInit
    dq n8_ippsAESInit
    dq y8_ippsAESInit
    dq e9_ippsAESInit
    dq l9_ippsAESInit
    dq n0_ippsAESInit
    dq k0_ippsAESInit

segment .text
global ippsAESInit:function (ippsAESInit.LEndippsAESInit - ippsAESInit)
.Lin_ippsAESInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAESInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAESInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAESInit:
