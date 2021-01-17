extern m7_ippsAES_GCMProcessIV:function
extern n8_ippsAES_GCMProcessIV:function
extern y8_ippsAES_GCMProcessIV:function
extern e9_ippsAES_GCMProcessIV:function
extern l9_ippsAES_GCMProcessIV:function
extern n0_ippsAES_GCMProcessIV:function
extern k0_ippsAES_GCMProcessIV:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsAES_GCMProcessIV
.Larraddr_ippsAES_GCMProcessIV:
    dq m7_ippsAES_GCMProcessIV
    dq n8_ippsAES_GCMProcessIV
    dq y8_ippsAES_GCMProcessIV
    dq e9_ippsAES_GCMProcessIV
    dq l9_ippsAES_GCMProcessIV
    dq n0_ippsAES_GCMProcessIV
    dq k0_ippsAES_GCMProcessIV

segment .text
global ippsAES_GCMProcessIV:function (ippsAES_GCMProcessIV.LEndippsAES_GCMProcessIV - ippsAES_GCMProcessIV)
.Lin_ippsAES_GCMProcessIV:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsAES_GCMProcessIV:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsAES_GCMProcessIV]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsAES_GCMProcessIV:
