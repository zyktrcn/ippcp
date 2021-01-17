extern m7_ippsTRNGenRDSEED_BN:function
extern n8_ippsTRNGenRDSEED_BN:function
extern y8_ippsTRNGenRDSEED_BN:function
extern e9_ippsTRNGenRDSEED_BN:function
extern l9_ippsTRNGenRDSEED_BN:function
extern n0_ippsTRNGenRDSEED_BN:function
extern k0_ippsTRNGenRDSEED_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsTRNGenRDSEED_BN
.Larraddr_ippsTRNGenRDSEED_BN:
    dq m7_ippsTRNGenRDSEED_BN
    dq n8_ippsTRNGenRDSEED_BN
    dq y8_ippsTRNGenRDSEED_BN
    dq e9_ippsTRNGenRDSEED_BN
    dq l9_ippsTRNGenRDSEED_BN
    dq n0_ippsTRNGenRDSEED_BN
    dq k0_ippsTRNGenRDSEED_BN

segment .text
global ippsTRNGenRDSEED_BN:function (ippsTRNGenRDSEED_BN.LEndippsTRNGenRDSEED_BN - ippsTRNGenRDSEED_BN)
.Lin_ippsTRNGenRDSEED_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsTRNGenRDSEED_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsTRNGenRDSEED_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsTRNGenRDSEED_BN:
