extern m7_ippsSMS4GetSize:function
extern n8_ippsSMS4GetSize:function
extern y8_ippsSMS4GetSize:function
extern e9_ippsSMS4GetSize:function
extern l9_ippsSMS4GetSize:function
extern n0_ippsSMS4GetSize:function
extern k0_ippsSMS4GetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4GetSize
.Larraddr_ippsSMS4GetSize:
    dq m7_ippsSMS4GetSize
    dq n8_ippsSMS4GetSize
    dq y8_ippsSMS4GetSize
    dq e9_ippsSMS4GetSize
    dq l9_ippsSMS4GetSize
    dq n0_ippsSMS4GetSize
    dq k0_ippsSMS4GetSize

segment .text
global ippsSMS4GetSize:function (ippsSMS4GetSize.LEndippsSMS4GetSize - ippsSMS4GetSize)
.Lin_ippsSMS4GetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4GetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4GetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4GetSize:
