extern m7_ippsGFpECSetPointRandom:function
extern n8_ippsGFpECSetPointRandom:function
extern y8_ippsGFpECSetPointRandom:function
extern e9_ippsGFpECSetPointRandom:function
extern l9_ippsGFpECSetPointRandom:function
extern n0_ippsGFpECSetPointRandom:function
extern k0_ippsGFpECSetPointRandom:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpECSetPointRandom
.Larraddr_ippsGFpECSetPointRandom:
    dq m7_ippsGFpECSetPointRandom
    dq n8_ippsGFpECSetPointRandom
    dq y8_ippsGFpECSetPointRandom
    dq e9_ippsGFpECSetPointRandom
    dq l9_ippsGFpECSetPointRandom
    dq n0_ippsGFpECSetPointRandom
    dq k0_ippsGFpECSetPointRandom

segment .text
global ippsGFpECSetPointRandom:function (ippsGFpECSetPointRandom.LEndippsGFpECSetPointRandom - ippsGFpECSetPointRandom)
.Lin_ippsGFpECSetPointRandom:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpECSetPointRandom:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpECSetPointRandom]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpECSetPointRandom:
