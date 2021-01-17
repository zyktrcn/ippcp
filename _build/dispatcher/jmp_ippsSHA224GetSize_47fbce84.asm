extern m7_ippsSHA224GetSize:function
extern n8_ippsSHA224GetSize:function
extern y8_ippsSHA224GetSize:function
extern e9_ippsSHA224GetSize:function
extern l9_ippsSHA224GetSize:function
extern n0_ippsSHA224GetSize:function
extern k0_ippsSHA224GetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA224GetSize
.Larraddr_ippsSHA224GetSize:
    dq m7_ippsSHA224GetSize
    dq n8_ippsSHA224GetSize
    dq y8_ippsSHA224GetSize
    dq e9_ippsSHA224GetSize
    dq l9_ippsSHA224GetSize
    dq n0_ippsSHA224GetSize
    dq k0_ippsSHA224GetSize

segment .text
global ippsSHA224GetSize:function (ippsSHA224GetSize.LEndippsSHA224GetSize - ippsSHA224GetSize)
.Lin_ippsSHA224GetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA224GetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA224GetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA224GetSize:
