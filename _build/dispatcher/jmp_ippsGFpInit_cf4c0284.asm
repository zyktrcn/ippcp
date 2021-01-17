extern m7_ippsGFpInit:function
extern n8_ippsGFpInit:function
extern y8_ippsGFpInit:function
extern e9_ippsGFpInit:function
extern l9_ippsGFpInit:function
extern n0_ippsGFpInit:function
extern k0_ippsGFpInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpInit
.Larraddr_ippsGFpInit:
    dq m7_ippsGFpInit
    dq n8_ippsGFpInit
    dq y8_ippsGFpInit
    dq e9_ippsGFpInit
    dq l9_ippsGFpInit
    dq n0_ippsGFpInit
    dq k0_ippsGFpInit

segment .text
global ippsGFpInit:function (ippsGFpInit.LEndippsGFpInit - ippsGFpInit)
.Lin_ippsGFpInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpInit:
