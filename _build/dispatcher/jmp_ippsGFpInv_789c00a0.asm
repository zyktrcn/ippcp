extern m7_ippsGFpInv:function
extern n8_ippsGFpInv:function
extern y8_ippsGFpInv:function
extern e9_ippsGFpInv:function
extern l9_ippsGFpInv:function
extern n0_ippsGFpInv:function
extern k0_ippsGFpInv:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpInv
.Larraddr_ippsGFpInv:
    dq m7_ippsGFpInv
    dq n8_ippsGFpInv
    dq y8_ippsGFpInv
    dq e9_ippsGFpInv
    dq l9_ippsGFpInv
    dq n0_ippsGFpInv
    dq k0_ippsGFpInv

segment .text
global ippsGFpInv:function (ippsGFpInv.LEndippsGFpInv - ippsGFpInv)
.Lin_ippsGFpInv:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpInv:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpInv]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpInv:
