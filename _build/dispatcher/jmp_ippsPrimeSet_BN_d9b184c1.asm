extern m7_ippsPrimeSet_BN:function
extern n8_ippsPrimeSet_BN:function
extern y8_ippsPrimeSet_BN:function
extern e9_ippsPrimeSet_BN:function
extern l9_ippsPrimeSet_BN:function
extern n0_ippsPrimeSet_BN:function
extern k0_ippsPrimeSet_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPrimeSet_BN
.Larraddr_ippsPrimeSet_BN:
    dq m7_ippsPrimeSet_BN
    dq n8_ippsPrimeSet_BN
    dq y8_ippsPrimeSet_BN
    dq e9_ippsPrimeSet_BN
    dq l9_ippsPrimeSet_BN
    dq n0_ippsPrimeSet_BN
    dq k0_ippsPrimeSet_BN

segment .text
global ippsPrimeSet_BN:function (ippsPrimeSet_BN.LEndippsPrimeSet_BN - ippsPrimeSet_BN)
.Lin_ippsPrimeSet_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPrimeSet_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPrimeSet_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPrimeSet_BN:
