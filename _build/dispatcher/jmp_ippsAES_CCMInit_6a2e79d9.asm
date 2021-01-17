extern m7_ippsAES_CCMInit:function
extern n8_ippsAES_CCMInit:function
extern y8_ippsAES_CCMInit:function
extern e9_ippsAES_CCMInit:function
extern l9_ippsAES_CCMInit:function
extern n0_ippsAES_CCMInit:function
extern k0_ippsAES_CCMInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_CCMInit
.Larraddr_ippsAES_CCMInit:
    dq m7_ippsAES_CCMInit
    dq n8_ippsAES_CCMInit
    dq y8_ippsAES_CCMInit
    dq e9_ippsAES_CCMInit
    dq l9_ippsAES_CCMInit
    dq n0_ippsAES_CCMInit
    dq k0_ippsAES_CCMInit

segment .text
global ippsAES_CCMInit:function (ippsAES_CCMInit.LEndippsAES_CCMInit - ippsAES_CCMInit)
.Lin_ippsAES_CCMInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_CCMInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_CCMInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_CCMInit:
