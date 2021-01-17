extern m7_ippsPrimeTest:function
extern n8_ippsPrimeTest:function
extern y8_ippsPrimeTest:function
extern e9_ippsPrimeTest:function
extern l9_ippsPrimeTest:function
extern n0_ippsPrimeTest:function
extern k0_ippsPrimeTest:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPrimeTest
.Larraddr_ippsPrimeTest:
    dq m7_ippsPrimeTest
    dq n8_ippsPrimeTest
    dq y8_ippsPrimeTest
    dq e9_ippsPrimeTest
    dq l9_ippsPrimeTest
    dq n0_ippsPrimeTest
    dq k0_ippsPrimeTest

segment .text
global ippsPrimeTest:function (ippsPrimeTest.LEndippsPrimeTest - ippsPrimeTest)
.Lin_ippsPrimeTest:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPrimeTest:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPrimeTest]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPrimeTest:
