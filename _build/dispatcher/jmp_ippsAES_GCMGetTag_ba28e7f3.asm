extern m7_ippsAES_GCMGetTag:function
extern n8_ippsAES_GCMGetTag:function
extern y8_ippsAES_GCMGetTag:function
extern e9_ippsAES_GCMGetTag:function
extern l9_ippsAES_GCMGetTag:function
extern n0_ippsAES_GCMGetTag:function
extern k0_ippsAES_GCMGetTag:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_GCMGetTag
.Larraddr_ippsAES_GCMGetTag:
    dq m7_ippsAES_GCMGetTag
    dq n8_ippsAES_GCMGetTag
    dq y8_ippsAES_GCMGetTag
    dq e9_ippsAES_GCMGetTag
    dq l9_ippsAES_GCMGetTag
    dq n0_ippsAES_GCMGetTag
    dq k0_ippsAES_GCMGetTag

segment .text
global ippsAES_GCMGetTag:function (ippsAES_GCMGetTag.LEndippsAES_GCMGetTag - ippsAES_GCMGetTag)
.Lin_ippsAES_GCMGetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_GCMGetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_GCMGetTag]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_GCMGetTag:
