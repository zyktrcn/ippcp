extern m7_ippsSM3GetSize:function
extern n8_ippsSM3GetSize:function
extern y8_ippsSM3GetSize:function
extern e9_ippsSM3GetSize:function
extern l9_ippsSM3GetSize:function
extern n0_ippsSM3GetSize:function
extern k0_ippsSM3GetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSM3GetSize
.Larraddr_ippsSM3GetSize:
    dq m7_ippsSM3GetSize
    dq n8_ippsSM3GetSize
    dq y8_ippsSM3GetSize
    dq e9_ippsSM3GetSize
    dq l9_ippsSM3GetSize
    dq n0_ippsSM3GetSize
    dq k0_ippsSM3GetSize

segment .text
global ippsSM3GetSize:function (ippsSM3GetSize.LEndippsSM3GetSize - ippsSM3GetSize)
.Lin_ippsSM3GetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSM3GetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSM3GetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSM3GetSize:
