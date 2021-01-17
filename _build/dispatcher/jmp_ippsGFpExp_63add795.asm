extern m7_ippsGFpExp:function
extern n8_ippsGFpExp:function
extern y8_ippsGFpExp:function
extern e9_ippsGFpExp:function
extern l9_ippsGFpExp:function
extern n0_ippsGFpExp:function
extern k0_ippsGFpExp:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpExp
.Larraddr_ippsGFpExp:
    dq m7_ippsGFpExp
    dq n8_ippsGFpExp
    dq y8_ippsGFpExp
    dq e9_ippsGFpExp
    dq l9_ippsGFpExp
    dq n0_ippsGFpExp
    dq k0_ippsGFpExp

segment .text
global ippsGFpExp:function (ippsGFpExp.LEndippsGFpExp - ippsGFpExp)
.Lin_ippsGFpExp:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpExp:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpExp]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpExp:
