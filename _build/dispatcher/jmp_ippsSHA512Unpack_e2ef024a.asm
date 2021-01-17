extern m7_ippsSHA512Unpack:function
extern n8_ippsSHA512Unpack:function
extern y8_ippsSHA512Unpack:function
extern e9_ippsSHA512Unpack:function
extern l9_ippsSHA512Unpack:function
extern n0_ippsSHA512Unpack:function
extern k0_ippsSHA512Unpack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA512Unpack
.Larraddr_ippsSHA512Unpack:
    dq m7_ippsSHA512Unpack
    dq n8_ippsSHA512Unpack
    dq y8_ippsSHA512Unpack
    dq e9_ippsSHA512Unpack
    dq l9_ippsSHA512Unpack
    dq n0_ippsSHA512Unpack
    dq k0_ippsSHA512Unpack

segment .text
global ippsSHA512Unpack:function (ippsSHA512Unpack.LEndippsSHA512Unpack - ippsSHA512Unpack)
.Lin_ippsSHA512Unpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA512Unpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA512Unpack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA512Unpack:
