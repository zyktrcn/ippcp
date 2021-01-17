extern m7_ippsGFpxMethod_binom2:function
extern n8_ippsGFpxMethod_binom2:function
extern y8_ippsGFpxMethod_binom2:function
extern e9_ippsGFpxMethod_binom2:function
extern l9_ippsGFpxMethod_binom2:function
extern n0_ippsGFpxMethod_binom2:function
extern k0_ippsGFpxMethod_binom2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpxMethod_binom2
.Larraddr_ippsGFpxMethod_binom2:
    dq m7_ippsGFpxMethod_binom2
    dq n8_ippsGFpxMethod_binom2
    dq y8_ippsGFpxMethod_binom2
    dq e9_ippsGFpxMethod_binom2
    dq l9_ippsGFpxMethod_binom2
    dq n0_ippsGFpxMethod_binom2
    dq k0_ippsGFpxMethod_binom2

segment .text
global ippsGFpxMethod_binom2:function (ippsGFpxMethod_binom2.LEndippsGFpxMethod_binom2 - ippsGFpxMethod_binom2)
.Lin_ippsGFpxMethod_binom2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpxMethod_binom2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpxMethod_binom2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpxMethod_binom2:
