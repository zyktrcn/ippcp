extern m7_ippsSHA512GetTag:function
extern n8_ippsSHA512GetTag:function
extern y8_ippsSHA512GetTag:function
extern e9_ippsSHA512GetTag:function
extern l9_ippsSHA512GetTag:function
extern n0_ippsSHA512GetTag:function
extern k0_ippsSHA512GetTag:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA512GetTag
.Larraddr_ippsSHA512GetTag:
    dq m7_ippsSHA512GetTag
    dq n8_ippsSHA512GetTag
    dq y8_ippsSHA512GetTag
    dq e9_ippsSHA512GetTag
    dq l9_ippsSHA512GetTag
    dq n0_ippsSHA512GetTag
    dq k0_ippsSHA512GetTag

segment .text
global ippsSHA512GetTag:function (ippsSHA512GetTag.LEndippsSHA512GetTag - ippsSHA512GetTag)
.Lin_ippsSHA512GetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA512GetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA512GetTag]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA512GetTag:
