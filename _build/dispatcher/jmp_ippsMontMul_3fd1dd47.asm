extern m7_ippsMontMul:function
extern n8_ippsMontMul:function
extern y8_ippsMontMul:function
extern e9_ippsMontMul:function
extern l9_ippsMontMul:function
extern n0_ippsMontMul:function
extern k0_ippsMontMul:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMontMul
.Larraddr_ippsMontMul:
    dq m7_ippsMontMul
    dq n8_ippsMontMul
    dq y8_ippsMontMul
    dq e9_ippsMontMul
    dq l9_ippsMontMul
    dq n0_ippsMontMul
    dq k0_ippsMontMul

segment .text
global ippsMontMul:function (ippsMontMul.LEndippsMontMul - ippsMontMul)
.Lin_ippsMontMul:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMontMul:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMontMul]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMontMul:
