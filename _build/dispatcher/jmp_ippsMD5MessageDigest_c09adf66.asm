extern m7_ippsMD5MessageDigest:function
extern n8_ippsMD5MessageDigest:function
extern y8_ippsMD5MessageDigest:function
extern e9_ippsMD5MessageDigest:function
extern l9_ippsMD5MessageDigest:function
extern n0_ippsMD5MessageDigest:function
extern k0_ippsMD5MessageDigest:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMD5MessageDigest
.Larraddr_ippsMD5MessageDigest:
    dq m7_ippsMD5MessageDigest
    dq n8_ippsMD5MessageDigest
    dq y8_ippsMD5MessageDigest
    dq e9_ippsMD5MessageDigest
    dq l9_ippsMD5MessageDigest
    dq n0_ippsMD5MessageDigest
    dq k0_ippsMD5MessageDigest

segment .text
global ippsMD5MessageDigest:function (ippsMD5MessageDigest.LEndippsMD5MessageDigest - ippsMD5MessageDigest)
.Lin_ippsMD5MessageDigest:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMD5MessageDigest:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMD5MessageDigest]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMD5MessageDigest:
