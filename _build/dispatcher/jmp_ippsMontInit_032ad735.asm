extern m7_ippsMontInit:function
extern n8_ippsMontInit:function
extern y8_ippsMontInit:function
extern e9_ippsMontInit:function
extern l9_ippsMontInit:function
extern n0_ippsMontInit:function
extern k0_ippsMontInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMontInit
.Larraddr_ippsMontInit:
    dq m7_ippsMontInit
    dq n8_ippsMontInit
    dq y8_ippsMontInit
    dq e9_ippsMontInit
    dq l9_ippsMontInit
    dq n0_ippsMontInit
    dq k0_ippsMontInit

segment .text
global ippsMontInit:function (ippsMontInit.LEndippsMontInit - ippsMontInit)
.Lin_ippsMontInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMontInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMontInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMontInit:
