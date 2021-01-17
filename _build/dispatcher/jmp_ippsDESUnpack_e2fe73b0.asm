extern m7_ippsDESUnpack:function
extern n8_ippsDESUnpack:function
extern y8_ippsDESUnpack:function
extern e9_ippsDESUnpack:function
extern l9_ippsDESUnpack:function
extern n0_ippsDESUnpack:function
extern k0_ippsDESUnpack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDESUnpack
.Larraddr_ippsDESUnpack:
    dq m7_ippsDESUnpack
    dq n8_ippsDESUnpack
    dq y8_ippsDESUnpack
    dq e9_ippsDESUnpack
    dq l9_ippsDESUnpack
    dq n0_ippsDESUnpack
    dq k0_ippsDESUnpack

segment .text
global ippsDESUnpack:function (ippsDESUnpack.LEndippsDESUnpack - ippsDESUnpack)
.Lin_ippsDESUnpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDESUnpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDESUnpack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDESUnpack:
