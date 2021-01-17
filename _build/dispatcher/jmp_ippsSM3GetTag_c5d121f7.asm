extern m7_ippsSM3GetTag:function
extern n8_ippsSM3GetTag:function
extern y8_ippsSM3GetTag:function
extern e9_ippsSM3GetTag:function
extern l9_ippsSM3GetTag:function
extern n0_ippsSM3GetTag:function
extern k0_ippsSM3GetTag:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSM3GetTag
.Larraddr_ippsSM3GetTag:
    dq m7_ippsSM3GetTag
    dq n8_ippsSM3GetTag
    dq y8_ippsSM3GetTag
    dq e9_ippsSM3GetTag
    dq l9_ippsSM3GetTag
    dq n0_ippsSM3GetTag
    dq k0_ippsSM3GetTag

segment .text
global ippsSM3GetTag:function (ippsSM3GetTag.LEndippsSM3GetTag - ippsSM3GetTag)
.Lin_ippsSM3GetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSM3GetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSM3GetTag]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSM3GetTag:
