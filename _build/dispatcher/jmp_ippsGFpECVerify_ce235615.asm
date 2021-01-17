extern m7_ippsGFpECVerify:function
extern n8_ippsGFpECVerify:function
extern y8_ippsGFpECVerify:function
extern e9_ippsGFpECVerify:function
extern l9_ippsGFpECVerify:function
extern n0_ippsGFpECVerify:function
extern k0_ippsGFpECVerify:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECVerify
.Larraddr_ippsGFpECVerify:
    dq m7_ippsGFpECVerify
    dq n8_ippsGFpECVerify
    dq y8_ippsGFpECVerify
    dq e9_ippsGFpECVerify
    dq l9_ippsGFpECVerify
    dq n0_ippsGFpECVerify
    dq k0_ippsGFpECVerify

segment .text
global ippsGFpECVerify:function (ippsGFpECVerify.LEndippsGFpECVerify - ippsGFpECVerify)
.Lin_ippsGFpECVerify:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECVerify:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECVerify]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECVerify:
