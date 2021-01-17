extern m7_ippsDLPPublicKey:function
extern n8_ippsDLPPublicKey:function
extern y8_ippsDLPPublicKey:function
extern e9_ippsDLPPublicKey:function
extern l9_ippsDLPPublicKey:function
extern n0_ippsDLPPublicKey:function
extern k0_ippsDLPPublicKey:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPPublicKey
.Larraddr_ippsDLPPublicKey:
    dq m7_ippsDLPPublicKey
    dq n8_ippsDLPPublicKey
    dq y8_ippsDLPPublicKey
    dq e9_ippsDLPPublicKey
    dq l9_ippsDLPPublicKey
    dq n0_ippsDLPPublicKey
    dq k0_ippsDLPPublicKey

segment .text
global ippsDLPPublicKey:function (ippsDLPPublicKey.LEndippsDLPPublicKey - ippsDLPPublicKey)
.Lin_ippsDLPPublicKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPPublicKey:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPPublicKey]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPPublicKey:
