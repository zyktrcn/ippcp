extern m7_ippsGFpSub:function
extern n8_ippsGFpSub:function
extern y8_ippsGFpSub:function
extern e9_ippsGFpSub:function
extern l9_ippsGFpSub:function
extern n0_ippsGFpSub:function
extern k0_ippsGFpSub:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpSub
.Larraddr_ippsGFpSub:
    dq m7_ippsGFpSub
    dq n8_ippsGFpSub
    dq y8_ippsGFpSub
    dq e9_ippsGFpSub
    dq l9_ippsGFpSub
    dq n0_ippsGFpSub
    dq k0_ippsGFpSub

segment .text
global ippsGFpSub:function (ippsGFpSub.LEndippsGFpSub - ippsGFpSub)
.Lin_ippsGFpSub:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpSub:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpSub]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpSub:
