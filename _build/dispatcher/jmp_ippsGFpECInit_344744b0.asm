extern m7_ippsGFpECInit:function
extern n8_ippsGFpECInit:function
extern y8_ippsGFpECInit:function
extern e9_ippsGFpECInit:function
extern l9_ippsGFpECInit:function
extern n0_ippsGFpECInit:function
extern k0_ippsGFpECInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECInit
.Larraddr_ippsGFpECInit:
    dq m7_ippsGFpECInit
    dq n8_ippsGFpECInit
    dq y8_ippsGFpECInit
    dq e9_ippsGFpECInit
    dq l9_ippsGFpECInit
    dq n0_ippsGFpECInit
    dq k0_ippsGFpECInit

segment .text
global ippsGFpECInit:function (ippsGFpECInit.LEndippsGFpECInit - ippsGFpECInit)
.Lin_ippsGFpECInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECInit:
