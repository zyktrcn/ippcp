extern m7_ippsGFpSqr:function
extern n8_ippsGFpSqr:function
extern y8_ippsGFpSqr:function
extern e9_ippsGFpSqr:function
extern l9_ippsGFpSqr:function
extern n0_ippsGFpSqr:function
extern k0_ippsGFpSqr:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpSqr
.Larraddr_ippsGFpSqr:
    dq m7_ippsGFpSqr
    dq n8_ippsGFpSqr
    dq y8_ippsGFpSqr
    dq e9_ippsGFpSqr
    dq l9_ippsGFpSqr
    dq n0_ippsGFpSqr
    dq k0_ippsGFpSqr

segment .text
global ippsGFpSqr:function (ippsGFpSqr.LEndippsGFpSqr - ippsGFpSqr)
.Lin_ippsGFpSqr:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpSqr:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpSqr]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpSqr:
