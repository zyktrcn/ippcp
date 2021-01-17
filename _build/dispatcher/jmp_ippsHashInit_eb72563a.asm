extern m7_ippsHashInit:function
extern n8_ippsHashInit:function
extern y8_ippsHashInit:function
extern e9_ippsHashInit:function
extern l9_ippsHashInit:function
extern n0_ippsHashInit:function
extern k0_ippsHashInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsHashInit
.Larraddr_ippsHashInit:
    dq m7_ippsHashInit
    dq n8_ippsHashInit
    dq y8_ippsHashInit
    dq e9_ippsHashInit
    dq l9_ippsHashInit
    dq n0_ippsHashInit
    dq k0_ippsHashInit

segment .text
global ippsHashInit:function (ippsHashInit.LEndippsHashInit - ippsHashInit)
.Lin_ippsHashInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsHashInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsHashInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsHashInit:
