extern m7_ippsBigNumInit:function
extern n8_ippsBigNumInit:function
extern y8_ippsBigNumInit:function
extern e9_ippsBigNumInit:function
extern l9_ippsBigNumInit:function
extern n0_ippsBigNumInit:function
extern k0_ippsBigNumInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsBigNumInit
.Larraddr_ippsBigNumInit:
    dq m7_ippsBigNumInit
    dq n8_ippsBigNumInit
    dq y8_ippsBigNumInit
    dq e9_ippsBigNumInit
    dq l9_ippsBigNumInit
    dq n0_ippsBigNumInit
    dq k0_ippsBigNumInit

segment .text
global ippsBigNumInit:function (ippsBigNumInit.LEndippsBigNumInit - ippsBigNumInit)
.Lin_ippsBigNumInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsBigNumInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsBigNumInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsBigNumInit:
