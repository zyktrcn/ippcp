extern m7_ippsSHA1GetTag:function
extern n8_ippsSHA1GetTag:function
extern y8_ippsSHA1GetTag:function
extern e9_ippsSHA1GetTag:function
extern l9_ippsSHA1GetTag:function
extern n0_ippsSHA1GetTag:function
extern k0_ippsSHA1GetTag:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA1GetTag
.Larraddr_ippsSHA1GetTag:
    dq m7_ippsSHA1GetTag
    dq n8_ippsSHA1GetTag
    dq y8_ippsSHA1GetTag
    dq e9_ippsSHA1GetTag
    dq l9_ippsSHA1GetTag
    dq n0_ippsSHA1GetTag
    dq k0_ippsSHA1GetTag

segment .text
global ippsSHA1GetTag:function (ippsSHA1GetTag.LEndippsSHA1GetTag - ippsSHA1GetTag)
.Lin_ippsSHA1GetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA1GetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA1GetTag]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA1GetTag:
