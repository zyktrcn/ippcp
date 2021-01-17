extern m7_ippsPRNGen_BN:function
extern n8_ippsPRNGen_BN:function
extern y8_ippsPRNGen_BN:function
extern e9_ippsPRNGen_BN:function
extern l9_ippsPRNGen_BN:function
extern n0_ippsPRNGen_BN:function
extern k0_ippsPRNGen_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPRNGen_BN
.Larraddr_ippsPRNGen_BN:
    dq m7_ippsPRNGen_BN
    dq n8_ippsPRNGen_BN
    dq y8_ippsPRNGen_BN
    dq e9_ippsPRNGen_BN
    dq l9_ippsPRNGen_BN
    dq n0_ippsPRNGen_BN
    dq k0_ippsPRNGen_BN

segment .text
global ippsPRNGen_BN:function (ippsPRNGen_BN.LEndippsPRNGen_BN - ippsPRNGen_BN)
.Lin_ippsPRNGen_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPRNGen_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPRNGen_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPRNGen_BN:
