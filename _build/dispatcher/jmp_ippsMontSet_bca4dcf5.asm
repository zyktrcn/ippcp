extern m7_ippsMontSet:function
extern n8_ippsMontSet:function
extern y8_ippsMontSet:function
extern e9_ippsMontSet:function
extern l9_ippsMontSet:function
extern n0_ippsMontSet:function
extern k0_ippsMontSet:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMontSet
.Larraddr_ippsMontSet:
    dq m7_ippsMontSet
    dq n8_ippsMontSet
    dq y8_ippsMontSet
    dq e9_ippsMontSet
    dq l9_ippsMontSet
    dq n0_ippsMontSet
    dq k0_ippsMontSet

segment .text
global ippsMontSet:function (ippsMontSet.LEndippsMontSet - ippsMontSet)
.Lin_ippsMontSet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMontSet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMontSet]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMontSet:
