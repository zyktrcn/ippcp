extern m7_ippsSHA384Init:function
extern n8_ippsSHA384Init:function
extern y8_ippsSHA384Init:function
extern e9_ippsSHA384Init:function
extern l9_ippsSHA384Init:function
extern n0_ippsSHA384Init:function
extern k0_ippsSHA384Init:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA384Init
.Larraddr_ippsSHA384Init:
    dq m7_ippsSHA384Init
    dq n8_ippsSHA384Init
    dq y8_ippsSHA384Init
    dq e9_ippsSHA384Init
    dq l9_ippsSHA384Init
    dq n0_ippsSHA384Init
    dq k0_ippsSHA384Init

segment .text
global ippsSHA384Init:function (ippsSHA384Init.LEndippsSHA384Init - ippsSHA384Init)
.Lin_ippsSHA384Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA384Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA384Init]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA384Init:
