extern m7_ippsSHA512Init:function
extern n8_ippsSHA512Init:function
extern y8_ippsSHA512Init:function
extern e9_ippsSHA512Init:function
extern l9_ippsSHA512Init:function
extern n0_ippsSHA512Init:function
extern k0_ippsSHA512Init:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA512Init
.Larraddr_ippsSHA512Init:
    dq m7_ippsSHA512Init
    dq n8_ippsSHA512Init
    dq y8_ippsSHA512Init
    dq e9_ippsSHA512Init
    dq l9_ippsSHA512Init
    dq n0_ippsSHA512Init
    dq k0_ippsSHA512Init

segment .text
global ippsSHA512Init:function (ippsSHA512Init.LEndippsSHA512Init - ippsSHA512Init)
.Lin_ippsSHA512Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA512Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA512Init]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA512Init:
