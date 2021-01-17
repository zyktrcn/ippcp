extern m7_ippsSHA1Init:function
extern n8_ippsSHA1Init:function
extern y8_ippsSHA1Init:function
extern e9_ippsSHA1Init:function
extern l9_ippsSHA1Init:function
extern n0_ippsSHA1Init:function
extern k0_ippsSHA1Init:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA1Init
.Larraddr_ippsSHA1Init:
    dq m7_ippsSHA1Init
    dq n8_ippsSHA1Init
    dq y8_ippsSHA1Init
    dq e9_ippsSHA1Init
    dq l9_ippsSHA1Init
    dq n0_ippsSHA1Init
    dq k0_ippsSHA1Init

segment .text
global ippsSHA1Init:function (ippsSHA1Init.LEndippsSHA1Init - ippsSHA1Init)
.Lin_ippsSHA1Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA1Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA1Init]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA1Init:
