extern m7_ippsGFpElementInit:function
extern n8_ippsGFpElementInit:function
extern y8_ippsGFpElementInit:function
extern e9_ippsGFpElementInit:function
extern l9_ippsGFpElementInit:function
extern n0_ippsGFpElementInit:function
extern k0_ippsGFpElementInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsGFpElementInit
.Larraddr_ippsGFpElementInit:
    dq m7_ippsGFpElementInit
    dq n8_ippsGFpElementInit
    dq y8_ippsGFpElementInit
    dq e9_ippsGFpElementInit
    dq l9_ippsGFpElementInit
    dq n0_ippsGFpElementInit
    dq k0_ippsGFpElementInit

segment .text
global ippsGFpElementInit:function (ippsGFpElementInit.LEndippsGFpElementInit - ippsGFpElementInit)
.Lin_ippsGFpElementInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsGFpElementInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsGFpElementInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsGFpElementInit:
