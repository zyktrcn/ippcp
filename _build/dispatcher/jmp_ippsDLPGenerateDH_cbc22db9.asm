extern m7_ippsDLPGenerateDH:function
extern n8_ippsDLPGenerateDH:function
extern y8_ippsDLPGenerateDH:function
extern e9_ippsDLPGenerateDH:function
extern l9_ippsDLPGenerateDH:function
extern n0_ippsDLPGenerateDH:function
extern k0_ippsDLPGenerateDH:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPGenerateDH
.Larraddr_ippsDLPGenerateDH:
    dq m7_ippsDLPGenerateDH
    dq n8_ippsDLPGenerateDH
    dq y8_ippsDLPGenerateDH
    dq e9_ippsDLPGenerateDH
    dq l9_ippsDLPGenerateDH
    dq n0_ippsDLPGenerateDH
    dq k0_ippsDLPGenerateDH

segment .text
global ippsDLPGenerateDH:function (ippsDLPGenerateDH.LEndippsDLPGenerateDH - ippsDLPGenerateDH)
.Lin_ippsDLPGenerateDH:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPGenerateDH:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPGenerateDH]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPGenerateDH:
