extern m7_ippsSub_BN:function
extern n8_ippsSub_BN:function
extern y8_ippsSub_BN:function
extern e9_ippsSub_BN:function
extern l9_ippsSub_BN:function
extern n0_ippsSub_BN:function
extern k0_ippsSub_BN:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsSub_BN
.Larraddr_ippsSub_BN:
    dq m7_ippsSub_BN
    dq n8_ippsSub_BN
    dq y8_ippsSub_BN
    dq e9_ippsSub_BN
    dq l9_ippsSub_BN
    dq n0_ippsSub_BN
    dq k0_ippsSub_BN

segment .text
global ippsSub_BN:function (ippsSub_BN.LEndippsSub_BN - ippsSub_BN)
.Lin_ippsSub_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsSub_BN:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsSub_BN]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsSub_BN:
