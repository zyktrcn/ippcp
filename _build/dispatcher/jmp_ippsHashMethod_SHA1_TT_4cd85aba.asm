extern m7_ippsHashMethod_SHA1_TT:function
extern n8_ippsHashMethod_SHA1_TT:function
extern y8_ippsHashMethod_SHA1_TT:function
extern e9_ippsHashMethod_SHA1_TT:function
extern l9_ippsHashMethod_SHA1_TT:function
extern n0_ippsHashMethod_SHA1_TT:function
extern k0_ippsHashMethod_SHA1_TT:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashMethod_SHA1_TT
.Larraddr_ippsHashMethod_SHA1_TT:
    dq m7_ippsHashMethod_SHA1_TT
    dq n8_ippsHashMethod_SHA1_TT
    dq y8_ippsHashMethod_SHA1_TT
    dq e9_ippsHashMethod_SHA1_TT
    dq l9_ippsHashMethod_SHA1_TT
    dq n0_ippsHashMethod_SHA1_TT
    dq k0_ippsHashMethod_SHA1_TT

segment .text
global ippsHashMethod_SHA1_TT:function (ippsHashMethod_SHA1_TT.LEndippsHashMethod_SHA1_TT - ippsHashMethod_SHA1_TT)
.Lin_ippsHashMethod_SHA1_TT:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashMethod_SHA1_TT:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashMethod_SHA1_TT]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashMethod_SHA1_TT:
