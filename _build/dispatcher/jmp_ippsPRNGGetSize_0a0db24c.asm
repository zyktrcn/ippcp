extern m7_ippsPRNGGetSize:function
extern n8_ippsPRNGGetSize:function
extern y8_ippsPRNGGetSize:function
extern e9_ippsPRNGGetSize:function
extern l9_ippsPRNGGetSize:function
extern n0_ippsPRNGGetSize:function
extern k0_ippsPRNGGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPRNGGetSize
.Larraddr_ippsPRNGGetSize:
    dq m7_ippsPRNGGetSize
    dq n8_ippsPRNGGetSize
    dq y8_ippsPRNGGetSize
    dq e9_ippsPRNGGetSize
    dq l9_ippsPRNGGetSize
    dq n0_ippsPRNGGetSize
    dq k0_ippsPRNGGetSize

segment .text
global ippsPRNGGetSize:function (ippsPRNGGetSize.LEndippsPRNGGetSize - ippsPRNGGetSize)
.Lin_ippsPRNGGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPRNGGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPRNGGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPRNGGetSize:
