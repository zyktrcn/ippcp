extern m7_ippsSHA512Duplicate:function
extern n8_ippsSHA512Duplicate:function
extern y8_ippsSHA512Duplicate:function
extern e9_ippsSHA512Duplicate:function
extern l9_ippsSHA512Duplicate:function
extern n0_ippsSHA512Duplicate:function
extern k0_ippsSHA512Duplicate:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA512Duplicate
.Larraddr_ippsSHA512Duplicate:
    dq m7_ippsSHA512Duplicate
    dq n8_ippsSHA512Duplicate
    dq y8_ippsSHA512Duplicate
    dq e9_ippsSHA512Duplicate
    dq l9_ippsSHA512Duplicate
    dq n0_ippsSHA512Duplicate
    dq k0_ippsSHA512Duplicate

segment .text
global ippsSHA512Duplicate:function (ippsSHA512Duplicate.LEndippsSHA512Duplicate - ippsSHA512Duplicate)
.Lin_ippsSHA512Duplicate:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA512Duplicate:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA512Duplicate]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA512Duplicate:
