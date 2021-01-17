extern m7_ippsMD5Init:function
extern n8_ippsMD5Init:function
extern y8_ippsMD5Init:function
extern e9_ippsMD5Init:function
extern l9_ippsMD5Init:function
extern n0_ippsMD5Init:function
extern k0_ippsMD5Init:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMD5Init
.Larraddr_ippsMD5Init:
    dq m7_ippsMD5Init
    dq n8_ippsMD5Init
    dq y8_ippsMD5Init
    dq e9_ippsMD5Init
    dq l9_ippsMD5Init
    dq n0_ippsMD5Init
    dq k0_ippsMD5Init

segment .text
global ippsMD5Init:function (ippsMD5Init.LEndippsMD5Init - ippsMD5Init)
.Lin_ippsMD5Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMD5Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMD5Init]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMD5Init:
