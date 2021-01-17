extern m7_ippsAES_GCMInit:function
extern n8_ippsAES_GCMInit:function
extern y8_ippsAES_GCMInit:function
extern e9_ippsAES_GCMInit:function
extern l9_ippsAES_GCMInit:function
extern n0_ippsAES_GCMInit:function
extern k0_ippsAES_GCMInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_GCMInit
.Larraddr_ippsAES_GCMInit:
    dq m7_ippsAES_GCMInit
    dq n8_ippsAES_GCMInit
    dq y8_ippsAES_GCMInit
    dq e9_ippsAES_GCMInit
    dq l9_ippsAES_GCMInit
    dq n0_ippsAES_GCMInit
    dq k0_ippsAES_GCMInit

segment .text
global ippsAES_GCMInit:function (ippsAES_GCMInit.LEndippsAES_GCMInit - ippsAES_GCMInit)
.Lin_ippsAES_GCMInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_GCMInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_GCMInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_GCMInit: