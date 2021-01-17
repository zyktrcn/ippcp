extern m7_ippsSHA256Final:function
extern n8_ippsSHA256Final:function
extern y8_ippsSHA256Final:function
extern e9_ippsSHA256Final:function
extern l9_ippsSHA256Final:function
extern n0_ippsSHA256Final:function
extern k0_ippsSHA256Final:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA256Final
.Larraddr_ippsSHA256Final:
    dq m7_ippsSHA256Final
    dq n8_ippsSHA256Final
    dq y8_ippsSHA256Final
    dq e9_ippsSHA256Final
    dq l9_ippsSHA256Final
    dq n0_ippsSHA256Final
    dq k0_ippsSHA256Final

segment .text
global ippsSHA256Final:function (ippsSHA256Final.LEndippsSHA256Final - ippsSHA256Final)
.Lin_ippsSHA256Final:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA256Final:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA256Final]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA256Final:
