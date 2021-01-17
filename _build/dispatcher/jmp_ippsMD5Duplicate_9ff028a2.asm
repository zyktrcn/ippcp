extern m7_ippsMD5Duplicate:function
extern n8_ippsMD5Duplicate:function
extern y8_ippsMD5Duplicate:function
extern e9_ippsMD5Duplicate:function
extern l9_ippsMD5Duplicate:function
extern n0_ippsMD5Duplicate:function
extern k0_ippsMD5Duplicate:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMD5Duplicate
.Larraddr_ippsMD5Duplicate:
    dq m7_ippsMD5Duplicate
    dq n8_ippsMD5Duplicate
    dq y8_ippsMD5Duplicate
    dq e9_ippsMD5Duplicate
    dq l9_ippsMD5Duplicate
    dq n0_ippsMD5Duplicate
    dq k0_ippsMD5Duplicate

segment .text
global ippsMD5Duplicate:function (ippsMD5Duplicate.LEndippsMD5Duplicate - ippsMD5Duplicate)
.Lin_ippsMD5Duplicate:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMD5Duplicate:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMD5Duplicate]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMD5Duplicate:
