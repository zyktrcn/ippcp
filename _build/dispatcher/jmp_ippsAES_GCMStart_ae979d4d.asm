extern m7_ippsAES_GCMStart:function
extern n8_ippsAES_GCMStart:function
extern y8_ippsAES_GCMStart:function
extern e9_ippsAES_GCMStart:function
extern l9_ippsAES_GCMStart:function
extern n0_ippsAES_GCMStart:function
extern k0_ippsAES_GCMStart:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_GCMStart
.Larraddr_ippsAES_GCMStart:
    dq m7_ippsAES_GCMStart
    dq n8_ippsAES_GCMStart
    dq y8_ippsAES_GCMStart
    dq e9_ippsAES_GCMStart
    dq l9_ippsAES_GCMStart
    dq n0_ippsAES_GCMStart
    dq k0_ippsAES_GCMStart

segment .text
global ippsAES_GCMStart:function (ippsAES_GCMStart.LEndippsAES_GCMStart - ippsAES_GCMStart)
.Lin_ippsAES_GCMStart:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_GCMStart:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_GCMStart]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_GCMStart:
