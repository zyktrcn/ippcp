extern m7_ippsPrimeTest_BN:function
extern n8_ippsPrimeTest_BN:function
extern y8_ippsPrimeTest_BN:function
extern e9_ippsPrimeTest_BN:function
extern l9_ippsPrimeTest_BN:function
extern n0_ippsPrimeTest_BN:function
extern k0_ippsPrimeTest_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPrimeTest_BN
.Larraddr_ippsPrimeTest_BN:
    dq m7_ippsPrimeTest_BN
    dq n8_ippsPrimeTest_BN
    dq y8_ippsPrimeTest_BN
    dq e9_ippsPrimeTest_BN
    dq l9_ippsPrimeTest_BN
    dq n0_ippsPrimeTest_BN
    dq k0_ippsPrimeTest_BN

segment .text
global ippsPrimeTest_BN:function (ippsPrimeTest_BN.LEndippsPrimeTest_BN - ippsPrimeTest_BN)
.Lin_ippsPrimeTest_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPrimeTest_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPrimeTest_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPrimeTest_BN:
