extern m7_ippsGFpECSignSM2:function
extern n8_ippsGFpECSignSM2:function
extern y8_ippsGFpECSignSM2:function
extern e9_ippsGFpECSignSM2:function
extern l9_ippsGFpECSignSM2:function
extern n0_ippsGFpECSignSM2:function
extern k0_ippsGFpECSignSM2:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECSignSM2
.Larraddr_ippsGFpECSignSM2:
    dq m7_ippsGFpECSignSM2
    dq n8_ippsGFpECSignSM2
    dq y8_ippsGFpECSignSM2
    dq e9_ippsGFpECSignSM2
    dq l9_ippsGFpECSignSM2
    dq n0_ippsGFpECSignSM2
    dq k0_ippsGFpECSignSM2

segment .text
global ippsGFpECSignSM2:function (ippsGFpECSignSM2.LEndippsGFpECSignSM2 - ippsGFpECSignSM2)
.Lin_ippsGFpECSignSM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECSignSM2:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECSignSM2]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECSignSM2:
