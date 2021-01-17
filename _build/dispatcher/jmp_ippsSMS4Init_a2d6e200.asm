extern m7_ippsSMS4Init:function
extern n8_ippsSMS4Init:function
extern y8_ippsSMS4Init:function
extern e9_ippsSMS4Init:function
extern l9_ippsSMS4Init:function
extern n0_ippsSMS4Init:function
extern k0_ippsSMS4Init:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSMS4Init
.Larraddr_ippsSMS4Init:
    dq m7_ippsSMS4Init
    dq n8_ippsSMS4Init
    dq y8_ippsSMS4Init
    dq e9_ippsSMS4Init
    dq l9_ippsSMS4Init
    dq n0_ippsSMS4Init
    dq k0_ippsSMS4Init

segment .text
global ippsSMS4Init:function (ippsSMS4Init.LEndippsSMS4Init - ippsSMS4Init)
.Lin_ippsSMS4Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSMS4Init:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSMS4Init]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSMS4Init:
