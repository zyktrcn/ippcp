extern m7_ippsMD5Update:function
extern n8_ippsMD5Update:function
extern y8_ippsMD5Update:function
extern e9_ippsMD5Update:function
extern l9_ippsMD5Update:function
extern n0_ippsMD5Update:function
extern k0_ippsMD5Update:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsMD5Update
.Larraddr_ippsMD5Update:
    dq m7_ippsMD5Update
    dq n8_ippsMD5Update
    dq y8_ippsMD5Update
    dq e9_ippsMD5Update
    dq l9_ippsMD5Update
    dq n0_ippsMD5Update
    dq k0_ippsMD5Update

segment .text
global ippsMD5Update:function (ippsMD5Update.LEndippsMD5Update - ippsMD5Update)
.Lin_ippsMD5Update:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsMD5Update:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsMD5Update]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsMD5Update:
