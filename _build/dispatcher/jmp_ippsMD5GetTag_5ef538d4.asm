extern m7_ippsMD5GetTag:function
extern n8_ippsMD5GetTag:function
extern y8_ippsMD5GetTag:function
extern e9_ippsMD5GetTag:function
extern l9_ippsMD5GetTag:function
extern n0_ippsMD5GetTag:function
extern k0_ippsMD5GetTag:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMD5GetTag
.Larraddr_ippsMD5GetTag:
    dq m7_ippsMD5GetTag
    dq n8_ippsMD5GetTag
    dq y8_ippsMD5GetTag
    dq e9_ippsMD5GetTag
    dq l9_ippsMD5GetTag
    dq n0_ippsMD5GetTag
    dq k0_ippsMD5GetTag

segment .text
global ippsMD5GetTag:function (ippsMD5GetTag.LEndippsMD5GetTag - ippsMD5GetTag)
.Lin_ippsMD5GetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMD5GetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMD5GetTag]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMD5GetTag:
