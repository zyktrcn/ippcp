extern m7_ippsSHA512MessageDigest:function
extern n8_ippsSHA512MessageDigest:function
extern y8_ippsSHA512MessageDigest:function
extern e9_ippsSHA512MessageDigest:function
extern l9_ippsSHA512MessageDigest:function
extern n0_ippsSHA512MessageDigest:function
extern k0_ippsSHA512MessageDigest:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA512MessageDigest
.Larraddr_ippsSHA512MessageDigest:
    dq m7_ippsSHA512MessageDigest
    dq n8_ippsSHA512MessageDigest
    dq y8_ippsSHA512MessageDigest
    dq e9_ippsSHA512MessageDigest
    dq l9_ippsSHA512MessageDigest
    dq n0_ippsSHA512MessageDigest
    dq k0_ippsSHA512MessageDigest

segment .text
global ippsSHA512MessageDigest:function (ippsSHA512MessageDigest.LEndippsSHA512MessageDigest - ippsSHA512MessageDigest)
.Lin_ippsSHA512MessageDigest:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA512MessageDigest:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA512MessageDigest]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA512MessageDigest:
