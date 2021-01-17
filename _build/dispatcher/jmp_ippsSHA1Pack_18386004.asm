extern m7_ippsSHA1Pack:function
extern n8_ippsSHA1Pack:function
extern y8_ippsSHA1Pack:function
extern e9_ippsSHA1Pack:function
extern l9_ippsSHA1Pack:function
extern n0_ippsSHA1Pack:function
extern k0_ippsSHA1Pack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA1Pack
.Larraddr_ippsSHA1Pack:
    dq m7_ippsSHA1Pack
    dq n8_ippsSHA1Pack
    dq y8_ippsSHA1Pack
    dq e9_ippsSHA1Pack
    dq l9_ippsSHA1Pack
    dq n0_ippsSHA1Pack
    dq k0_ippsSHA1Pack

segment .text
global ippsSHA1Pack:function (ippsSHA1Pack.LEndippsSHA1Pack - ippsSHA1Pack)
.Lin_ippsSHA1Pack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA1Pack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA1Pack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA1Pack:
