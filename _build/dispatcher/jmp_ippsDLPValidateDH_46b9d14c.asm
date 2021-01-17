extern m7_ippsDLPValidateDH:function
extern n8_ippsDLPValidateDH:function
extern y8_ippsDLPValidateDH:function
extern e9_ippsDLPValidateDH:function
extern l9_ippsDLPValidateDH:function
extern n0_ippsDLPValidateDH:function
extern k0_ippsDLPValidateDH:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPValidateDH
.Larraddr_ippsDLPValidateDH:
    dq m7_ippsDLPValidateDH
    dq n8_ippsDLPValidateDH
    dq y8_ippsDLPValidateDH
    dq e9_ippsDLPValidateDH
    dq l9_ippsDLPValidateDH
    dq n0_ippsDLPValidateDH
    dq k0_ippsDLPValidateDH

segment .text
global ippsDLPValidateDH:function (ippsDLPValidateDH.LEndippsDLPValidateDH - ippsDLPValidateDH)
.Lin_ippsDLPValidateDH:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPValidateDH:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPValidateDH]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPValidateDH:
