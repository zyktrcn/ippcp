extern m7_ippsSHA256Init:function
extern n8_ippsSHA256Init:function
extern y8_ippsSHA256Init:function
extern e9_ippsSHA256Init:function
extern l9_ippsSHA256Init:function
extern n0_ippsSHA256Init:function
extern k0_ippsSHA256Init:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA256Init
.Larraddr_ippsSHA256Init:
    dq m7_ippsSHA256Init
    dq n8_ippsSHA256Init
    dq y8_ippsSHA256Init
    dq e9_ippsSHA256Init
    dq l9_ippsSHA256Init
    dq n0_ippsSHA256Init
    dq k0_ippsSHA256Init

segment .text
global ippsSHA256Init:function (ippsSHA256Init.LEndippsSHA256Init - ippsSHA256Init)
.Lin_ippsSHA256Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA256Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA256Init]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA256Init:
