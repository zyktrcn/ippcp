extern m7_ippsMGF2_rmf:function
extern n8_ippsMGF2_rmf:function
extern y8_ippsMGF2_rmf:function
extern e9_ippsMGF2_rmf:function
extern l9_ippsMGF2_rmf:function
extern n0_ippsMGF2_rmf:function
extern k0_ippsMGF2_rmf:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMGF2_rmf
.Larraddr_ippsMGF2_rmf:
    dq m7_ippsMGF2_rmf
    dq n8_ippsMGF2_rmf
    dq y8_ippsMGF2_rmf
    dq e9_ippsMGF2_rmf
    dq l9_ippsMGF2_rmf
    dq n0_ippsMGF2_rmf
    dq k0_ippsMGF2_rmf

segment .text
global ippsMGF2_rmf:function (ippsMGF2_rmf.LEndippsMGF2_rmf - ippsMGF2_rmf)
.Lin_ippsMGF2_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMGF2_rmf:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMGF2_rmf]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMGF2_rmf:
