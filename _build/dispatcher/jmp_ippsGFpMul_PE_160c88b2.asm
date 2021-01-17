extern m7_ippsGFpMul_PE:function
extern n8_ippsGFpMul_PE:function
extern y8_ippsGFpMul_PE:function
extern e9_ippsGFpMul_PE:function
extern l9_ippsGFpMul_PE:function
extern n0_ippsGFpMul_PE:function
extern k0_ippsGFpMul_PE:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpMul_PE
.Larraddr_ippsGFpMul_PE:
    dq m7_ippsGFpMul_PE
    dq n8_ippsGFpMul_PE
    dq y8_ippsGFpMul_PE
    dq e9_ippsGFpMul_PE
    dq l9_ippsGFpMul_PE
    dq n0_ippsGFpMul_PE
    dq k0_ippsGFpMul_PE

segment .text
global ippsGFpMul_PE:function (ippsGFpMul_PE.LEndippsGFpMul_PE - ippsGFpMul_PE)
.Lin_ippsGFpMul_PE:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpMul_PE:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpMul_PE]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpMul_PE:
