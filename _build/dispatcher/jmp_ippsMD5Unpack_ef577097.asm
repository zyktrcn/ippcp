extern m7_ippsMD5Unpack:function
extern n8_ippsMD5Unpack:function
extern y8_ippsMD5Unpack:function
extern e9_ippsMD5Unpack:function
extern l9_ippsMD5Unpack:function
extern n0_ippsMD5Unpack:function
extern k0_ippsMD5Unpack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMD5Unpack
.Larraddr_ippsMD5Unpack:
    dq m7_ippsMD5Unpack
    dq n8_ippsMD5Unpack
    dq y8_ippsMD5Unpack
    dq e9_ippsMD5Unpack
    dq l9_ippsMD5Unpack
    dq n0_ippsMD5Unpack
    dq k0_ippsMD5Unpack

segment .text
global ippsMD5Unpack:function (ippsMD5Unpack.LEndippsMD5Unpack - ippsMD5Unpack)
.Lin_ippsMD5Unpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMD5Unpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMD5Unpack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMD5Unpack:
