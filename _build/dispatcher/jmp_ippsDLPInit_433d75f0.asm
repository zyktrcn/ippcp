extern m7_ippsDLPInit:function
extern n8_ippsDLPInit:function
extern y8_ippsDLPInit:function
extern e9_ippsDLPInit:function
extern l9_ippsDLPInit:function
extern n0_ippsDLPInit:function
extern k0_ippsDLPInit:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPInit
.Larraddr_ippsDLPInit:
    dq m7_ippsDLPInit
    dq n8_ippsDLPInit
    dq y8_ippsDLPInit
    dq e9_ippsDLPInit
    dq l9_ippsDLPInit
    dq n0_ippsDLPInit
    dq k0_ippsDLPInit

segment .text
global ippsDLPInit:function (ippsDLPInit.LEndippsDLPInit - ippsDLPInit)
.Lin_ippsDLPInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPInit:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPInit]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPInit:
