extern m7_ippsPrimeGetSize:function
extern n8_ippsPrimeGetSize:function
extern y8_ippsPrimeGetSize:function
extern e9_ippsPrimeGetSize:function
extern l9_ippsPrimeGetSize:function
extern n0_ippsPrimeGetSize:function
extern k0_ippsPrimeGetSize:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPrimeGetSize
.Larraddr_ippsPrimeGetSize:
    dq m7_ippsPrimeGetSize
    dq n8_ippsPrimeGetSize
    dq y8_ippsPrimeGetSize
    dq e9_ippsPrimeGetSize
    dq l9_ippsPrimeGetSize
    dq n0_ippsPrimeGetSize
    dq k0_ippsPrimeGetSize

segment .text
global ippsPrimeGetSize:function (ippsPrimeGetSize.LEndippsPrimeGetSize - ippsPrimeGetSize)
.Lin_ippsPrimeGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPrimeGetSize:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPrimeGetSize]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPrimeGetSize:
