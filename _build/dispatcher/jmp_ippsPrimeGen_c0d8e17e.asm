extern m7_ippsPrimeGen:function
extern n8_ippsPrimeGen:function
extern y8_ippsPrimeGen:function
extern e9_ippsPrimeGen:function
extern l9_ippsPrimeGen:function
extern n0_ippsPrimeGen:function
extern k0_ippsPrimeGen:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPrimeGen
.Larraddr_ippsPrimeGen:
    dq m7_ippsPrimeGen
    dq n8_ippsPrimeGen
    dq y8_ippsPrimeGen
    dq e9_ippsPrimeGen
    dq l9_ippsPrimeGen
    dq n0_ippsPrimeGen
    dq k0_ippsPrimeGen

segment .text
global ippsPrimeGen:function (ippsPrimeGen.LEndippsPrimeGen - ippsPrimeGen)
.Lin_ippsPrimeGen:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPrimeGen:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPrimeGen]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPrimeGen:
