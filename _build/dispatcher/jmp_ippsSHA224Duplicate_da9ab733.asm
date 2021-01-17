extern m7_ippsSHA224Duplicate:function
extern n8_ippsSHA224Duplicate:function
extern y8_ippsSHA224Duplicate:function
extern e9_ippsSHA224Duplicate:function
extern l9_ippsSHA224Duplicate:function
extern n0_ippsSHA224Duplicate:function
extern k0_ippsSHA224Duplicate:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA224Duplicate
.Larraddr_ippsSHA224Duplicate:
    dq m7_ippsSHA224Duplicate
    dq n8_ippsSHA224Duplicate
    dq y8_ippsSHA224Duplicate
    dq e9_ippsSHA224Duplicate
    dq l9_ippsSHA224Duplicate
    dq n0_ippsSHA224Duplicate
    dq k0_ippsSHA224Duplicate

segment .text
global ippsSHA224Duplicate:function (ippsSHA224Duplicate.LEndippsSHA224Duplicate - ippsSHA224Duplicate)
.Lin_ippsSHA224Duplicate:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA224Duplicate:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA224Duplicate]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA224Duplicate:
