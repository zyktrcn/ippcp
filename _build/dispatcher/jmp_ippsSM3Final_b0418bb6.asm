extern m7_ippsSM3Final:function
extern n8_ippsSM3Final:function
extern y8_ippsSM3Final:function
extern e9_ippsSM3Final:function
extern l9_ippsSM3Final:function
extern n0_ippsSM3Final:function
extern k0_ippsSM3Final:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSM3Final
.Larraddr_ippsSM3Final:
    dq m7_ippsSM3Final
    dq n8_ippsSM3Final
    dq y8_ippsSM3Final
    dq e9_ippsSM3Final
    dq l9_ippsSM3Final
    dq n0_ippsSM3Final
    dq k0_ippsSM3Final

segment .text
global ippsSM3Final:function (ippsSM3Final.LEndippsSM3Final - ippsSM3Final)
.Lin_ippsSM3Final:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSM3Final:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSM3Final]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSM3Final:
