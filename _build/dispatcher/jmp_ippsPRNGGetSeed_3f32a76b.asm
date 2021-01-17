extern m7_ippsPRNGGetSeed:function
extern n8_ippsPRNGGetSeed:function
extern y8_ippsPRNGGetSeed:function
extern e9_ippsPRNGGetSeed:function
extern l9_ippsPRNGGetSeed:function
extern n0_ippsPRNGGetSeed:function
extern k0_ippsPRNGGetSeed:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPRNGGetSeed
.Larraddr_ippsPRNGGetSeed:
    dq m7_ippsPRNGGetSeed
    dq n8_ippsPRNGGetSeed
    dq y8_ippsPRNGGetSeed
    dq e9_ippsPRNGGetSeed
    dq l9_ippsPRNGGetSeed
    dq n0_ippsPRNGGetSeed
    dq k0_ippsPRNGGetSeed

segment .text
global ippsPRNGGetSeed:function (ippsPRNGGetSeed.LEndippsPRNGGetSeed - ippsPRNGGetSeed)
.Lin_ippsPRNGGetSeed:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPRNGGetSeed:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPRNGGetSeed]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPRNGGetSeed:
