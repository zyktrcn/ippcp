extern m7_ippsGFpMethod_p256:function
extern n8_ippsGFpMethod_p256:function
extern y8_ippsGFpMethod_p256:function
extern e9_ippsGFpMethod_p256:function
extern l9_ippsGFpMethod_p256:function
extern n0_ippsGFpMethod_p256:function
extern k0_ippsGFpMethod_p256:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpMethod_p256
.Larraddr_ippsGFpMethod_p256:
    dq m7_ippsGFpMethod_p256
    dq n8_ippsGFpMethod_p256
    dq y8_ippsGFpMethod_p256
    dq e9_ippsGFpMethod_p256
    dq l9_ippsGFpMethod_p256
    dq n0_ippsGFpMethod_p256
    dq k0_ippsGFpMethod_p256

segment .text
global ippsGFpMethod_p256:function (ippsGFpMethod_p256.LEndippsGFpMethod_p256 - ippsGFpMethod_p256)
.Lin_ippsGFpMethod_p256:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpMethod_p256:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpMethod_p256]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpMethod_p256:
