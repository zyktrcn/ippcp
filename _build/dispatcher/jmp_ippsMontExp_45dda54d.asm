extern m7_ippsMontExp:function
extern n8_ippsMontExp:function
extern y8_ippsMontExp:function
extern e9_ippsMontExp:function
extern l9_ippsMontExp:function
extern n0_ippsMontExp:function
extern k0_ippsMontExp:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMontExp
.Larraddr_ippsMontExp:
    dq m7_ippsMontExp
    dq n8_ippsMontExp
    dq y8_ippsMontExp
    dq e9_ippsMontExp
    dq l9_ippsMontExp
    dq n0_ippsMontExp
    dq k0_ippsMontExp

segment .text
global ippsMontExp:function (ippsMontExp.LEndippsMontExp - ippsMontExp)
.Lin_ippsMontExp:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMontExp:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMontExp]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMontExp:
