extern m7_ippsMD5GetSize:function
extern n8_ippsMD5GetSize:function
extern y8_ippsMD5GetSize:function
extern e9_ippsMD5GetSize:function
extern l9_ippsMD5GetSize:function
extern n0_ippsMD5GetSize:function
extern k0_ippsMD5GetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMD5GetSize
.Larraddr_ippsMD5GetSize:
    dq m7_ippsMD5GetSize
    dq n8_ippsMD5GetSize
    dq y8_ippsMD5GetSize
    dq e9_ippsMD5GetSize
    dq l9_ippsMD5GetSize
    dq n0_ippsMD5GetSize
    dq k0_ippsMD5GetSize

segment .text
global ippsMD5GetSize:function (ippsMD5GetSize.LEndippsMD5GetSize - ippsMD5GetSize)
.Lin_ippsMD5GetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMD5GetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMD5GetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMD5GetSize:
