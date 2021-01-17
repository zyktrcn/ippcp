extern m7_ippsSHA384MessageDigest:function
extern n8_ippsSHA384MessageDigest:function
extern y8_ippsSHA384MessageDigest:function
extern e9_ippsSHA384MessageDigest:function
extern l9_ippsSHA384MessageDigest:function
extern n0_ippsSHA384MessageDigest:function
extern k0_ippsSHA384MessageDigest:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA384MessageDigest
.Larraddr_ippsSHA384MessageDigest:
    dq m7_ippsSHA384MessageDigest
    dq n8_ippsSHA384MessageDigest
    dq y8_ippsSHA384MessageDigest
    dq e9_ippsSHA384MessageDigest
    dq l9_ippsSHA384MessageDigest
    dq n0_ippsSHA384MessageDigest
    dq k0_ippsSHA384MessageDigest

segment .text
global ippsSHA384MessageDigest:function (ippsSHA384MessageDigest.LEndippsSHA384MessageDigest - ippsSHA384MessageDigest)
.Lin_ippsSHA384MessageDigest:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA384MessageDigest:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA384MessageDigest]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA384MessageDigest: