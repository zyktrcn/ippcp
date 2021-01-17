extern m7_ippsDLPSignDSA:function
extern n8_ippsDLPSignDSA:function
extern y8_ippsDLPSignDSA:function
extern e9_ippsDLPSignDSA:function
extern l9_ippsDLPSignDSA:function
extern n0_ippsDLPSignDSA:function
extern k0_ippsDLPSignDSA:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPSignDSA
.Larraddr_ippsDLPSignDSA:
    dq m7_ippsDLPSignDSA
    dq n8_ippsDLPSignDSA
    dq y8_ippsDLPSignDSA
    dq e9_ippsDLPSignDSA
    dq l9_ippsDLPSignDSA
    dq n0_ippsDLPSignDSA
    dq k0_ippsDLPSignDSA

segment .text
global ippsDLPSignDSA:function (ippsDLPSignDSA.LEndippsDLPSignDSA - ippsDLPSignDSA)
.Lin_ippsDLPSignDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPSignDSA:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPSignDSA]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPSignDSA:
