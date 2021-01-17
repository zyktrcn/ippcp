extern m7_ippsPrimeGet:function
extern n8_ippsPrimeGet:function
extern y8_ippsPrimeGet:function
extern e9_ippsPrimeGet:function
extern l9_ippsPrimeGet:function
extern n0_ippsPrimeGet:function
extern k0_ippsPrimeGet:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPrimeGet
.Larraddr_ippsPrimeGet:
    dq m7_ippsPrimeGet
    dq n8_ippsPrimeGet
    dq y8_ippsPrimeGet
    dq e9_ippsPrimeGet
    dq l9_ippsPrimeGet
    dq n0_ippsPrimeGet
    dq k0_ippsPrimeGet

segment .text
global ippsPrimeGet:function (ippsPrimeGet.LEndippsPrimeGet - ippsPrimeGet)
.Lin_ippsPrimeGet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPrimeGet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPrimeGet]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPrimeGet:
