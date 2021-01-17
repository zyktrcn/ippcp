extern m7_ippsGFpSqrt:function
extern n8_ippsGFpSqrt:function
extern y8_ippsGFpSqrt:function
extern e9_ippsGFpSqrt:function
extern l9_ippsGFpSqrt:function
extern n0_ippsGFpSqrt:function
extern k0_ippsGFpSqrt:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpSqrt
.Larraddr_ippsGFpSqrt:
    dq m7_ippsGFpSqrt
    dq n8_ippsGFpSqrt
    dq y8_ippsGFpSqrt
    dq e9_ippsGFpSqrt
    dq l9_ippsGFpSqrt
    dq n0_ippsGFpSqrt
    dq k0_ippsGFpSqrt

segment .text
global ippsGFpSqrt:function (ippsGFpSqrt.LEndippsGFpSqrt - ippsGFpSqrt)
.Lin_ippsGFpSqrt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpSqrt:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpSqrt]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpSqrt:
