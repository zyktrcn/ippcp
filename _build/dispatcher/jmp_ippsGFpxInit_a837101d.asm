extern m7_ippsGFpxInit:function
extern n8_ippsGFpxInit:function
extern y8_ippsGFpxInit:function
extern e9_ippsGFpxInit:function
extern l9_ippsGFpxInit:function
extern n0_ippsGFpxInit:function
extern k0_ippsGFpxInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpxInit
.Larraddr_ippsGFpxInit:
    dq m7_ippsGFpxInit
    dq n8_ippsGFpxInit
    dq y8_ippsGFpxInit
    dq e9_ippsGFpxInit
    dq l9_ippsGFpxInit
    dq n0_ippsGFpxInit
    dq k0_ippsGFpxInit

segment .text
global ippsGFpxInit:function (ippsGFpxInit.LEndippsGFpxInit - ippsGFpxInit)
.Lin_ippsGFpxInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpxInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpxInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpxInit:
