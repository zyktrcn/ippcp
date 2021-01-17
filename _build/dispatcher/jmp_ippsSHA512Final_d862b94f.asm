extern m7_ippsSHA512Final:function
extern n8_ippsSHA512Final:function
extern y8_ippsSHA512Final:function
extern e9_ippsSHA512Final:function
extern l9_ippsSHA512Final:function
extern n0_ippsSHA512Final:function
extern k0_ippsSHA512Final:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA512Final
.Larraddr_ippsSHA512Final:
    dq m7_ippsSHA512Final
    dq n8_ippsSHA512Final
    dq y8_ippsSHA512Final
    dq e9_ippsSHA512Final
    dq l9_ippsSHA512Final
    dq n0_ippsSHA512Final
    dq k0_ippsSHA512Final

segment .text
global ippsSHA512Final:function (ippsSHA512Final.LEndippsSHA512Final - ippsSHA512Final)
.Lin_ippsSHA512Final:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA512Final:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA512Final]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA512Final:
