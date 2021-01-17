extern m7_ippsMontGetSize:function
extern n8_ippsMontGetSize:function
extern y8_ippsMontGetSize:function
extern e9_ippsMontGetSize:function
extern l9_ippsMontGetSize:function
extern n0_ippsMontGetSize:function
extern k0_ippsMontGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMontGetSize
.Larraddr_ippsMontGetSize:
    dq m7_ippsMontGetSize
    dq n8_ippsMontGetSize
    dq y8_ippsMontGetSize
    dq e9_ippsMontGetSize
    dq l9_ippsMontGetSize
    dq n0_ippsMontGetSize
    dq k0_ippsMontGetSize

segment .text
global ippsMontGetSize:function (ippsMontGetSize.LEndippsMontGetSize - ippsMontGetSize)
.Lin_ippsMontGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMontGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMontGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMontGetSize:
