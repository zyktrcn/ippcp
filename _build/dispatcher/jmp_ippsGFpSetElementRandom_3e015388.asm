extern m7_ippsGFpSetElementRandom:function
extern n8_ippsGFpSetElementRandom:function
extern y8_ippsGFpSetElementRandom:function
extern e9_ippsGFpSetElementRandom:function
extern l9_ippsGFpSetElementRandom:function
extern n0_ippsGFpSetElementRandom:function
extern k0_ippsGFpSetElementRandom:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpSetElementRandom
.Larraddr_ippsGFpSetElementRandom:
    dq m7_ippsGFpSetElementRandom
    dq n8_ippsGFpSetElementRandom
    dq y8_ippsGFpSetElementRandom
    dq e9_ippsGFpSetElementRandom
    dq l9_ippsGFpSetElementRandom
    dq n0_ippsGFpSetElementRandom
    dq k0_ippsGFpSetElementRandom

segment .text
global ippsGFpSetElementRandom:function (ippsGFpSetElementRandom.LEndippsGFpSetElementRandom - ippsGFpSetElementRandom)
.Lin_ippsGFpSetElementRandom:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpSetElementRandom:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpSetElementRandom]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpSetElementRandom:
