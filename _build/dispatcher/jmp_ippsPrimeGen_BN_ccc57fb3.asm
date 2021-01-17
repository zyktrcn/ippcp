extern m7_ippsPrimeGen_BN:function
extern n8_ippsPrimeGen_BN:function
extern y8_ippsPrimeGen_BN:function
extern e9_ippsPrimeGen_BN:function
extern l9_ippsPrimeGen_BN:function
extern n0_ippsPrimeGen_BN:function
extern k0_ippsPrimeGen_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPrimeGen_BN
.Larraddr_ippsPrimeGen_BN:
    dq m7_ippsPrimeGen_BN
    dq n8_ippsPrimeGen_BN
    dq y8_ippsPrimeGen_BN
    dq e9_ippsPrimeGen_BN
    dq l9_ippsPrimeGen_BN
    dq n0_ippsPrimeGen_BN
    dq k0_ippsPrimeGen_BN

segment .text
global ippsPrimeGen_BN:function (ippsPrimeGen_BN.LEndippsPrimeGen_BN - ippsPrimeGen_BN)
.Lin_ippsPrimeGen_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPrimeGen_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPrimeGen_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPrimeGen_BN:
