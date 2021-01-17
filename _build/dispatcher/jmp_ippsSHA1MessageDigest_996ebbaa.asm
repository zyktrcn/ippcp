extern m7_ippsSHA1MessageDigest:function
extern n8_ippsSHA1MessageDigest:function
extern y8_ippsSHA1MessageDigest:function
extern e9_ippsSHA1MessageDigest:function
extern l9_ippsSHA1MessageDigest:function
extern n0_ippsSHA1MessageDigest:function
extern k0_ippsSHA1MessageDigest:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA1MessageDigest
.Larraddr_ippsSHA1MessageDigest:
    dq m7_ippsSHA1MessageDigest
    dq n8_ippsSHA1MessageDigest
    dq y8_ippsSHA1MessageDigest
    dq e9_ippsSHA1MessageDigest
    dq l9_ippsSHA1MessageDigest
    dq n0_ippsSHA1MessageDigest
    dq k0_ippsSHA1MessageDigest

segment .text
global ippsSHA1MessageDigest:function (ippsSHA1MessageDigest.LEndippsSHA1MessageDigest - ippsSHA1MessageDigest)
.Lin_ippsSHA1MessageDigest:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA1MessageDigest:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA1MessageDigest]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA1MessageDigest:
