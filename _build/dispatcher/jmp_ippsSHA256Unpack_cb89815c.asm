extern m7_ippsSHA256Unpack:function
extern n8_ippsSHA256Unpack:function
extern y8_ippsSHA256Unpack:function
extern e9_ippsSHA256Unpack:function
extern l9_ippsSHA256Unpack:function
extern n0_ippsSHA256Unpack:function
extern k0_ippsSHA256Unpack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA256Unpack
.Larraddr_ippsSHA256Unpack:
    dq m7_ippsSHA256Unpack
    dq n8_ippsSHA256Unpack
    dq y8_ippsSHA256Unpack
    dq e9_ippsSHA256Unpack
    dq l9_ippsSHA256Unpack
    dq n0_ippsSHA256Unpack
    dq k0_ippsSHA256Unpack

segment .text
global ippsSHA256Unpack:function (ippsSHA256Unpack.LEndippsSHA256Unpack - ippsSHA256Unpack)
.Lin_ippsSHA256Unpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA256Unpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA256Unpack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA256Unpack:
