extern m7_ippsSHA384Unpack:function
extern n8_ippsSHA384Unpack:function
extern y8_ippsSHA384Unpack:function
extern e9_ippsSHA384Unpack:function
extern l9_ippsSHA384Unpack:function
extern n0_ippsSHA384Unpack:function
extern k0_ippsSHA384Unpack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA384Unpack
.Larraddr_ippsSHA384Unpack:
    dq m7_ippsSHA384Unpack
    dq n8_ippsSHA384Unpack
    dq y8_ippsSHA384Unpack
    dq e9_ippsSHA384Unpack
    dq l9_ippsSHA384Unpack
    dq n0_ippsSHA384Unpack
    dq k0_ippsSHA384Unpack

segment .text
global ippsSHA384Unpack:function (ippsSHA384Unpack.LEndippsSHA384Unpack - ippsSHA384Unpack)
.Lin_ippsSHA384Unpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA384Unpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA384Unpack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA384Unpack:
