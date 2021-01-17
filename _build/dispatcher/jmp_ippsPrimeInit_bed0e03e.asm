extern m7_ippsPrimeInit:function
extern n8_ippsPrimeInit:function
extern y8_ippsPrimeInit:function
extern e9_ippsPrimeInit:function
extern l9_ippsPrimeInit:function
extern n0_ippsPrimeInit:function
extern k0_ippsPrimeInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPrimeInit
.Larraddr_ippsPrimeInit:
    dq m7_ippsPrimeInit
    dq n8_ippsPrimeInit
    dq y8_ippsPrimeInit
    dq e9_ippsPrimeInit
    dq l9_ippsPrimeInit
    dq n0_ippsPrimeInit
    dq k0_ippsPrimeInit

segment .text
global ippsPrimeInit:function (ippsPrimeInit.LEndippsPrimeInit - ippsPrimeInit)
.Lin_ippsPrimeInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPrimeInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPrimeInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPrimeInit:
