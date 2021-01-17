extern m7_ippsPRNGSetSeed:function
extern n8_ippsPRNGSetSeed:function
extern y8_ippsPRNGSetSeed:function
extern e9_ippsPRNGSetSeed:function
extern l9_ippsPRNGSetSeed:function
extern n0_ippsPRNGSetSeed:function
extern k0_ippsPRNGSetSeed:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPRNGSetSeed
.Larraddr_ippsPRNGSetSeed:
    dq m7_ippsPRNGSetSeed
    dq n8_ippsPRNGSetSeed
    dq y8_ippsPRNGSetSeed
    dq e9_ippsPRNGSetSeed
    dq l9_ippsPRNGSetSeed
    dq n0_ippsPRNGSetSeed
    dq k0_ippsPRNGSetSeed

segment .text
global ippsPRNGSetSeed:function (ippsPRNGSetSeed.LEndippsPRNGSetSeed - ippsPRNGSetSeed)
.Lin_ippsPRNGSetSeed:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPRNGSetSeed:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPRNGSetSeed]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPRNGSetSeed:
