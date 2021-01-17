extern m7_ippsAES_GCMReset:function
extern n8_ippsAES_GCMReset:function
extern y8_ippsAES_GCMReset:function
extern e9_ippsAES_GCMReset:function
extern l9_ippsAES_GCMReset:function
extern n0_ippsAES_GCMReset:function
extern k0_ippsAES_GCMReset:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_GCMReset
.Larraddr_ippsAES_GCMReset:
    dq m7_ippsAES_GCMReset
    dq n8_ippsAES_GCMReset
    dq y8_ippsAES_GCMReset
    dq e9_ippsAES_GCMReset
    dq l9_ippsAES_GCMReset
    dq n0_ippsAES_GCMReset
    dq k0_ippsAES_GCMReset

segment .text
global ippsAES_GCMReset:function (ippsAES_GCMReset.LEndippsAES_GCMReset - ippsAES_GCMReset)
.Lin_ippsAES_GCMReset:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_GCMReset:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_GCMReset]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_GCMReset:
