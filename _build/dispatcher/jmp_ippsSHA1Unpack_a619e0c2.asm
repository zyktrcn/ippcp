extern m7_ippsSHA1Unpack:function
extern n8_ippsSHA1Unpack:function
extern y8_ippsSHA1Unpack:function
extern e9_ippsSHA1Unpack:function
extern l9_ippsSHA1Unpack:function
extern n0_ippsSHA1Unpack:function
extern k0_ippsSHA1Unpack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA1Unpack
.Larraddr_ippsSHA1Unpack:
    dq m7_ippsSHA1Unpack
    dq n8_ippsSHA1Unpack
    dq y8_ippsSHA1Unpack
    dq e9_ippsSHA1Unpack
    dq l9_ippsSHA1Unpack
    dq n0_ippsSHA1Unpack
    dq k0_ippsSHA1Unpack

segment .text
global ippsSHA1Unpack:function (ippsSHA1Unpack.LEndippsSHA1Unpack - ippsSHA1Unpack)
.Lin_ippsSHA1Unpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA1Unpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA1Unpack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA1Unpack:
