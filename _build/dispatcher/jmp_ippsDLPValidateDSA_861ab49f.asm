extern m7_ippsDLPValidateDSA:function
extern n8_ippsDLPValidateDSA:function
extern y8_ippsDLPValidateDSA:function
extern e9_ippsDLPValidateDSA:function
extern l9_ippsDLPValidateDSA:function
extern n0_ippsDLPValidateDSA:function
extern k0_ippsDLPValidateDSA:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPValidateDSA
.Larraddr_ippsDLPValidateDSA:
    dq m7_ippsDLPValidateDSA
    dq n8_ippsDLPValidateDSA
    dq y8_ippsDLPValidateDSA
    dq e9_ippsDLPValidateDSA
    dq l9_ippsDLPValidateDSA
    dq n0_ippsDLPValidateDSA
    dq k0_ippsDLPValidateDSA

segment .text
global ippsDLPValidateDSA:function (ippsDLPValidateDSA.LEndippsDLPValidateDSA - ippsDLPValidateDSA)
.Lin_ippsDLPValidateDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPValidateDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPValidateDSA]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPValidateDSA:
