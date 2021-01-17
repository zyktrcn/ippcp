extern m7_ippsDLPSetKeyPair:function
extern n8_ippsDLPSetKeyPair:function
extern y8_ippsDLPSetKeyPair:function
extern e9_ippsDLPSetKeyPair:function
extern l9_ippsDLPSetKeyPair:function
extern n0_ippsDLPSetKeyPair:function
extern k0_ippsDLPSetKeyPair:function
extern ippcpJumpIndexForMergedLibs
extern ippcpSafeInit:function


segment .data
align 8
dq  .Lin_ippsDLPSetKeyPair
.Larraddr_ippsDLPSetKeyPair:
    dq m7_ippsDLPSetKeyPair
    dq n8_ippsDLPSetKeyPair
    dq y8_ippsDLPSetKeyPair
    dq e9_ippsDLPSetKeyPair
    dq l9_ippsDLPSetKeyPair
    dq n0_ippsDLPSetKeyPair
    dq k0_ippsDLPSetKeyPair

segment .text
global ippsDLPSetKeyPair:function (ippsDLPSetKeyPair.LEndippsDLPSetKeyPair - ippsDLPSetKeyPair)
.Lin_ippsDLPSetKeyPair:
    db 0xf3, 0x0f, 0x1e, 0xfa
    call ippcpSafeInit wrt ..plt
    align 16

ippsDLPSetKeyPair:
    db 0xf3, 0x0f, 0x1e, 0xfa
    mov     rax, qword [rel ippcpJumpIndexForMergedLibs wrt ..gotpc]
    movsxd  rax, dword [rax]
    lea     r11, [rel .Larraddr_ippsDLPSetKeyPair]
    mov     r11, qword [r11+rax*8]
    jmp     r11
.LEndippsDLPSetKeyPair:
