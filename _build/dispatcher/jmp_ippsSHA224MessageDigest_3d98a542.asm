extern m7_ippsSHA224MessageDigest:function
extern n8_ippsSHA224MessageDigest:function
extern y8_ippsSHA224MessageDigest:function
extern e9_ippsSHA224MessageDigest:function
extern l9_ippsSHA224MessageDigest:function
extern n0_ippsSHA224MessageDigest:function
extern k0_ippsSHA224MessageDigest:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA224MessageDigest
.Larraddr_ippsSHA224MessageDigest:
    dq m7_ippsSHA224MessageDigest
    dq n8_ippsSHA224MessageDigest
    dq y8_ippsSHA224MessageDigest
    dq e9_ippsSHA224MessageDigest
    dq l9_ippsSHA224MessageDigest
    dq n0_ippsSHA224MessageDigest
    dq k0_ippsSHA224MessageDigest

segment .text
global ippsSHA224MessageDigest:function (ippsSHA224MessageDigest.LEndippsSHA224MessageDigest - ippsSHA224MessageDigest)
.Lin_ippsSHA224MessageDigest:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA224MessageDigest:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA224MessageDigest]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA224MessageDigest:
