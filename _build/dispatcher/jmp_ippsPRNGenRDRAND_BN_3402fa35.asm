extern m7_ippsPRNGenRDRAND_BN:function
extern n8_ippsPRNGenRDRAND_BN:function
extern y8_ippsPRNGenRDRAND_BN:function
extern e9_ippsPRNGenRDRAND_BN:function
extern l9_ippsPRNGenRDRAND_BN:function
extern n0_ippsPRNGenRDRAND_BN:function
extern k0_ippsPRNGenRDRAND_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPRNGenRDRAND_BN
.Larraddr_ippsPRNGenRDRAND_BN:
    dq m7_ippsPRNGenRDRAND_BN
    dq n8_ippsPRNGenRDRAND_BN
    dq y8_ippsPRNGenRDRAND_BN
    dq e9_ippsPRNGenRDRAND_BN
    dq l9_ippsPRNGenRDRAND_BN
    dq n0_ippsPRNGenRDRAND_BN
    dq k0_ippsPRNGenRDRAND_BN

segment .text
global ippsPRNGenRDRAND_BN:function (ippsPRNGenRDRAND_BN.LEndippsPRNGenRDRAND_BN - ippsPRNGenRDRAND_BN)
.Lin_ippsPRNGenRDRAND_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPRNGenRDRAND_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPRNGenRDRAND_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPRNGenRDRAND_BN:
