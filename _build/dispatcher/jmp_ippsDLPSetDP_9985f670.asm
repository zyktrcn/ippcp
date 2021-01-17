extern m7_ippsDLPSetDP:function
extern n8_ippsDLPSetDP:function
extern y8_ippsDLPSetDP:function
extern e9_ippsDLPSetDP:function
extern l9_ippsDLPSetDP:function
extern n0_ippsDLPSetDP:function
extern k0_ippsDLPSetDP:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPSetDP
.Larraddr_ippsDLPSetDP:
    dq m7_ippsDLPSetDP
    dq n8_ippsDLPSetDP
    dq y8_ippsDLPSetDP
    dq e9_ippsDLPSetDP
    dq l9_ippsDLPSetDP
    dq n0_ippsDLPSetDP
    dq k0_ippsDLPSetDP

segment .text
global ippsDLPSetDP:function (ippsDLPSetDP.LEndippsDLPSetDP - ippsDLPSetDP)
.Lin_ippsDLPSetDP:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPSetDP:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPSetDP]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPSetDP:
