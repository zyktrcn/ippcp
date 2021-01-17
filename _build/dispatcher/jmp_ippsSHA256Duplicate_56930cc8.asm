extern m7_ippsSHA256Duplicate:function
extern n8_ippsSHA256Duplicate:function
extern y8_ippsSHA256Duplicate:function
extern e9_ippsSHA256Duplicate:function
extern l9_ippsSHA256Duplicate:function
extern n0_ippsSHA256Duplicate:function
extern k0_ippsSHA256Duplicate:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSHA256Duplicate
.Larraddr_ippsSHA256Duplicate:
    dq m7_ippsSHA256Duplicate
    dq n8_ippsSHA256Duplicate
    dq y8_ippsSHA256Duplicate
    dq e9_ippsSHA256Duplicate
    dq l9_ippsSHA256Duplicate
    dq n0_ippsSHA256Duplicate
    dq k0_ippsSHA256Duplicate

segment .text
global ippsSHA256Duplicate:function (ippsSHA256Duplicate.LEndippsSHA256Duplicate - ippsSHA256Duplicate)
.Lin_ippsSHA256Duplicate:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSHA256Duplicate:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSHA256Duplicate]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSHA256Duplicate:
