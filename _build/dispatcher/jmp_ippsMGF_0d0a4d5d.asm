extern m7_ippsMGF:function
extern n8_ippsMGF:function
extern y8_ippsMGF:function
extern e9_ippsMGF:function
extern l9_ippsMGF:function
extern n0_ippsMGF:function
extern k0_ippsMGF:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMGF
.Larraddr_ippsMGF:
    dq m7_ippsMGF
    dq n8_ippsMGF
    dq y8_ippsMGF
    dq e9_ippsMGF
    dq l9_ippsMGF
    dq n0_ippsMGF
    dq k0_ippsMGF

segment .text
global ippsMGF:function (ippsMGF.LEndippsMGF - ippsMGF)
.Lin_ippsMGF:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMGF:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMGF]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMGF:
