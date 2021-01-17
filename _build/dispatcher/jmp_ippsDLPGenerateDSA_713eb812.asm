extern m7_ippsDLPGenerateDSA:function
extern n8_ippsDLPGenerateDSA:function
extern y8_ippsDLPGenerateDSA:function
extern e9_ippsDLPGenerateDSA:function
extern l9_ippsDLPGenerateDSA:function
extern n0_ippsDLPGenerateDSA:function
extern k0_ippsDLPGenerateDSA:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPGenerateDSA
.Larraddr_ippsDLPGenerateDSA:
    dq m7_ippsDLPGenerateDSA
    dq n8_ippsDLPGenerateDSA
    dq y8_ippsDLPGenerateDSA
    dq e9_ippsDLPGenerateDSA
    dq l9_ippsDLPGenerateDSA
    dq n0_ippsDLPGenerateDSA
    dq k0_ippsDLPGenerateDSA

segment .text
global ippsDLPGenerateDSA:function (ippsDLPGenerateDSA.LEndippsDLPGenerateDSA - ippsDLPGenerateDSA)
.Lin_ippsDLPGenerateDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPGenerateDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPGenerateDSA]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPGenerateDSA:
