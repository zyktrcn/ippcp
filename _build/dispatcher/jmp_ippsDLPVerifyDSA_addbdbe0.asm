extern m7_ippsDLPVerifyDSA:function
extern n8_ippsDLPVerifyDSA:function
extern y8_ippsDLPVerifyDSA:function
extern e9_ippsDLPVerifyDSA:function
extern l9_ippsDLPVerifyDSA:function
extern n0_ippsDLPVerifyDSA:function
extern k0_ippsDLPVerifyDSA:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPVerifyDSA
.Larraddr_ippsDLPVerifyDSA:
    dq m7_ippsDLPVerifyDSA
    dq n8_ippsDLPVerifyDSA
    dq y8_ippsDLPVerifyDSA
    dq e9_ippsDLPVerifyDSA
    dq l9_ippsDLPVerifyDSA
    dq n0_ippsDLPVerifyDSA
    dq k0_ippsDLPVerifyDSA

segment .text
global ippsDLPVerifyDSA:function (ippsDLPVerifyDSA.LEndippsDLPVerifyDSA - ippsDLPVerifyDSA)
.Lin_ippsDLPVerifyDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPVerifyDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPVerifyDSA]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPVerifyDSA:
