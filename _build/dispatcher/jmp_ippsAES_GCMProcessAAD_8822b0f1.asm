extern m7_ippsAES_GCMProcessAAD:function
extern n8_ippsAES_GCMProcessAAD:function
extern y8_ippsAES_GCMProcessAAD:function
extern e9_ippsAES_GCMProcessAAD:function
extern l9_ippsAES_GCMProcessAAD:function
extern n0_ippsAES_GCMProcessAAD:function
extern k0_ippsAES_GCMProcessAAD:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_GCMProcessAAD
.Larraddr_ippsAES_GCMProcessAAD:
    dq m7_ippsAES_GCMProcessAAD
    dq n8_ippsAES_GCMProcessAAD
    dq y8_ippsAES_GCMProcessAAD
    dq e9_ippsAES_GCMProcessAAD
    dq l9_ippsAES_GCMProcessAAD
    dq n0_ippsAES_GCMProcessAAD
    dq k0_ippsAES_GCMProcessAAD

segment .text
global ippsAES_GCMProcessAAD:function (ippsAES_GCMProcessAAD.LEndippsAES_GCMProcessAAD - ippsAES_GCMProcessAAD)
.Lin_ippsAES_GCMProcessAAD:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_GCMProcessAAD:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_GCMProcessAAD]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_GCMProcessAAD:
