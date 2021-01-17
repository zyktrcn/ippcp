extern m7_ippsPrimeSet:function
extern n8_ippsPrimeSet:function
extern y8_ippsPrimeSet:function
extern e9_ippsPrimeSet:function
extern l9_ippsPrimeSet:function
extern n0_ippsPrimeSet:function
extern k0_ippsPrimeSet:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPrimeSet
.Larraddr_ippsPrimeSet:
    dq m7_ippsPrimeSet
    dq n8_ippsPrimeSet
    dq y8_ippsPrimeSet
    dq e9_ippsPrimeSet
    dq l9_ippsPrimeSet
    dq n0_ippsPrimeSet
    dq k0_ippsPrimeSet

segment .text
global ippsPrimeSet:function (ippsPrimeSet.LEndippsPrimeSet - ippsPrimeSet)
.Lin_ippsPrimeSet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPrimeSet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPrimeSet]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPrimeSet:
