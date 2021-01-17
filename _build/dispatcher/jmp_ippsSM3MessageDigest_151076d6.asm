extern m7_ippsSM3MessageDigest:function
extern n8_ippsSM3MessageDigest:function
extern y8_ippsSM3MessageDigest:function
extern e9_ippsSM3MessageDigest:function
extern l9_ippsSM3MessageDigest:function
extern n0_ippsSM3MessageDigest:function
extern k0_ippsSM3MessageDigest:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSM3MessageDigest
.Larraddr_ippsSM3MessageDigest:
    dq m7_ippsSM3MessageDigest
    dq n8_ippsSM3MessageDigest
    dq y8_ippsSM3MessageDigest
    dq e9_ippsSM3MessageDigest
    dq l9_ippsSM3MessageDigest
    dq n0_ippsSM3MessageDigest
    dq k0_ippsSM3MessageDigest

segment .text
global ippsSM3MessageDigest:function (ippsSM3MessageDigest.LEndippsSM3MessageDigest - ippsSM3MessageDigest)
.Lin_ippsSM3MessageDigest:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSM3MessageDigest:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSM3MessageDigest]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSM3MessageDigest:
