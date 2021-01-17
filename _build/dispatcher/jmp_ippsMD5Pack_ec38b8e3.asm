extern m7_ippsMD5Pack:function
extern n8_ippsMD5Pack:function
extern y8_ippsMD5Pack:function
extern e9_ippsMD5Pack:function
extern l9_ippsMD5Pack:function
extern n0_ippsMD5Pack:function
extern k0_ippsMD5Pack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMD5Pack
.Larraddr_ippsMD5Pack:
    dq m7_ippsMD5Pack
    dq n8_ippsMD5Pack
    dq y8_ippsMD5Pack
    dq e9_ippsMD5Pack
    dq l9_ippsMD5Pack
    dq n0_ippsMD5Pack
    dq k0_ippsMD5Pack

segment .text
global ippsMD5Pack:function (ippsMD5Pack.LEndippsMD5Pack - ippsMD5Pack)
.Lin_ippsMD5Pack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMD5Pack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMD5Pack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMD5Pack:
