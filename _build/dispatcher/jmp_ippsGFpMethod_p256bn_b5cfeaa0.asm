extern m7_ippsGFpMethod_p256bn:function
extern n8_ippsGFpMethod_p256bn:function
extern y8_ippsGFpMethod_p256bn:function
extern e9_ippsGFpMethod_p256bn:function
extern l9_ippsGFpMethod_p256bn:function
extern n0_ippsGFpMethod_p256bn:function
extern k0_ippsGFpMethod_p256bn:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpMethod_p256bn
.Larraddr_ippsGFpMethod_p256bn:
    dq m7_ippsGFpMethod_p256bn
    dq n8_ippsGFpMethod_p256bn
    dq y8_ippsGFpMethod_p256bn
    dq e9_ippsGFpMethod_p256bn
    dq l9_ippsGFpMethod_p256bn
    dq n0_ippsGFpMethod_p256bn
    dq k0_ippsGFpMethod_p256bn

segment .text
global ippsGFpMethod_p256bn:function (ippsGFpMethod_p256bn.LEndippsGFpMethod_p256bn - ippsGFpMethod_p256bn)
.Lin_ippsGFpMethod_p256bn:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpMethod_p256bn:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpMethod_p256bn]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpMethod_p256bn:
