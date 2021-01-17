extern m7_ippsSHA1Final:function
extern n8_ippsSHA1Final:function
extern y8_ippsSHA1Final:function
extern e9_ippsSHA1Final:function
extern l9_ippsSHA1Final:function
extern n0_ippsSHA1Final:function
extern k0_ippsSHA1Final:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA1Final
.Larraddr_ippsSHA1Final:
    dq m7_ippsSHA1Final
    dq n8_ippsSHA1Final
    dq y8_ippsSHA1Final
    dq e9_ippsSHA1Final
    dq l9_ippsSHA1Final
    dq n0_ippsSHA1Final
    dq k0_ippsSHA1Final

segment .text
global ippsSHA1Final:function (ippsSHA1Final.LEndippsSHA1Final - ippsSHA1Final)
.Lin_ippsSHA1Final:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA1Final:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA1Final]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA1Final:
