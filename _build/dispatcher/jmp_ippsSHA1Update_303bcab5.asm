extern m7_ippsSHA1Update:function
extern n8_ippsSHA1Update:function
extern y8_ippsSHA1Update:function
extern e9_ippsSHA1Update:function
extern l9_ippsSHA1Update:function
extern n0_ippsSHA1Update:function
extern k0_ippsSHA1Update:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA1Update
.Larraddr_ippsSHA1Update:
    dq m7_ippsSHA1Update
    dq n8_ippsSHA1Update
    dq y8_ippsSHA1Update
    dq e9_ippsSHA1Update
    dq l9_ippsSHA1Update
    dq n0_ippsSHA1Update
    dq k0_ippsSHA1Update

segment .text
global ippsSHA1Update:function (ippsSHA1Update.LEndippsSHA1Update - ippsSHA1Update)
.Lin_ippsSHA1Update:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA1Update:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA1Update]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA1Update:
