extern m7_ippsPRNGSetModulus:function
extern n8_ippsPRNGSetModulus:function
extern y8_ippsPRNGSetModulus:function
extern e9_ippsPRNGSetModulus:function
extern l9_ippsPRNGSetModulus:function
extern n0_ippsPRNGSetModulus:function
extern k0_ippsPRNGSetModulus:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsPRNGSetModulus
.Larraddr_ippsPRNGSetModulus:
    dq m7_ippsPRNGSetModulus
    dq n8_ippsPRNGSetModulus
    dq y8_ippsPRNGSetModulus
    dq e9_ippsPRNGSetModulus
    dq l9_ippsPRNGSetModulus
    dq n0_ippsPRNGSetModulus
    dq k0_ippsPRNGSetModulus

segment .text
global ippsPRNGSetModulus:function (ippsPRNGSetModulus.LEndippsPRNGSetModulus - ippsPRNGSetModulus)
.Lin_ippsPRNGSetModulus:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsPRNGSetModulus:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsPRNGSetModulus]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsPRNGSetModulus:
