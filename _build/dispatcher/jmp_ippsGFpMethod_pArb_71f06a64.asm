extern m7_ippsGFpMethod_pArb:function
extern n8_ippsGFpMethod_pArb:function
extern y8_ippsGFpMethod_pArb:function
extern e9_ippsGFpMethod_pArb:function
extern l9_ippsGFpMethod_pArb:function
extern n0_ippsGFpMethod_pArb:function
extern k0_ippsGFpMethod_pArb:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpMethod_pArb
.Larraddr_ippsGFpMethod_pArb:
    dq m7_ippsGFpMethod_pArb
    dq n8_ippsGFpMethod_pArb
    dq y8_ippsGFpMethod_pArb
    dq e9_ippsGFpMethod_pArb
    dq l9_ippsGFpMethod_pArb
    dq n0_ippsGFpMethod_pArb
    dq k0_ippsGFpMethod_pArb

segment .text
global ippsGFpMethod_pArb:function (ippsGFpMethod_pArb.LEndippsGFpMethod_pArb - ippsGFpMethod_pArb)
.Lin_ippsGFpMethod_pArb:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpMethod_pArb:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpMethod_pArb]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpMethod_pArb:
