extern m7_ippsSHA256GetTag:function
extern n8_ippsSHA256GetTag:function
extern y8_ippsSHA256GetTag:function
extern e9_ippsSHA256GetTag:function
extern l9_ippsSHA256GetTag:function
extern n0_ippsSHA256GetTag:function
extern k0_ippsSHA256GetTag:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA256GetTag
.Larraddr_ippsSHA256GetTag:
    dq m7_ippsSHA256GetTag
    dq n8_ippsSHA256GetTag
    dq y8_ippsSHA256GetTag
    dq e9_ippsSHA256GetTag
    dq l9_ippsSHA256GetTag
    dq n0_ippsSHA256GetTag
    dq k0_ippsSHA256GetTag

segment .text
global ippsSHA256GetTag:function (ippsSHA256GetTag.LEndippsSHA256GetTag - ippsSHA256GetTag)
.Lin_ippsSHA256GetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA256GetTag:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA256GetTag]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA256GetTag:
