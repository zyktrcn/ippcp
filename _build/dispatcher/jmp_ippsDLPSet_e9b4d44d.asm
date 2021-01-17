extern m7_ippsDLPSet:function
extern n8_ippsDLPSet:function
extern y8_ippsDLPSet:function
extern e9_ippsDLPSet:function
extern l9_ippsDLPSet:function
extern n0_ippsDLPSet:function
extern k0_ippsDLPSet:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPSet
.Larraddr_ippsDLPSet:
    dq m7_ippsDLPSet
    dq n8_ippsDLPSet
    dq y8_ippsDLPSet
    dq e9_ippsDLPSet
    dq l9_ippsDLPSet
    dq n0_ippsDLPSet
    dq k0_ippsDLPSet

segment .text
global ippsDLPSet:function (ippsDLPSet.LEndippsDLPSet - ippsDLPSet)
.Lin_ippsDLPSet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPSet:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPSet]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPSet:
