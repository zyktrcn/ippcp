extern m7_ippsDLPGetSize:function
extern n8_ippsDLPGetSize:function
extern y8_ippsDLPGetSize:function
extern e9_ippsDLPGetSize:function
extern l9_ippsDLPGetSize:function
extern n0_ippsDLPGetSize:function
extern k0_ippsDLPGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPGetSize
.Larraddr_ippsDLPGetSize:
    dq m7_ippsDLPGetSize
    dq n8_ippsDLPGetSize
    dq y8_ippsDLPGetSize
    dq e9_ippsDLPGetSize
    dq l9_ippsDLPGetSize
    dq n0_ippsDLPGetSize
    dq k0_ippsDLPGetSize

segment .text
global ippsDLPGetSize:function (ippsDLPGetSize.LEndippsDLPGetSize - ippsDLPGetSize)
.Lin_ippsDLPGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPGetSize:
