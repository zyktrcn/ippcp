extern m7_ippsSHA224Init:function
extern n8_ippsSHA224Init:function
extern y8_ippsSHA224Init:function
extern e9_ippsSHA224Init:function
extern l9_ippsSHA224Init:function
extern n0_ippsSHA224Init:function
extern k0_ippsSHA224Init:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA224Init
.Larraddr_ippsSHA224Init:
    dq m7_ippsSHA224Init
    dq n8_ippsSHA224Init
    dq y8_ippsSHA224Init
    dq e9_ippsSHA224Init
    dq l9_ippsSHA224Init
    dq n0_ippsSHA224Init
    dq k0_ippsSHA224Init

segment .text
global ippsSHA224Init:function (ippsSHA224Init.LEndippsSHA224Init - ippsSHA224Init)
.Lin_ippsSHA224Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA224Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA224Init]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA224Init:
