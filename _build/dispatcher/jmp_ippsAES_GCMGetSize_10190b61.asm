extern m7_ippsAES_GCMGetSize:function
extern n8_ippsAES_GCMGetSize:function
extern y8_ippsAES_GCMGetSize:function
extern e9_ippsAES_GCMGetSize:function
extern l9_ippsAES_GCMGetSize:function
extern n0_ippsAES_GCMGetSize:function
extern k0_ippsAES_GCMGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_GCMGetSize
.Larraddr_ippsAES_GCMGetSize:
    dq m7_ippsAES_GCMGetSize
    dq n8_ippsAES_GCMGetSize
    dq y8_ippsAES_GCMGetSize
    dq e9_ippsAES_GCMGetSize
    dq l9_ippsAES_GCMGetSize
    dq n0_ippsAES_GCMGetSize
    dq k0_ippsAES_GCMGetSize

segment .text
global ippsAES_GCMGetSize:function (ippsAES_GCMGetSize.LEndippsAES_GCMGetSize - ippsAES_GCMGetSize)
.Lin_ippsAES_GCMGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_GCMGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_GCMGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_GCMGetSize:
