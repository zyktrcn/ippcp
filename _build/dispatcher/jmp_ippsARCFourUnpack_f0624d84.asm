extern m7_ippsARCFourUnpack:function
extern n8_ippsARCFourUnpack:function
extern y8_ippsARCFourUnpack:function
extern e9_ippsARCFourUnpack:function
extern l9_ippsARCFourUnpack:function
extern n0_ippsARCFourUnpack:function
extern k0_ippsARCFourUnpack:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsARCFourUnpack
.Larraddr_ippsARCFourUnpack:
    dq m7_ippsARCFourUnpack
    dq n8_ippsARCFourUnpack
    dq y8_ippsARCFourUnpack
    dq e9_ippsARCFourUnpack
    dq l9_ippsARCFourUnpack
    dq n0_ippsARCFourUnpack
    dq k0_ippsARCFourUnpack

segment .text
global ippsARCFourUnpack:function (ippsARCFourUnpack.LEndippsARCFourUnpack - ippsARCFourUnpack)
.Lin_ippsARCFourUnpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsARCFourUnpack:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsARCFourUnpack]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsARCFourUnpack:
