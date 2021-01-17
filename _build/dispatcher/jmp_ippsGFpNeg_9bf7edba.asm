extern m7_ippsGFpNeg:function
extern n8_ippsGFpNeg:function
extern y8_ippsGFpNeg:function
extern e9_ippsGFpNeg:function
extern l9_ippsGFpNeg:function
extern n0_ippsGFpNeg:function
extern k0_ippsGFpNeg:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpNeg
.Larraddr_ippsGFpNeg:
    dq m7_ippsGFpNeg
    dq n8_ippsGFpNeg
    dq y8_ippsGFpNeg
    dq e9_ippsGFpNeg
    dq l9_ippsGFpNeg
    dq n0_ippsGFpNeg
    dq k0_ippsGFpNeg

segment .text
global ippsGFpNeg:function (ippsGFpNeg.LEndippsGFpNeg - ippsGFpNeg)
.Lin_ippsGFpNeg:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpNeg:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpNeg]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpNeg:
