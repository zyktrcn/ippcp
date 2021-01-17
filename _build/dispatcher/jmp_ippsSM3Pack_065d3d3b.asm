extern m7_ippsSM3Pack:function
extern n8_ippsSM3Pack:function
extern y8_ippsSM3Pack:function
extern e9_ippsSM3Pack:function
extern l9_ippsSM3Pack:function
extern n0_ippsSM3Pack:function
extern k0_ippsSM3Pack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSM3Pack
.Larraddr_ippsSM3Pack:
    dq m7_ippsSM3Pack
    dq n8_ippsSM3Pack
    dq y8_ippsSM3Pack
    dq e9_ippsSM3Pack
    dq l9_ippsSM3Pack
    dq n0_ippsSM3Pack
    dq k0_ippsSM3Pack

segment .text
global ippsSM3Pack:function (ippsSM3Pack.LEndippsSM3Pack - ippsSM3Pack)
.Lin_ippsSM3Pack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSM3Pack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSM3Pack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSM3Pack:
