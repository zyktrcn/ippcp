extern m7_ippsPRNGSetAugment:function
extern n8_ippsPRNGSetAugment:function
extern y8_ippsPRNGSetAugment:function
extern e9_ippsPRNGSetAugment:function
extern l9_ippsPRNGSetAugment:function
extern n0_ippsPRNGSetAugment:function
extern k0_ippsPRNGSetAugment:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPRNGSetAugment
.Larraddr_ippsPRNGSetAugment:
    dq m7_ippsPRNGSetAugment
    dq n8_ippsPRNGSetAugment
    dq y8_ippsPRNGSetAugment
    dq e9_ippsPRNGSetAugment
    dq l9_ippsPRNGSetAugment
    dq n0_ippsPRNGSetAugment
    dq k0_ippsPRNGSetAugment

segment .text
global ippsPRNGSetAugment:function (ippsPRNGSetAugment.LEndippsPRNGSetAugment - ippsPRNGSetAugment)
.Lin_ippsPRNGSetAugment:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPRNGSetAugment:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPRNGSetAugment]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPRNGSetAugment:
